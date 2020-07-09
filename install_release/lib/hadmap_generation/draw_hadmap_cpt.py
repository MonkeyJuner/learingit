#!/usr/bin/python

import rospy
# from pnc_msgs.msg import WayPoint
from pnc_msgs.msg import PlanningCmd
# from geometry_msgs.msg import Transform
# from nav_msgs.msg import Odometry
# from tf2_msgs.msg import TFMessage

from pprint import pprint
import matplotlib.pyplot as plt

import numpy as np
import pdb
import tf as tf2

import time
import threading
from math import cos, sin, pi, atan2
from pnc_msgs.msg import VehicleState

traces_np = None  ## store the original pts
pt = None
traces = []


pt_mutex = threading.Lock()


def tf_callback(tf):
    global pt

    pt_mutex.acquire()

    pos_x = tf.pose.translation.x
    pos_y = tf.pose.translation.y
    pos_z = tf.pose.translation.z

    x = tf.pose.rotation.x
    y = tf.pose.rotation.y
    z = tf.pose.rotation.z
    w = tf.pose.rotation.w

    euler = tf2.transformations.euler_from_quaternion([x, y, z, w])
    roll = euler[0]
    pitch = euler[1]
    yaw = euler[2]

    # heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
    # heading = heading
    rospy.logerr('#######roll=%f, pitch=%f, yaw=%f', roll, pitch, yaw * 180 / 3.1415927)
    # if heading < 0:
    #     heading += 2 * np.pi


    pt = [pos_x, pos_y, yaw]

    traces.append(pt)

    pt_mutex.release()

#
# def tf3_callback(tf):
#     global pt
#
#     pt_mutex.acquire()
#
#     if tf.transforms[0].child_frame_id == "oxts":
#
#
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
#         pt = [pos_x, pos_y, heading]
#
#         traces.append(pt)
#
#     pt_mutex.release()
#
#
#
# def tf_callback(tf):
#     global pt
#
#     pt_mutex.acquire()
#
#     pos_x = tf.pose.pose.position.x
#     pos_y = tf.pose.pose.position.y
#
#     x = tf.pose.pose.orientation.x
#     y = tf.pose.pose.orientation.y
#     z = tf.pose.pose.orientation.z
#     w = tf.pose.pose.orientation.w
#     heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
#     # # if heading < 0:
#     # #     heading += 2 * np.pi
#     #
#     heading = heading + pi / 2
#
#     pt = [pos_x, pos_y, heading]
#
#     traces.append(pt)
#
#     pt_mutex.release()
#
#
#
# def tf2_callback(tf):
#     global pt
#
#     pt_mutex.acquire()
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
#     pt = [pos_x, pos_y, heading]
#     traces.append(pt)
#
#     pt_mutex.release()



if __name__ == '__main__':

    rospy.init_node('draw_hadmap_cpt', anonymous=True)
    # rospy.Subscriber('navsat/odom', Odometry, tf_callback)
    #rospy.Subscriber('pnc_msgs/vehicle_state', VehicleState, tf2_callback)
    # rospy.Subscriber('/tf', TFMessage, tf3_callback)
    rospy.Subscriber('pnc_msgs/vehicle_state', VehicleState, tf_callback)

    while not rospy.is_shutdown():

        if pt is not None: # and plan is not None and plan_ori is not None:

            ## 1. find the nearest waypoints
            pt_mutex.acquire()
            pt_tmp = pt
            traces_np = np.array(traces)
            pt_mutex.release()


            plt.clf()
            plt.axis('equal')
            plt.plot(traces_np[:, 0], traces_np[:, 1], 'r.')
            pt_tmp2 = pt_tmp[0:2]
            heading_diff = pt_tmp[2]
            pt_tmp2[0] += cos(heading_diff) * 30  # + sin(heading_diff) * 10
            pt_tmp2[1] += sin(heading_diff) * 30  # + cos(heading_diff) * 10
            plt.plot(pt_tmp[0], pt_tmp[1], 'yo')
            plt.plot([pt_tmp[0], pt_tmp2[0]], [pt_tmp[1], pt_tmp2[1]], 'y-')


            # plt.show()
            plt.pause(0.001)
            # plt.pause(0)
                #
                # 2. send the waypoint arrays
                # pprint(gps_odom)
                #
                #
                # pprint(traces_np[idx, 2])

                # rate.sleep()

                # else:
                #
                #     rate.sleep()
