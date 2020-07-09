#!/usr/bin/python

import rospy
import tf
import numpy as np
import sys

from pnc_msgs.msg import VehicleState
from perception_msgs.msg import Objects
from perception_msgs.msg import Object
from geometry_msgs.msg import PoseStamped
from geometry_msgs.msg import Point

from pprint import pprint

other_state_ = VehicleState()

def state_callback(vehicle_state):
    global other_state_
    other_state_ = vehicle_state

if __name__ == '__main__':
    rospy.init_node('perception_node', anonymous=True)

    pub = rospy.Publisher('/fusion_detection/objects', Objects, queue_size=10)

    truck_id = rospy.get_param("~truck_id", "")
    rospy.logerr("truck id is %s", truck_id)

    if truck_id == "":
        rospy.logerr("there isn't truck id in params!")
    elif truck_id == "Truck2":
        rospy.Subscriber('/pnc_msgs/vehicle_state_lead', VehicleState, state_callback)
    elif truck_id == "Truck3":
        rospy.Subscriber('/pnc_msgs/vehicle_state_2', VehicleState, state_callback)
    else:
        rospy.logerr("invalid truck id!")

    listener = tf.TransformListener()

    rate = rospy.Rate(30)
    id = 1
    while not rospy.is_shutdown():
        front_state = other_state_
        pose_stamped = PoseStamped()
        pose_stamped.header.frame_id = 'utm'
        pose_stamped.header.stamp = rospy.Time()
        pose_stamped.pose.position.x = front_state.pose.translation.x
        pose_stamped.pose.position.y = front_state.pose.translation.y
        pose_stamped.pose.position.z = front_state.pose.translation.z

        pose_stamped.pose.orientation = front_state.pose.rotation
        try:
            new_pose = listener.transformPose('smartcar', pose_stamped)
        except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            continue

        object_box_center = Point()
        object_box_center.x = new_pose.pose.position.x - 8.0
        object_box_center.y = new_pose.pose.position.y
        object_box_center.z = new_pose.pose.position.z

        object_box_size = Point()
        object_box_size.x = 5.0
        object_box_size.y = 2.0
        object_box_size.z = 1.6

        [roll, pitch, yaw] = tf.transformations.euler_from_quaternion([new_pose.pose.orientation.x,
                                                                       new_pose.pose.orientation.y,
                                                                       new_pose.pose.orientation.z,
                                                                       new_pose.pose.orientation.w])
#        [roll, pitch, yaw] = tf.euler_from_quaternion(new_pose.pose.orientation)

        object = Object()

        # id += 1
        # if id == sys.maxint:
        #     id = 0

        object.id = id
        object.age = 100

        object.object_box_center = object_box_center
        object.object_box_size = object_box_size
        object.classification = 20

        object.object_box_orientation = yaw

        pt = Point()
        pt.x = object_box_center.x - 1.5
        pt.y = object_box_center.y - 3
        object.contour_points.append(pt)
        pt = Point()
        pt.x = object_box_center.x + 1.5
        pt.y = object_box_center.y - 3
        object.contour_points.append(pt)
        pt = Point()
        pt.x = object_box_center.x + 1.5
        pt.y = object_box_center.y + 3
        object.contour_points.append(pt)
        pt = Point()
        pt.x = object_box_center.x - 1.5
        pt.y = object_box_center.y + 3
        object.contour_points.append(pt)
        
        # object.absolute_velocity = front_state
        # pprint(front_state.velocity)
        object.absolute_velocity.x = front_state.velocity.linear.x
        object.absolute_velocity.y = front_state.velocity.linear.y
        object.absolute_velocity.z = front_state.velocity.linear.z
        
        # pprint(object)

        objects = Objects()
        objects.objects.append(object)

        pub.publish(objects)
        rate.sleep()
