#!/usr/bin/python

import rospy
from geometry_msgs.msg import PoseStamped
from nav_msgs.msg import Odometry
# from tf2_msgs.msg import TFMessage

from pprint import pprint
import matplotlib.pyplot as plt

import numpy as np
import tf as tf2

import threading
from math import cos, sin, pi, atan2
from localization_msgs.msg import VehicleState
import matplotlib.gridspec as gridspec

traces_np_gps = None  ## store the original pts
traces_np_lidar = None  ## store the original pts
traces_np_odom_gps = None
traces_np_fusion = None
pt_gps = None
pt_lidar = None
pt_odom_gps = None
pt_fusion = None
traces_gps = []
traces_lidar = []
traces_odom_gps = []
traces_fusion = []

pt_mutex_gps = threading.Lock()
pt_mutex_lidar = threading.Lock()
pt_mutex_odom_gps = threading.Lock()
pt_mutex_fusion = threading.Lock()

def vehicle_state_callback(vehicle_state):
    global pt_gps
    global traces_gps
    global pt_mutex_gps

    pt_mutex_gps.acquire()

    pos_x = vehicle_state.pose.translation.x
    pos_y = vehicle_state.pose.translation.y

    x = vehicle_state.pose.rotation.x
    y = vehicle_state.pose.rotation.y
    z = vehicle_state.pose.rotation.z
    w = vehicle_state.pose.rotation.w

    euler = tf2.transformations.euler_from_quaternion([x, y, z, w])
    roll = euler[0]
    pitch = euler[1]
    yaw = euler[2]

    t = vehicle_state.header.stamp.to_sec()
    # heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
    # heading = heading
    # rospy.logerr('#######roll=%f, pitch=%f, yaw=%f', roll, pitch, yaw * 180 / 3.1415927)

    pt_gps = [pos_x, pos_y, yaw, t]

    traces_gps.append(pt_gps)

    pt_mutex_gps.release()

def lidar_pose_callback(vehicle_state):
    global pt_lidar
    global traces_lidar
    global pt_mutex_lidar

    pt_mutex_lidar.acquire()

    pos_x = vehicle_state.pose.translation.x
    pos_y = vehicle_state.pose.translation.y

    x = vehicle_state.pose.rotation.x
    y = vehicle_state.pose.rotation.y
    z = vehicle_state.pose.rotation.z
    w = vehicle_state.pose.rotation.w

    euler = tf2.transformations.euler_from_quaternion([x, y, z, w])
    roll = euler[0]
    pitch = euler[1]
    yaw = euler[2]

    t = vehicle_state.header.stamp.to_sec()
    # heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
    # heading = heading
    # rospy.logerr('#######roll=%f, pitch=%f, yaw=%f', roll, pitch, yaw * 180 / 3.1415927)

    pt_lidar = [pos_x, pos_y, yaw, t]

    traces_lidar.append(pt_lidar)

    pt_mutex_lidar.release()

# def lidar_pose_callback(lidar_pose):
#     global pt_lidar
#     global traces_lidar
#     global pt_mutex_lidar

#     pt_mutex_lidar.acquire()

#     pos_x = lidar_pose.pose.position.x
#     pos_y = lidar_pose.pose.position.y

#     x = lidar_pose.pose.orientation.x
#     y = lidar_pose.pose.orientation.y
#     z = lidar_pose.pose.orientation.z
#     w = lidar_pose.pose.orientation.w

#     euler = tf2.transformations.euler_from_quaternion([x, y, z, w])
#     roll = euler[0]
#     pitch = euler[1]
#     yaw = euler[2]

#     t = lidar_pose.header.stamp.to_sec()
#     # heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
#     # heading = heading
#     # rospy.logerr('#######roll=%f, pitch=%f, yaw=%f', roll, pitch, yaw * 180 / 3.1415927)

#     pt_lidar = [pos_x, pos_y, yaw, t]

#     traces_lidar.append(pt_lidar)

#     pt_mutex_lidar.release()

def odom_gps_callback(odom_gps):
    global pt_odom_gps
    global traces_odom_gps
    global pt_mutex_odom_gps

    pt_mutex_odom_gps.acquire()

    pos_x = odom_gps.pose.pose.position.x
    pos_y = odom_gps.pose.pose.position.y

    x = odom_gps.pose.pose.orientation.x
    y = odom_gps.pose.pose.orientation.y
    z = odom_gps.pose.pose.orientation.z
    w = odom_gps.pose.pose.orientation.w

    euler = tf2.transformations.euler_from_quaternion([x, y, z, w])
    roll = euler[0]
    pitch = euler[1]
    yaw = euler[2]

    t = odom_gps.header.stamp.to_sec()
    # heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
    # heading = heading
    # rospy.logerr('#######roll=%f, pitch=%f, yaw=%f', roll, pitch, yaw * 180 / 3.1415927)

    pt_odom_gps = [pos_x, pos_y, yaw, t]

    traces_odom_gps.append(pt_odom_gps)

    pt_mutex_odom_gps.release()

def localization_fusion_callback(loc_fusion):
    global pt_fusion
    global traces_fusion
    global pt_mutex_fusion

    pt_mutex_fusion.acquire()

    pos_x = loc_fusion.pose.pose.position.x
    pos_y = loc_fusion.pose.pose.position.y

    x = loc_fusion.pose.pose.orientation.x
    y = loc_fusion.pose.pose.orientation.y
    z = loc_fusion.pose.pose.orientation.z
    w = loc_fusion.pose.pose.orientation.w

    euler = tf2.transformations.euler_from_quaternion([x, y, z, w])
    roll = euler[0]
    pitch = euler[1]
    yaw = euler[2]

    t = loc_fusion.header.stamp.to_sec()
    # heading = atan2(2 * (w * z + x * y), 1 - 2 * (z ** 2 + x ** 2))
    # heading = heading
    # rospy.logerr('#######roll=%f, pitch=%f, yaw=%f', roll, pitch, yaw * 180 / 3.1415927)

    pt_fusion = [pos_x, pos_y, yaw, t]

    traces_fusion.append(pt_fusion)

    pt_mutex_fusion.release()


if __name__ == '__main__':

    rospy.init_node('draw_localization', anonymous=True)
    rospy.Subscriber('/pnc_msgs/vehicle_state', VehicleState, vehicle_state_callback)
    rospy.Subscriber('/pnc_msgs/vehicle_state_1', VehicleState, lidar_pose_callback)
    # rospy.Subscriber('/pose_lidar', PoseStamped, lidar_pose_callback)
    # rospy.Subscriber('/odom_gps', Odometry, odom_gps_callback)
    # rospy.Subscriber('/odometry/filtered', Odometry, localization_fusion_callback)

    f = plt.figure(dpi=120)

    gs0 = gridspec.GridSpec(4, 6, figure=f)

    ax1 = plt.Subplot(f, gs0[:, :-2])
    f.add_subplot(ax1)
    ax2 = plt.Subplot(f, gs0[0, -2:])
    f.add_subplot(ax2)
    ax3 = plt.Subplot(f, gs0[1, -2:])
    f.add_subplot(ax3)
    ax4 = plt.Subplot(f, gs0[2, -2:])
    f.add_subplot(ax4)
    ax5 = plt.Subplot(f, gs0[-1, -2])
    f.add_subplot(ax5)
    ax6 = plt.Subplot(f, gs0[-1, -1])
    f.add_subplot(ax6)

    pt_size = 20

    min_err = [1000.0, 1000.0]
    max_err = [-1000.0, -1000.0]

    cnt = 0.0
    sum_err = [0.0, 0.0]
    average_err = [0.0, 0.0]
    while not rospy.is_shutdown():
        ax1.cla()
        ax1.axis('equal')
        if pt_gps is not None:
            ## 1. find the nearest waypoints
            pt_mutex_gps.acquire()
            pt_tmp = pt_gps
            if len(traces_gps) > pt_size:
                traces_np_gps = np.array(traces_gps[-pt_size:])
                # traces_np_gps = np.array(traces_gps[:pt_size])
            else:
                traces_np_gps = np.array(traces_gps)
            # traces_np_gps = np.array(traces_gps)
            pt_mutex_gps.release()

            ax1.plot(traces_np_gps[:, 0], traces_np_gps[:, 1], 'r.-', linewidth=1, label="gps")
            pt_tmp2 = pt_tmp[0:2]
            heading_diff = pt_tmp[2]
            pt_tmp2[0] += cos(heading_diff) * 5  # + sin(heading_diff) * 10
            pt_tmp2[1] += sin(heading_diff) * 5  # + cos(heading_diff) * 10
            ax1.plot(pt_tmp[0], pt_tmp[1], 'r+', linewidth=2)
            ax1.plot([pt_tmp[0], pt_tmp2[0]], [pt_tmp[1], pt_tmp2[1]], 'r--', linewidth=1)

            ax2.cla()
            ax2.text(0.01, 0.9, "x:%10.3f" % (pt_tmp[0]), va="center", ha="left")
            ax2.text(0.01, 0.7, "y:%10.3f" % (pt_tmp[1]), va="center", ha="left")
            ax2.text(0.01, 0.5, "yaw:%6.3f" % (pt_tmp[2] * 180 / 3.1415927), va="center", ha="left")
            ax2.text(0.01, 0.3, "time:%15.3f" % (pt_tmp[3]), va="center", ha="left")

        if pt_lidar is not None:
            pt_mutex_lidar.acquire()
            pt_tmp = pt_lidar
            if len(traces_lidar) > pt_size:
                traces_np_lidar = np.array(traces_lidar[-pt_size:])
            else:
                traces_np_lidar = np.array(traces_lidar)
            # traces_np_lidar = np.array(traces_lidar)
            pt_mutex_lidar.release()

            ax1.plot(traces_np_lidar[:, 0], traces_np_lidar[:, 1], 'g-', linewidth=1, label="lidar")
            pt_tmp2 = pt_tmp[0:2]
            heading_diff = pt_tmp[2]
            pt_tmp2[0] += cos(heading_diff) * 10  # + sin(heading_diff) * 10
            pt_tmp2[1] += sin(heading_diff) * 10  # + cos(heading_diff) * 10
            ax1.plot(pt_tmp[0], pt_tmp[1], 'g+', linewidth=2)
            ax1.plot([pt_tmp[0], pt_tmp2[0]], [pt_tmp[1], pt_tmp2[1]], 'g--', linewidth=1)

            ax3.cla()
            ax3.text(0.01, 0.9, "x:%10.3f" % (pt_tmp[0]), va="center", ha="left")
            ax3.text(0.01, 0.7, "y:%10.3f" % (pt_tmp[1]), va="center", ha="left")
            ax3.text(0.01, 0.5, "yaw:%6.3f" % (pt_tmp[2] * 180 / 3.1415927), va="center", ha="left")
            ax3.text(0.01, 0.3, "time:%15.3f" % (pt_tmp[3]), va="center", ha="left")

        if pt_fusion is not None:
            pt_mutex_fusion.acquire()
            pt_tmp = pt_fusion
            if len(traces_fusion) > pt_size:
                # traces_np_fusion = np.array(traces_fusion[:pt_size])
                traces_np_fusion = np.array(traces_fusion[-pt_size:])
            else:
                traces_np_fusion = np.array(traces_fusion)
            # traces_np_fusion = np.array(traces_fusion)
            pt_mutex_fusion.release()

            ax1.plot(traces_np_fusion[:, 0], traces_np_fusion[:, 1], 'b.-', linewidth=1, label="fusion")
            # pt_tmp2 = pt_tmp[0:2]
            # heading_diff = pt_tmp[2]
            # pt_tmp2[0] += cos(heading_diff) * 5  # + sin(heading_diff) * 10
            # pt_tmp2[1] += sin(heading_diff) * 5  # + cos(heading_diff) * 10
            # ax1.plot(pt_tmp[0], pt_tmp[1], 'b+', lw=2)
            # ax1.plot([pt_tmp[0], pt_tmp2[0]], [pt_tmp[1], pt_tmp2[1]], 'b--', linewidth=1)

            ax4.cla()
            ax4.text(0.01, 0.8, "x:%10.3f" % (pt_tmp[0]), va="center", ha="left")
            ax4.text(0.01, 0.6, "y:%10.3f" % (pt_tmp[1]), va="center", ha="left")
            ax4.text(0.01, 0.4, "yaw:%6.3f" % (pt_tmp[2] * 180 / 3.1415927), va="center", ha="left")
            ax4.text(0.01, 0.2, "time:%15.3f" % (pt_tmp[3]), va="center", ha="left")

        if pt_odom_gps is not None:
            pt_mutex_odom_gps.acquire()
            pt_tmp = pt_odom_gps
            if len(traces_odom_gps) > pt_size:
                traces_np_odom_gps = np.array(traces_odom_gps[-pt_size:])
            else:
                traces_np_odom_gps = np.array(traces_odom_gps)
            pt_mutex_odom_gps.release()

            ax1.plot(traces_np_odom_gps[:, 0], traces_np_odom_gps[:, 1], 'y-', linewidth=1, label="odom_gps")
            pt_tmp2 = pt_tmp[0:2]
            heading_diff = pt_tmp[2]
            pt_tmp2[0] += cos(heading_diff) * 10  # + sin(heading_diff) * 10
            pt_tmp2[1] += sin(heading_diff) * 10  # + cos(heading_diff) * 10
            ax1.plot(pt_tmp[0], pt_tmp[1], 'y+', lw=2)
            ax1.plot([pt_tmp[0], pt_tmp2[0]], [pt_tmp[1], pt_tmp2[1]], 'y--', linewidth=1)

        ax1.legend()

        if pt_gps is not None and pt_lidar is not None:
            ax4.cla()
            ax4.text(0.01, 0.8, "x:%10.3f" % (pt_lidar[0] - pt_gps[0]), va="center", ha="left")
            ax4.text(0.01, 0.6, "y:%10.3f" % (pt_lidar[1] - pt_gps[1]), va="center", ha="left")
            ax4.text(0.01, 0.4, "yaw:%6.3f" % ((pt_lidar[2] - pt_gps[2])* 180 / 3.1415927), va="center", ha="left")
            ax4.text(0.01, 0.2, "time:%6.3f" % (pt_lidar[3] - pt_gps[3]), va="center", ha="left")

        if pt_gps is not None and pt_fusion is not None:
            # ax5.cla()
            # ax5.text(0.01, 0.8, "x:%10.3f" % (pt_fusion[0] - pt_gps[0]), va="center", ha="left")
            # ax5.text(0.01, 0.6, "y:%10.3f" % (pt_fusion[1] - pt_gps[1]), va="center", ha="left")
            # ax5.text(0.01, 0.4, "yaw:%6.3f" % ((pt_fusion[2] - pt_gps[2])* 180 / 3.1415927), va="center", ha="left")
            # ax5.text(0.01, 0.2, "time:%6.3f" % (pt_fusion[3] - pt_gps[3]), va="center", ha="left")

            if pt_fusion[0] - pt_gps[0] < min_err[0]:
                min_err[0] = pt_fusion[0] - pt_gps[0]
            if pt_fusion[0] - pt_gps[0] > max_err[0]:
                max_err[0] = pt_fusion[0] - pt_gps[0]

            if pt_fusion[1] - pt_gps[1] < min_err[1]:
                min_err[1] = pt_fusion[1] - pt_gps[1]
            if pt_fusion[1] - pt_gps[1] > max_err[1]:
                max_err[1] = pt_fusion[1] - pt_gps[1]

            cnt += 1
            sum_err[0] += pt_fusion[0] - pt_gps[0]
            sum_err[1] += pt_fusion[1] - pt_gps[1]

            ax3.cla()
            ax3.text(0.01, 0.8, "min_x:%10.3f" % (min_err[0]), va="center", ha="left")
            ax3.text(0.01, 0.6, "max_x:%10.3f" % (max_err[0]), va="center", ha="left")
            ax3.text(0.01, 0.4, "average_x:%6.3f" % (sum_err[0] / cnt), va="center", ha="left")
            ax3.text(0.6, 0.8, "min_y:%10.3f" % (min_err[1]), va="center", ha="left")
            ax3.text(0.6, 0.6, "max_y:%10.3f" % (max_err[1]), va="center", ha="left")
            ax3.text(0.6, 0.4, "average_y:%6.3f" % (sum_err[1] / cnt), va="center", ha="left")

        if pt_lidar is not None and pt_fusion is not None:
            ax6.cla()
            ax6.text(0.01, 0.8, "x:%10.3f" % (pt_fusion[0] - pt_lidar[0]), va="center", ha="left")
            ax6.text(0.01, 0.6, "y:%10.3f" % (pt_fusion[1] - pt_lidar[1]), va="center", ha="left")
            ax6.text(0.01, 0.4, "yaw:%6.3f" % ((pt_fusion[2] - pt_lidar[2])* 180 / 3.1415927), va="center", ha="left")
            ax6.text(0.01, 0.2, "time:%6.3f" % (pt_fusion[3] - pt_lidar[3]), va="center", ha="left")


        plt.pause(0.001)