#!/usr/bin/python

import rospy

from hadmap_msgs.msg import Map
from hadmap_msgs.msg import Point
from hadmap_msgs.msg import Lane
from hadmap_msgs.msg import Section
from pnc_msgs.msg import VehicleState

from pprint import pprint
from math import pi, atan2, asin, sqrt, sin, cos
from threading import Thread, Lock
import copy

save_data_ = []
len_integral_ = []
last_pt_ = None
self_state_ = VehicleState()
is_start = True

mutex = Lock()

def state_callback(vehicle_state):
    global save_data_
    global len_integral_
    global last_pt_

    pos_x = vehicle_state.pose.translation.x
    pos_y = vehicle_state.pose.translation.y
    pos_z = 0 # vehicle_state.pose.translation.z

    x = vehicle_state.pose.rotation.x
    y = vehicle_state.pose.rotation.y
    z = vehicle_state.pose.rotation.z
    w = vehicle_state.pose.rotation.w
    heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))

    if mutex.acquire(False):
        if last_pt_ is None:
            last_pt_ = [pos_x, pos_y, pos_z]
            save_data_.append([pos_x, pos_y, pos_z, heading])
            len_integral_.append(0.0)
        else:
            dist_to_last_pt = sqrt((pos_x - last_pt_[0]) ** 2 + (pos_y - last_pt_[1]) ** 2)
            if dist_to_last_pt >= 0.5:
                save_data_.append([pos_x, pos_y, pos_z, heading])
                len_integral_.append(dist_to_last_pt + len_integral_[-1])
                last_pt_ = [pos_x, pos_y, pos_z]

        rospy.logerr ('callback: x = %f, y = %f, heading = %f', pos_x, pos_y, heading)
        rospy.logerr ('callback: len(save_data_): %d, len(len_integral_): %d', len(save_data_), len(len_integral_))
        if (len(save_data_) != len(len_integral_)):
            rospy.logerr("callback: fatel error, restart!")
            mutex.release()
            return

        if (len(save_data_) > 1000):
            save_data_ = save_data_[-1000:]
            len_integral_ = len_integral_[-1000:]

        mutex.release()

def self_state_callback(vehicle_state):
    global self_state_
    self_state_ = vehicle_state

if __name__ == '__main__':

    pub = rospy.Publisher('/hadmap_server/local_map', Map, queue_size=10)

    rospy.init_node('realtime_path', anonymous=True)

    rospy.Subscriber('/pnc_msgs/vehicle_state_lead', VehicleState, state_callback)
    rospy.Subscriber('/pnc_msgs/vehicle_state', VehicleState, self_state_callback)

    rate = rospy.Rate(50)

    # self_state_.pose.translation.x = 429917.603586
    # self_state_.pose.translation.y = 4413386.207101
    width = 2.0
    while not rospy.is_shutdown():

        if (len(save_data_) != len(len_integral_)):
            rospy.logerr("main: fatel error, restart!")
            rospy.logerr('main: len(save_data_ %d, len(len_integral_): %d', len(save_data_), len(len_integral_))
            break

        if is_start:
            if mutex.acquire():
                if len(save_data_) > 0 and (self_state_.pose.translation.x > 0.0):
                    dist_between_trucks = sqrt((self_state_.pose.translation.x - save_data_[0][0]) ** 2 + (self_state_.pose.translation.y - save_data_[0][1]) ** 2)
                    if dist_between_trucks > 5.0:
                        cnt = int(dist_between_trucks / 0.5)
                        interpolated_pts = []
                        interpolated_len_integral = []
                        lead_state = save_data_[0]
                        for idx in for p in range(len(local_map.sections[s].lanes[l].pts_center)):range(cnt):
                            x = (self_state_.pose.translation.x * (cnt - idx) + lead_state[0] * idx) / cnt
                            y = (self_state_.pose.translation.y * (cnt - idx) + lead_state[1] * idx) / cnt
                            pt = [x, y, 0, save_data_[0][3]]
                            if idx == 0:
                                interpolated_len_integral.append(0)
                            else:
                                dist = sqrt((x - interpolated_pts[-1][0]) ** 2 + (y - interpolated_pts[-1][1]) ** 2)
                                interpolated_len_integral.append(dist + interpolated_len_integral[-1])

                            interpolated_pts.append(pt)

                        last_len = interpolated_len_integral[-1]
                        dist_delta = sqrt((save_data_[0][0] - interpolated_pts[-1][0]) ** 2 + (save_data_[0][1] - interpolated_pts[-1][1]) ** 2)
                        last_len += dist_delta
                        for idx in range(len(save_data_)):
                            interpolated_pts.append(save_data_[idx])
                            interpolated_len_integral.append(len_integral_[idx] + last_len)

                        save_data_ = interpolated_pts
                        len_integral_ = interpolated_len_integral
                        rospy.logerr('main: interpolate success!')
                        is_start = False
                mutex.release()

	    if len(save_data_) == 0:
                continue

        tmp_datas = copy.deepcopy(save_data_)
        tmp_len_integral = copy.deepcopy(len_integral_)

        heading = save_data_[-1][3]
        for idx in range(10):
            x = save_data_[-1][0] + (idx + 1) * 0.5 * cos(heading)
            y = save_data_[-1][1] + (idx + 1) * 0.5 * sin(heading)
            z = 0.0
            tmp_datas.append([x, y, z, heading])
	    l = tmp_len_integral[-1] + 0.5
	    tmp_len_integral.append(l)

        localmap = Map()
        section = Section()
        lane = Lane()
        points = []
        left_boundary = []
        right_boundary = []

        src_data = []

        len_integral = []
        section_id = 100
        lane_id = 10000
        pt_id = 100000000

        data_size = len(tmp_datas)

        if data_size > 1000:
            data_size = 1000

        if (data_size > 0):
            src_data = tmp_datas[-data_size:]
            len_integral = tmp_len_integral[-data_size:]
            len_0 = len_integral[0]
            for idx in range(data_size):
                pt = Point()
                pt.point.x = src_data[idx][0]
                pt.point.y = src_data[idx][1]
                pt.point.z = src_data[idx][2]
                pt.heading = src_data[idx][3]
                pt.id = pt_id + idx
                points.append(pt)
                len_integral[idx] -= len_0

                yaw = src_data[idx][3]
                left_pt = Point()
                delta_x = width * sin(yaw)
                delta_y = width * cos(yaw)
                left_pt.point.x = src_data[idx][0] - delta_x
                left_pt.point.y = src_data[idx][1] + delta_y
                left_pt.point.z = 0
                left_boundary.append(left_pt)

                right_pt = Point()
                delta_x = width * sin(yaw)
                delta_y = width * cos(yaw)
                right_pt.point.x = src_data[idx][0] + delta_x
                right_pt.point.y = src_data[idx][1] - delta_y
                right_pt.point.z = 0
                right_boundary.append(right_pt)

            lane.pt_start = points[0]
            lane.pt_end = points[-1]
            lane.pts_center = points
            lane.pts_left = left_boundary
            lane.pts_right = right_boundary
            lane.len_integral = len_integral
            lane.id = lane_id
            lane.speed_limit = 50
            section.lanes.append(lane)
            section.id = section_id
            section.stop_distances.append(1000)
            localmap.sections.append(section)

        pub.publish(localmap)

        rate.sleep()