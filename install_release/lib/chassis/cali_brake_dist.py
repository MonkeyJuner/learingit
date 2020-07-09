#!/usr/bin/python


import sys
from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QAction, QMessageBox, QComboBox, QLabel
from PyQt5.QtGui import QIcon
from PyQt5.QtCore import pyqtSlot
from PyQt5.Qt import QLineEdit
from pprint import pprint
import rospy
from tos_msgs.msg import VehicleTarget, CalibrateSwitch
from geometry_msgs.msg import PointStamped, Point
from pnc_msgs.msg import ForceVehicleCmd


def sendVehicleCmd(period, times):

    for time in range(times):
        vehicle_cmd = ForceVehicleCmd()
        vehicle_cmd.header.stamp = rospy.Time.now()
        vehicle_cmd.stop_distance_err = period
        vehicle_cmd.force_cmd_counter = time

        vehicle_cmd_pub.publish(vehicle_cmd)
        #pprint(vehicle_cmd)

        rospy.sleep(5)
        rospy.logerr('################%d'%(time))



class App(QWidget):

    def __init__(self):
        super(App, self).__init__(None)
        self.title = 'tos monitor'
        self.left = 10
        self.top = 10
        self.width = 400
        self.height = 400
        self.initUI()

    def initUI(self):
        self.setWindowTitle(self.title)
        self.setGeometry(self.left, self.top, self.width, self.height)

        self.period_label = QLabel("period", self)
        self.period_label.move(20, 20)
        self.period_label.resize(80, 40)
        self.period_text = QLineEdit('45', self)
        self.period_text.move(120, 20)
        self.period_text.resize(240, 40)

        self.times_label = QLabel("times", self)
        self.times_label.move(20, 80)
        self.times_label.resize(80, 40)
        self.times_text = QLineEdit('100', self)
        self.times_text.move(120, 80)
        self.times_text.resize(240, 40)



        self.cali_button = QPushButton('calibration', self)
        self.cali_button.move(20, 200)
        self.cali_button.resize(360, 40)



        # connect button to function on_click
        self.cali_button.clicked.connect(self.on_cali_click)
        self.show()

    def on_cali_click(self):
        sendVehicleCmd(float(self.period_text.text()), int(self.times_text.text()))




if __name__ == '__main__':
    rospy.init_node('cal_brake_dist', anonymous=True)
    # vehicle_target_pub = rospy.Publisher('/center_msgs/vehicle_target', VehicleTarget, queue_size=1)
    vehicle_cmd_pub = rospy.Publisher('/pnc_msgs/force_vehicle_cmd', ForceVehicleCmd, queue_size=1)

    app = QApplication(sys.argv)
    ex = App()
    app.exit(app.exec_())