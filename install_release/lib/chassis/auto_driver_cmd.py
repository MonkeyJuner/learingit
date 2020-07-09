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
from pnc_msgs.msg import VehicleOtherCmd

def infocallback(vehicleinfo):
    vehicle_info.steering_angle = vehicleinfo.steering_angle



def sendVehicleOtherCmd():

    for i in range(50):
        vehicle_other_cmd.header.stamp = rospy.Time.now()
        vehicle_other_cmd.auto_driver_cmd = 1
        rospy.logerr('********%f'%(vehicle_other_cmd.auto_driver_cmd))
        vehicle_other_cmd_pub.publish(vehicle_other_cmd)
        rospy.sleep(0.02)
    for i in range(50):
        vehicle_other_cmd.header.stamp = rospy.Time.now()
        vehicle_other_cmd.auto_driver_cmd = 0
        rospy.logerr('********%f'%(vehicle_other_cmd.auto_driver_cmd))
        vehicle_other_cmd_pub.publish(vehicle_other_cmd)
        rospy.sleep(0.02)

    #rospy.sleep(5)



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


        self.test_button = QPushButton('auto_driver', self)
        self.test_button.move(20, 240)
        self.test_button.resize(360, 40)

        # connect button to function on_click

        self.test_button.clicked.connect(self.on_test_click)

        self.show()


    def on_test_click(self):
        sendVehicleOtherCmd()

if __name__ == '__main__':
    rospy.init_node('auto_driver_cmd', anonymous=True)
    rospy.Subscriber('/pnc_msgs/vehicle_info', VehicleInfo, infocallback)
    vehicle_other_cmd_pub = rospy.Publisher('pnc_msgs/vehicle_hmi_cmd', VehicleOtherCmd, queue_size=1)
    vehicle_info = VehicleInfo()
    vehicle_other_cmd = VehicleOtherCmd()
    app = QApplication(sys.argv)
    ex = App()
    app.exit(app.exec_())

