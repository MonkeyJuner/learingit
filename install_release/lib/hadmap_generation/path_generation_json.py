#! /usr/bin/python

import rospy
import jsonpickle
import copy

from pnc_msgs.msg import VehicleState
import numpy as np
import hadmap
import matplotlib.pyplot as plt
from math import pi, atan2, asin, cos, sin, sqrt

class SavePt:
    def __init__(self):
        self.x = 0.0
        self.y = 0.0
        self.z = 0.0
        self.heading = 0.0
        self.len_integral = 0.0

    def valid(self):
        return self.x > 1.0

save_data_ = []
first_pt_ = None
insert_ = True
road_id_ = 100
speed_limit_ = 25

def vehicle_state_callback(pose):
    global save_data_
    global first_pt_
    global insert_

    cur_pt = SavePt()

    cur_pt.x = pose.pose.translation.x
    cur_pt.y = pose.pose.translation.y
    cur_pt.z = pose.pose.translation.z

    x = pose.pose.rotation.x
    y = pose.pose.rotation.y
    z = pose.pose.rotation.z
    w = pose.pose.rotation.w
    cur_pt.heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))

    if cur_pt.x < 0.1:
        return

    if first_pt_ is None:
        first_pt_ = cur_pt

    dist = cal_dist(cur_pt, first_pt_)
    if (dist < 0.5) and (len(save_data_) > 10):
        insert_ = False
        print 'loop closed! dist = %f' % dist

    if (insert_):
        diff = 0.0
        if len(save_data_) > 0:
            diff = cal_dist(cur_pt, save_data_[-1])
            cur_pt.len_integral = save_data_[-1].len_integral + diff
            if diff < 0.5:
                return
        else:
            cur_pt.len_integral = 0.0

        save_data_.append(cur_pt)

def cal_dist(pt1, pt2):
    return sqrt((pt1.x - pt2.x) ** 2 + (pt1.y - pt2.y) ** 2)

def generate_road(pts, left, right):
    global road_id_
    global speed_limit_

    road = hadmap.Road()
    road.id = str(road_id_)

    lane = hadmap.Lane()
    lane.id = 0
    lane.uid = str(road.id) + '_' + str(0)
    lane.type = 'driving'
    lane.turnType = 'noTurn'
    lane.speedLimit = speed_limit_

    # lane link
    lane_link = hadmap.LaneLink()
    lane_predecessor = hadmap.LaneTopo()
    lane_successor = hadmap.LaneTopo()

    # assume predecessor is road_id - 1, successor is road_id + 1;
    # deal with the pre and suc for first and last road finally.
    lane_predecessor.id = str(road_id_ - 1) + '_' + str(0)
    lane_successor.id = str(road_id_ + 1) + '_' + str(0)

    lane_link.predecessors.append(lane_predecessor)
    lane_link.successors.append(lane_successor)

    lane.link = lane_link

    left_border = hadmap.Border()
    right_border = hadmap.Border()

    # center line
    for i in range(len(pts)):
        center_pt = hadmap.CenterPoint()
        center_pt.id = str(road.id) + '_' + str(0) + '_' + str(i)
        center_pt.x = pts[i].x
        center_pt.y = pts[i].y
        center_pt.z = pts[i].z
        center_pt.heading = pts[i].heading
        center_pt.lenIntegral = pts[i].len_integral

        lane.centerLine.append(center_pt)
        left_border.pointSet.append(left[i])
        right_border.pointSet.append(right[i])

    lane.leftBorder = left_border
    lane.rightBorder = right_border

    lane_section = hadmap.LaneSection()
    lane_section.lanes.append(lane)
    road.laneSections.append(lane_section)

    road_id_ += 1

    return road

if __name__ == '__main__':
    rospy.init_node("path_generation_json", anonymous=True)
    save_path = rospy.get_param("~save_path")
    lane_width = rospy.get_param("~lane_width")
    speed_limit_ = rospy.get_param("~speed_limit")
    # save_path = 'path.json'
    # lane_width = 3.0

    rospy.Subscriber('pnc_msgs/vehicle_state', VehicleState, vehicle_state_callback)

    rospy.spin()

    flag_is_loop = True

    tmp_dist = cal_dist(save_data_[0], save_data_[-1])
    if tmp_dist > 1.0:
        flag_is_loop = False
        print ("flag is not loop")

    if flag_is_loop:
        dist_last_to_start = cal_dist(save_data_[0], save_data_[-1])
        appended_data = copy.deepcopy(save_data_[0])
        appended_data.len_integral = dist_last_to_start + save_data_[-1].len_integral
        save_data_.append(appended_data)

    left_border = []
    right_border = []
    left_border_x = []
    left_border_y = []
    right_border_x = []
    right_border_y = []
    center_line_x = []
    center_line_y = []

    for i in range(len(save_data_)):
        left_pt = hadmap.BorderPoint()
        right_pt = hadmap.BorderPoint()

        left_pt.x = save_data_[i].x - lane_width / 2.0 * sin(save_data_[i].heading)
        left_pt.y = save_data_[i].y + lane_width / 2.0 * cos(save_data_[i].heading)

        right_pt.x = save_data_[i].x + lane_width / 2.0 * sin(save_data_[i].heading)
        right_pt.y = save_data_[i].y - lane_width / 2.0 * cos(save_data_[i].heading)

        left_border.append(left_pt)
        right_border.append(right_pt)

        left_border_x.append(left_pt.x)
        left_border_y.append(left_pt.y)

        right_border_x.append(right_pt.x)
        right_border_y.append(right_pt.y)

        center_line_x.append(save_data_[i].x)
        center_line_y.append(save_data_[i].y)

    # show
    # plt.plot(left_border_x, left_border_y, 'b.-')
    # plt.plot(right_border_x, right_border_y, 'g.-')
    # plt.plot(center_line_x, center_line_y, 'r.-')
    # plt.show()
    map = hadmap.Hadmap()

    i = 0
    while i < len(save_data_):
        if i + 100 < len(save_data_):
            pts = copy.deepcopy(save_data_[i : i + 101])
            start = pts[0].len_integral
            for j in range(len(pts)):
                pts[j].len_integral -= start

            road = generate_road(pts, left_border[i : i + 101], right_border[i : i + 101])
            map.roads.append(road)
        else:
            pts = copy.deepcopy(save_data_[i : ])
            start = pts[0].len_integral
            for j in range(len(pts)):
                pts[j].len_integral -= start

            road = generate_road(pts, left_border[i : ] , right_border[i : ])
            map.roads.append(road)
            break

        i += 100

    if flag_is_loop:
        map.roads[0].laneSections[0].lanes[0].link.predecessors[0].id = map.roads[-1].laneSections[-1].lanes[0].uid
        map.roads[-1].laneSections[-1].lanes[0].link.successors[0].id = map.roads[0].laneSections[0].lanes[0].uid
    else:
        map.roads[0].laneSections[0].lanes[0].link.predecessors = []
        map.roads[-1].laneSections[-1].lanes[0].link.successors = []

    print 'generate map ok!'

    json_map = jsonpickle.encode(map, unpicklable=False)

    f = open(save_path, 'w')
    f.write(json_map)
    f.close()

    print 'write map ok!'






