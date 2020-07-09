#!/usr/bin/python


import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QAction, QMessageBox, QComboBox, QLabel
from PyQt5.QtGui import QIcon
from PyQt5.QtCore import pyqtSlot
from PyQt5.Qt import QLineEdit
from pprint import pprint
import rospy
import math

from pnc_msgs.msg import VehicleInfo
from pnc_msgs.msg import VehicleCmd

def infocallback(vehicleinfo):
    vehicle_info.steering_angle = vehicleinfo.steering_angle



def sendVehicleCmd(offset_angle, angle, max_angle, times, discret):
    if angle < 0.0:
        angle = 0.0
    if angle > max_angle:
        angle = max_angle;
    # rospy.logerr('********%f'%(offset_angle))
    for time in range(times):
        vehicle_cmd.header.stamp = rospy.Time.now()
        vehicle_cmd.throttle_mode = 100
        vehicle_cmd.gear_mode = 100
        vehicle_cmd.brake_mode = 100
        vehicle_cmd.steering_mode = 101
        vehicle_cmd.steering_speed = 0.5

        for discret_value in range(discret):
            vehicle_cmd.steering_angle = math.sin(2 * math.pi * float(discret_value) / float(discret) + math.asin(offset_angle)) * float(angle) / float(max_angle)
            rospy.logerr('********%f'%(vehicle_cmd.steering_angle))
            vehicle_cmd_pub.publish(vehicle_cmd)
            rospy.sleep(0.02)

        #rospy.sleep(5)
        rospy.logerr('################%d'%(time))



class App(QWidget):
    def __init__(self):
        super(App, self).__init__(None)
        self.title = 'steering angle test'
        self.left = 10
        self.top = 10
        self.width = 400
        self.height = 400
        self.initUI()

    def initUI(self):
        self.setWindowTitle(self.title)
        self.setGeometry(self.left, self.top, self.width, self.height)

        self.max_angle_label = QLabel("max_angle", self)
        self.max_angle_label.move(20, 20)
        self.max_angle_label.resize(80, 40)
        self.max_angle_text = QLineEdit('450', self)
        self.max_angle_text.move(120, 20)
        self.max_angle_text.resize(240, 40)

        self.angle_label = QLabel("angle", self)
        self.angle_label.move(20, 60)
        self.angle_label.resize(80, 40)
        self.angle_text = QLineEdit('450', self)
        self.angle_text.move(120, 60)
        self.angle_text.resize(240, 40)

        self.times_label = QLabel("times", self)
        self.times_label.move(20, 100)
        self.times_label.resize(80, 40)
        self.times_text = QLineEdit('10', self)
        self.times_text.move(120, 100)
        self.times_text.resize(240, 40)

        self.discret_label = QLabel("discret", self)
        self.discret_label.move(20, 140)
        self.discret_label.resize(80, 40)
        self.discret_text = QLineEdit('200', self)
        self.discret_text.move(120, 140)
        self.discret_text.resize(240, 40)


        self.test_button = QPushButton('test', self)
        self.test_button.move(20, 240)
        self.test_button.resize(360, 40)



        # connect button to function on_click

        self.test_button.clicked.connect(self.on_test_click)

        self.show()


    def on_test_click(self):

        sendVehicleCmd(vehicle_info.steering_angle, int(self.angle_text.text()), int(self.max_angle_text.text()), int(self.times_text.text()), int(self.discret_text.text()))

if __name__ == '__main__':
    rospy.init_node('steering_angle_test', anonymous=True)
    rospy.Subscriber('/pnc_msgs/vehicle_info', VehicleInfo, infocallback)
    vehicle_cmd_pub = rospy.Publisher('/pnc_msgs/vehicle_cmd', VehicleCmd, queue_size=1)
    vehicle_info = VehicleInfo()
    vehicle_cmd = VehicleCmd()
    app = QApplication(sys.argv)
    ex = App()
    app.exit(app.exec_())

