#!/usr/bin/python

import rospy
import rosbag

from hadmap_msgs.msg import Map
from hadmap_msgs.msg import Point
from hadmap_msgs.msg import Lane
from hadmap_msgs.msg import Section

# from geometry_msgs.msg import Transform
# from nav_msgs.msg import Odometry
from pnc_msgs.msg import VehicleState
# from tf2_msgs.msg import TFMessage

from pprint import pprint
import pdb
import numpy as np
from math import pi, atan2, asin, sqrt
import matplotlib.pyplot as plt
import sys

save_data_ = []

old_pt = None
len_integral = []
first_pt = None
cnt = 0
insert = 0
def tf_callback(tf):
    global old_pt
    global len_integral
    global first_pt
    global cnt
    global insert

    pos_x = tf.pose.translation.x
    pos_y = tf.pose.translation.y
    pos_z = 0.0 # tf.pose.translation.z

    if first_pt is None:
        first_pt = [pos_x, pos_y]

    x = tf.pose.rotation.x
    y = tf.pose.rotation.y
    z = tf.pose.rotation.z
    w = tf.pose.rotation.w
    heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))

    # if heading < 0:
    #     heading += 2 * np.pi


    dist = sqrt((pos_x - first_pt[0]) ** 2 + (pos_y - first_pt[1]) ** 2)
    print '%f' % (dist)
    if (dist < 0.5) and (cnt > 10):
        insert = 1

    if (insert == 0):
        if old_pt is None:
            old_pt = [pos_x, pos_y]
            diff = 0.0
        else:
            diff = sqrt((pos_x - old_pt[0]) ** 2 + (pos_y - old_pt[1]) ** 2)
            if diff < 0.5:
                return

        old_pt = [pos_x, pos_y]
        cnt += 1
        print 'count %d: heading=%f' % (len(save_data_), heading)
        print '%f, %f' % (pos_x, pos_y)


        # save_data_.append([pos_x,
        #                   pos_y,
        #                   heading])

        if len(len_integral) == 0:
            len_integral.append(diff)
        else:
            len_integral.append(diff + len_integral[-1])

        save_data_.append([pos_x,
                           pos_y,
                           pos_z,
                           heading])


#
# def tf3_callback(tf):
#     global old_pt
#
#     if tf.transforms[0].child_frame_id == "oxts":
#         # pos_x = tf.translation.x
#         # pos_y = tf.translation.y
#         # heading = tf.rotation.z
#
#         pos_x = tf.transforms[0].transform.translation.x
#         pos_y = tf.transforms[0].transform.translation.y
#         pos_z = tf.transforms[0].transform.translation.z
#
#         x = tf.transforms[0].transform.rotation.x
#         y = tf.transforms[0].transform.rotation.y
#         z = tf.transforms[0].transform.rotation.z
#         w = tf.transforms[0].transform.rotation.w
#         heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
#         heading = heading + pi / 2
#         # if heading < 0:
#         #     heading += 2 * np.pi
#
#
#         if old_pt is None:
#             old_pt = [pos_x, pos_y]
#         else:
#             diff = sqrt((pos_x - old_pt[0]) ** 2 + (pos_y - old_pt[1]) ** 2)
#             if diff < 0.1:
#                 return
#
#         old_pt = [pos_x, pos_y]
#
#         print 'count %d: heading=%f'%(len(save_data_), heading)
#         print '%f, %f'%(pos_x, pos_y)
#
#         # save_data_.append([pos_x,
#         #                   pos_y,
#         #                   heading])
#
#         save_data_.append([pos_x,
#                            pos_y,
#                            pos_z,
#                            x,
#                            y,
#                            z,
#                            w])
#
# def tf_callback(tf):
#     global old_pt
#
#
#     # pos_x = tf.translation.x
#     # pos_y = tf.translation.y
#     # heading = tf.rotation.z
#
#     pos_x = tf.pose.pose.position.x
#     pos_y = tf.pose.pose.position.y
#     pos_z = tf.pose.pose.position.z
#
#     x = tf.pose.pose.orientation.x
#     y = tf.pose.pose.orientation.y
#     z = tf.pose.pose.orientation.z
#     w = tf.pose.pose.orientation.w
#     heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
#     heading = heading + pi / 2
#     # if heading < 0:
#     #     heading += 2 * np.pi
#
#
#     if old_pt is None:
#         old_pt = [pos_x, pos_y]
#     else:
#         diff = sqrt((pos_x - old_pt[0]) ** 2 + (pos_y - old_pt[1]) ** 2)
#         if diff < 0.1:
#             return
#
#     old_pt = [pos_x, pos_y]
#
#     print 'count %d: heading=%f'%(len(save_data_), heading)
#
#     # save_data_.append([pos_x,
#     #                   pos_y,
#     #                   heading])
#
#     save_data_.append([pos_x,
#                        pos_y,
#                        pos_z,
#                        x,
#                        y,
#                        z,
#                        w])
#
# def tf2_callback(tf):
#     global old_pt
#
#
#     # pos_x = tf.translation.x
#     # pos_y = tf.translation.y
#     # heading = tf.rotation.z
#
#     pos_x = tf.pose.translation.x
#     pos_y = tf.pose.translation.y
#     pos_z = tf.pose.translation.z
#
#     x = tf.pose.rotation.x
#     y = tf.pose.rotation.y
#     z = tf.pose.rotation.z
#     w = tf.pose.rotation.w
#     heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
#     heading = heading + pi / 2
#     # if heading < 0:
#     #     heading += 2 * np.pi
#
#
#     if old_pt is None:
#         old_pt = [pos_x, pos_y]
#     else:
#         diff = sqrt((pos_x - old_pt[0]) ** 2 + (pos_y - old_pt[1]) ** 2)
#         if diff < 0.1:
#             return
#
#     old_pt = [pos_x, pos_y]
#
#     print 'count %d: heading=%f'%(len(save_data_), heading)
#     rospy.logerr('count %d: heading=%f'%(len(save_data_), heading))
#
#     # save_data_.append([pos_x,
#     #                   pos_y,
#     #                   heading])
#
#     save_data_.append([pos_x,
#                        pos_y,
#                        pos_z,
#                        x,
#                        y,
#                        z,
#                        w])


if __name__ == '__main__':

    # if len(sys.argv) < 2:
    #     # rospy.logerr("")
    #     print "setup the save path"
    #     #exit(0)

    rospy.init_node('path_generation', anonymous=True)
    save_path = rospy.get_param('~save_path')

    # rospy.Subscriber('navsat/odom', Odometry, tf_callback)
    #rospy.Subscriber('pnc_msgs/vehicle_state', VehicleState, tf2_callback)
    # rospy.Subscriber('/tf', TFMessage, tf3_callback)
    rospy.Subscriber('pnc_msgs/vehicle_state', VehicleState, tf_callback)

    rospy.spin()

    # pdb.set_trace()

    ## save the map: x y z vec3 angle
    global_map = Map()
    section = Section()
    lane = Lane()

    points = []
    cnt = 0
    section_id = 100
    pt_id = 100000000
    sections = 0

    flag_is_cycle = 1

    # for i in range(len(save_data_)):
    tmp_dist = sqrt((save_data_[0][0] - save_data_[-1][0]) ** 2 + (save_data_[0][1] - save_data_[-1][1]) ** 2)

    if tmp_dist > 1.5:
        flag_is_cycle = 0

    if flag_is_cycle == 1:
        len_integral.append(tmp_dist + len_integral[-1])
        save_data_.append(save_data_[0])

    len_integral_np = np.array(len_integral)

    i = 0
    while 1:

        if i == len(save_data_):
            break

        data = save_data_[i]

        i += 1

        if cnt < 100:
            pt = Point()
            pt.point.x = data[0]
            pt.point.y = data[1]
            pt.point.z = data[2]
            pt.heading = data[3]
            pt.id = pt_id

            pt_id += 1

            points.append(pt)

            cnt += 1

        else:
            lane.pts_center = points
            lane.pts_left = points
            lane.pts_right = points
            lane.pt_start = points[0]
            lane.pt_end = points[-1]
            mask = np.zeros(len(len_integral_np), dtype=bool)
            mask[sections*99:sections*99+100] = True
            tmp_len_integral = len_integral_np[mask]
            # lane.len_integral = (np.array(len_integral[sections*100:(sections+1)*100]) - np.array(len_integral[sections*100])).tolist()
            lane.len_integral = (tmp_len_integral - tmp_len_integral[0]).tolist()


            lane.id = section_id * 100
            lane.speed_limit = 50.0
            section.lanes.append(lane)

            section.id = section_id

            section.predecessors.append(section.id - 1)
            section.successors.append(section.id + 1)
            section.lanes[0].predecessors.append(section.predecessors[0] * 100)
            section.lanes[0].successors.append(section.successors[0] * 100)

            global_map.sections.append(section)

            sections += 1
            section_id += 1
            pt_id = section_id * 100 * 10000
            points = []
            section = Section()
            lane = Lane()
            i -= 2
            cnt = 0


    lane.pts_center = points
    lane.pts_left = points
    lane.pts_right = points
    lane.pt_start = points[0]
    lane.pt_end = points[-1]

    mask = np.zeros(len(len_integral_np), dtype=bool)
    mask[sections * 99:] = True
    tmp_len_integral = len_integral_np[mask]
    lane.len_integral = (tmp_len_integral - tmp_len_integral[0]).tolist()
    lane.id = section_id * 100
    lane.speed_limit = 50.0
    section.lanes.append(lane)
    section.id = section_id

    section.predecessors.append(section.id - 1)
    section.successors.append(section.id + 1)
    section.lanes[0].predecessors.append(section.predecessors[0] * 100)
    section.lanes[0].successors.append(section.successors[0] * 100)

    global_map.sections.append(section)

    if flag_is_cycle == 1:
        global_map.sections[0].predecessors[0] = global_map.sections[-1].id
        global_map.sections[-1].successors[0] = global_map.sections[0].id
        global_map.sections[0].lanes[0].predecessors[0] = global_map.sections[-1].lanes[0].id
        global_map.sections[-1].lanes[0].successors[0] = global_map.sections[0].lanes[0].id
    else :
        global_map.sections[0].predecessors[0] = -1
        global_map.sections[-1].successors[0] = -1
        global_map.sections[0].lanes[0].predecessors[0] = -1
        global_map.sections[-1].lanes[0].successors[0] = -1

    # bag = rosbag.Bag(sys.argv[1], 'w')
    bag = rosbag.Bag(save_path, 'w')
    bag.write('global_map', global_map)
    bag.close()