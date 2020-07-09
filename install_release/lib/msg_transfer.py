#!/usr/bin/python

import rospy
from localization_msgs.msg import VehicleState
from nav_msgs.msg import Odometry
from geometry_msgs.msg import PoseStamped

def vehicle_state_callback(vehicle_state):
    global vehicle_state_pub
    odom = Odometry()
    odom.header.stamp = vehicle_state.header.stamp
    odom.header.frame_id = "utm"
    odom.pose.pose.position.x = vehicle_state.pose.translation.x
    odom.pose.pose.position.y = vehicle_state.pose.translation.y
    odom.pose.pose.position.z = 0
    odom.pose.pose.orientation = vehicle_state.pose.rotation

    vehicle_state_pub.publish(odom)

def lidar_pose_callback(lidar_pose):
    global lidar_pose_pub
    odom = Odometry()
    odom.header.stamp = lidar_pose.header.stamp
    t = odom.header.stamp.to_sec() + 0.4
    odom.header.stamp = rospy.Time.from_sec(t)
    odom.header.frame_id = "utm"
    odom.pose.pose = lidar_pose.pose

    lidar_pose_pub.publish(odom)

if __name__ == '__main__':

    vehicle_state_pub = rospy.Publisher('/odometry/gps', Odometry, queue_size=10)
    lidar_pose_pub = rospy.Publisher('/odometry/lidar', Odometry, queue_size=10)
    rospy.init_node('msg_transfer_node', anonymous=True)

    rospy.Subscriber('/pnc_msgs/vehicle_state', VehicleState, vehicle_state_callback)
    rospy.Subscriber('/lidar_update_pose', PoseStamped, lidar_pose_callback)

    rospy.spin()