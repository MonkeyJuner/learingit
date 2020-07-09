# #!/usr/bin/python
#
#
# import sys
# from PyQt5.QtWidgets import QApplication, QWidget, QPushButton, QAction, QMessageBox, QComboBox, QLabel, QCheckBox
# from PyQt5.QtGui import QIcon
# from PyQt5.QtCore import pyqtSlot, Qt
# from PyQt5.Qt import QLineEdit
# from pprint import pprint
# import rospy
#
# from pnc_msgs.msg import VehicleCmd, VehicleInfo
#
#
# speed = 0.0
# ex = None
#
#
# def vehicle_info_callback(msg):
#     speed = msg.vehicle_speed
#
#     if ex is not None:
#         ex.times_text.setText("%1.2f"%(speed))
#
# def send_cmd_callback():
#
# class App(QWidget):
#
#     def send_cmd(self, state):
#         rospy.logerr("sb")
#
#     def __init__(self):
#         super(App, self).__init__(None)
#         self.title = 'throttle vs speed'
#         self.left = 10
#         self.top = 10
#         self.width = 400
#         self.height = 400
#         self.initUI()
#
#     def initUI(self):
#         self.setWindowTitle(self.title)
#         self.setGeometry(self.left, self.top, self.width, self.height)
#
#         self.is_send = QCheckBox("if send the vehicle cmd", self)
#         self.is_send.move(20, 20)
#         # self.is_send.resize(80, 40)
#         self.is_send.toggle()
#         self.is_send.stateChanged.connect(self.send_cmd)
#
#         self.period_label = QLabel("throttle", self)
#         self.period_label.move(20, 80)
#         self.period_label.resize(80, 40)
#         self.period_text = QLineEdit('0.3', self)
#         self.period_text.move(120, 80)
#         self.period_text.resize(240, 40)
#
#         self.times_label = QLabel("speed", self)
#         self.times_label.move(20, 140)
#         self.times_label.resize(80, 40)
#         self.times_text = QLineEdit('', self)
#         self.times_text.move(120, 140)
#         self.times_text.resize(240, 40)
#
#         self.show()
#
#
#
#
# if __name__ == '__main__':
#     global ex
#     rospy.init_node('cal_brake_dist', anonymous=True)
#
#     vehicle_info_sub = rospy.Subscriber('/pnc_msgs/vehicle_info', VehicleInfo, vehicle_info_callback)
#     vehicle_cmd_pub = rospy.Publisher('/pnc_msgs/vehicle_cmd', VehicleCmd, queue_size=1)
#     rospy.Timer(rospy.Duration(0.01), send_cmd_callback)
#
#     app = QApplication(sys.argv)
#     ex = App()
#     app.exit(app.exec_())


import rospy
import cv2
from pnc_msgs.msg import VehicleCmd, VehicleInfo, Gear
import numpy as np
from pprint import pprint

speed = 0.0
throttle_base = 0.3
throttle_a = 0.01
vec = []

def vehicle_info_callback(msg):
    global speed
    speed = msg.vehicle_speed

def saveFile(vec):
    f = open('/home/hebei/1.txt', 'w')

    str1 = '0.0, '
    str2 = ''
    str3 = ''
    for v in vec:
        str1 = '%s%1.2f, '%(str1, v[2])
        str2 = '%s%1.2f, ' % (str2, v[0] * 100)
        str3 = '%s%1.2f, ' % (str3, v[0] * 100 + 1)

    str1 = str1[:-2]
    str2 = str2[:-2]
    str3 = str3[:-2]


    f.write('        const_velocity: [%s]\n'%(str1))
    f.write('        const_map_throttle: [%s]\n'%(str2))
    f.write('        acc_map_throttle: [%s]\n'%(str3))

    f.close()

rospy.init_node('record_throttle_and_speed', anonymous=True)
vehicle_info_sub = rospy.Subscriber('/pnc_msgs/vehicle_info', VehicleInfo, vehicle_info_callback)
vehicle_cmd_pub = rospy.Publisher('/pnc_msgs/vehicle_cmd', VehicleCmd, queue_size=1)

rate = rospy.Rate(50)

cv2.namedWindow("vs")

while not rospy.is_shutdown():

    im = np.zeros((400, 400, 3), dtype='uint8')
    text_show = "throttle=%1.2f, vehicle=%1.2f, count=%d" % (throttle_base, speed, len(vec))
    cv2.putText(im, text_show, (20, 50),
                cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 1)

    cv2.imshow("vs", im)
    key = cv2.waitKey(1)

    if key == ord('w'):
        throttle_base += throttle_a
    elif key == ord('s'):
        throttle_base -= throttle_a
    elif key == ord('e'):
        throttle_base = 0.3
    elif key == ord('n'):
        vec.append([throttle_base, speed, speed / 3.6])
    elif key == ord('c'):
        vec.pop()
    elif key == ord('o'):
        saveFile(vec)

    vehicle_cmd = VehicleCmd()
    vehicle_cmd.header.stamp = rospy.Time.now()
    vehicle_cmd.throttle = throttle_base
    vehicle_cmd.throttle_mode = VehicleCmd.MODE_AUTO
    vehicle_cmd.gear.value = Gear.GEAR_D
    vehicle_cmd.gear_mode = VehicleCmd.MODE_AUTO
    vehicle_cmd.steering_angle = 0.0
    vehicle_cmd.steering_mode = VehicleCmd.MODE_AUTO
    vehicle_cmd.brake = 0.0
    vehicle_cmd.brake_mode = VehicleCmd.MODE_AUTO

    # pprint(vehicle_cmd)
    vehicle_cmd_pub.publish(vehicle_cmd)

    rate.sleep()