;; Auto-generated. Do not edit!


(when (boundp 'pnc_msgs::VehicleCmd)
  (if (not (find-package "PNC_MSGS"))
    (make-package "PNC_MSGS"))
  (shadow 'VehicleCmd (find-package "PNC_MSGS")))
(unless (find-package "PNC_MSGS::VEHICLECMD")
  (make-package "PNC_MSGS::VEHICLECMD"))

(in-package "ROS")
;;//! \htmlinclude VehicleCmd.msg.html
(if (not (find-package "PNCC_MSGS"))
  (ros::roseus-add-msgs "pncc_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_MANUAL*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*MODE_MANUAL* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*MODE_MANUAL* 100)
(intern "*MODE_AUTO*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*MODE_AUTO* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*MODE_AUTO* 101)
(intern "*OFF*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*OFF* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*OFF* 150)
(intern "*ON*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*ON* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*ON* 151)
(intern "*TURN_LIGHT_LEFT*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*TURN_LIGHT_LEFT* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*TURN_LIGHT_LEFT* 0)
(intern "*TURN_LIGHT_RIGHT*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*TURN_LIGHT_RIGHT* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*TURN_LIGHT_RIGHT* 1)
(intern "*TURN_LIGHT_BOTH*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*TURN_LIGHT_BOTH* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*TURN_LIGHT_BOTH* 2)
(intern "*TURN_LIGHT_INVALID*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*TURN_LIGHT_INVALID* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*TURN_LIGHT_INVALID* 3)
(intern "*LIGHT_CLOSE*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*LIGHT_CLOSE* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*LIGHT_CLOSE* 0)
(intern "*LIGHT_NEAR*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*LIGHT_NEAR* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*LIGHT_NEAR* 1)
(intern "*LIGHT_FAR*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*LIGHT_FAR* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*LIGHT_FAR* 2)
(intern "*LIGHT_INVALID*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*LIGHT_INVALID* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*LIGHT_INVALID* 3)
(intern "*WIPER_CLOSE*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*WIPER_CLOSE* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*WIPER_CLOSE* 0)
(intern "*WIPER_RUN*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*WIPER_RUN* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*WIPER_RUN* 1)
(intern "*WIPER_RESERVE*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*WIPER_RESERVE* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*WIPER_RESERVE* 2)
(intern "*WIPER_INVALID*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*WIPER_INVALID* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*WIPER_INVALID* 3)
(intern "*DOOR_NO_CONTROL*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*DOOR_NO_CONTROL* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*DOOR_NO_CONTROL* 0)
(intern "*DOOR_NORMAL_OPEN*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*DOOR_NORMAL_OPEN* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*DOOR_NORMAL_OPEN* 1)
(intern "*DOOR_EMERGENCY_OPEN*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*DOOR_EMERGENCY_OPEN* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*DOOR_EMERGENCY_OPEN* 2)
(intern "*DOOR_RESERVE*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*DOOR_RESERVE* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*DOOR_RESERVE* 3)
(intern "*HORN_NO_CONTROL*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*HORN_NO_CONTROL* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*HORN_NO_CONTROL* 0)
(intern "*HORN_OPEN*" (find-package "PNC_MSGS::VEHICLECMD"))
(shadow '*HORN_OPEN* (find-package "PNC_MSGS::VEHICLECMD"))
(defconstant pnc_msgs::VehicleCmd::*HORN_OPEN* 1)
(defclass pnc_msgs::VehicleCmd
  :super ros::object
  :slots (_header _steering_mode _steering_angle _steering_speed _throttle_mode _throttle _brake_mode _brake _acceleration_request _acceleration_mode _gear _gear_mode _turn_light_mode _turn_light _light_mode _light _wiper_mode _wiper _door_mode _door _horn_mode _horn _auto_driver_cmd _e_stop_cmd ))

(defmethod pnc_msgs::VehicleCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steering_mode __steering_mode) 0)
    ((:steering_angle __steering_angle) 0.0)
    ((:steering_speed __steering_speed) 0.0)
    ((:throttle_mode __throttle_mode) 0)
    ((:throttle __throttle) 0.0)
    ((:brake_mode __brake_mode) 0)
    ((:brake __brake) 0.0)
    ((:acceleration_request __acceleration_request) 0.0)
    ((:acceleration_mode __acceleration_mode) 0)
    ((:gear __gear) (instance pncc_msgs::Gear :init))
    ((:gear_mode __gear_mode) 0)
    ((:turn_light_mode __turn_light_mode) 0)
    ((:turn_light __turn_light) 0)
    ((:light_mode __light_mode) 0)
    ((:light __light) 0)
    ((:wiper_mode __wiper_mode) 0)
    ((:wiper __wiper) 0)
    ((:door_mode __door_mode) 0)
    ((:door __door) 0)
    ((:horn_mode __horn_mode) 0)
    ((:horn __horn) 0)
    ((:auto_driver_cmd __auto_driver_cmd) 0)
    ((:e_stop_cmd __e_stop_cmd) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steering_mode (round __steering_mode))
   (setq _steering_angle (float __steering_angle))
   (setq _steering_speed (float __steering_speed))
   (setq _throttle_mode (round __throttle_mode))
   (setq _throttle (float __throttle))
   (setq _brake_mode (round __brake_mode))
   (setq _brake (float __brake))
   (setq _acceleration_request (float __acceleration_request))
   (setq _acceleration_mode (round __acceleration_mode))
   (setq _gear __gear)
   (setq _gear_mode (round __gear_mode))
   (setq _turn_light_mode (round __turn_light_mode))
   (setq _turn_light (round __turn_light))
   (setq _light_mode (round __light_mode))
   (setq _light (round __light))
   (setq _wiper_mode (round __wiper_mode))
   (setq _wiper (round __wiper))
   (setq _door_mode (round __door_mode))
   (setq _door (round __door))
   (setq _horn_mode (round __horn_mode))
   (setq _horn (round __horn))
   (setq _auto_driver_cmd (round __auto_driver_cmd))
   (setq _e_stop_cmd (round __e_stop_cmd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steering_mode
   (&optional __steering_mode)
   (if __steering_mode (setq _steering_mode __steering_mode)) _steering_mode)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
  (:steering_speed
   (&optional __steering_speed)
   (if __steering_speed (setq _steering_speed __steering_speed)) _steering_speed)
  (:throttle_mode
   (&optional __throttle_mode)
   (if __throttle_mode (setq _throttle_mode __throttle_mode)) _throttle_mode)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:brake_mode
   (&optional __brake_mode)
   (if __brake_mode (setq _brake_mode __brake_mode)) _brake_mode)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:acceleration_request
   (&optional __acceleration_request)
   (if __acceleration_request (setq _acceleration_request __acceleration_request)) _acceleration_request)
  (:acceleration_mode
   (&optional __acceleration_mode)
   (if __acceleration_mode (setq _acceleration_mode __acceleration_mode)) _acceleration_mode)
  (:gear
   (&rest __gear)
   (if (keywordp (car __gear))
       (send* _gear __gear)
     (progn
       (if __gear (setq _gear (car __gear)))
       _gear)))
  (:gear_mode
   (&optional __gear_mode)
   (if __gear_mode (setq _gear_mode __gear_mode)) _gear_mode)
  (:turn_light_mode
   (&optional __turn_light_mode)
   (if __turn_light_mode (setq _turn_light_mode __turn_light_mode)) _turn_light_mode)
  (:turn_light
   (&optional __turn_light)
   (if __turn_light (setq _turn_light __turn_light)) _turn_light)
  (:light_mode
   (&optional __light_mode)
   (if __light_mode (setq _light_mode __light_mode)) _light_mode)
  (:light
   (&optional __light)
   (if __light (setq _light __light)) _light)
  (:wiper_mode
   (&optional __wiper_mode)
   (if __wiper_mode (setq _wiper_mode __wiper_mode)) _wiper_mode)
  (:wiper
   (&optional __wiper)
   (if __wiper (setq _wiper __wiper)) _wiper)
  (:door_mode
   (&optional __door_mode)
   (if __door_mode (setq _door_mode __door_mode)) _door_mode)
  (:door
   (&optional __door)
   (if __door (setq _door __door)) _door)
  (:horn_mode
   (&optional __horn_mode)
   (if __horn_mode (setq _horn_mode __horn_mode)) _horn_mode)
  (:horn
   (&optional __horn)
   (if __horn (setq _horn __horn)) _horn)
  (:auto_driver_cmd
   (&optional __auto_driver_cmd)
   (if __auto_driver_cmd (setq _auto_driver_cmd __auto_driver_cmd)) _auto_driver_cmd)
  (:e_stop_cmd
   (&optional __e_stop_cmd)
   (if __e_stop_cmd (setq _e_stop_cmd __e_stop_cmd)) _e_stop_cmd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _steering_mode
    1
    ;; float64 _steering_angle
    8
    ;; float64 _steering_speed
    8
    ;; uint8 _throttle_mode
    1
    ;; float64 _throttle
    8
    ;; uint8 _brake_mode
    1
    ;; float64 _brake
    8
    ;; float64 _acceleration_request
    8
    ;; uint8 _acceleration_mode
    1
    ;; pncc_msgs/Gear _gear
    (send _gear :serialization-length)
    ;; uint8 _gear_mode
    1
    ;; uint8 _turn_light_mode
    1
    ;; uint8 _turn_light
    1
    ;; uint8 _light_mode
    1
    ;; uint8 _light
    1
    ;; uint8 _wiper_mode
    1
    ;; uint8 _wiper
    1
    ;; uint8 _door_mode
    1
    ;; uint8 _door
    1
    ;; uint8 _horn_mode
    1
    ;; uint8 _horn
    1
    ;; uint8 _auto_driver_cmd
    1
    ;; uint8 _e_stop_cmd
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _steering_mode
       (write-byte _steering_mode s)
     ;; float64 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _steering_speed
       (sys::poke _steering_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _throttle_mode
       (write-byte _throttle_mode s)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _brake_mode
       (write-byte _brake_mode s)
     ;; float64 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _acceleration_request
       (sys::poke _acceleration_request (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _acceleration_mode
       (write-byte _acceleration_mode s)
     ;; pncc_msgs/Gear _gear
       (send _gear :serialize s)
     ;; uint8 _gear_mode
       (write-byte _gear_mode s)
     ;; uint8 _turn_light_mode
       (write-byte _turn_light_mode s)
     ;; uint8 _turn_light
       (write-byte _turn_light s)
     ;; uint8 _light_mode
       (write-byte _light_mode s)
     ;; uint8 _light
       (write-byte _light s)
     ;; uint8 _wiper_mode
       (write-byte _wiper_mode s)
     ;; uint8 _wiper
       (write-byte _wiper s)
     ;; uint8 _door_mode
       (write-byte _door_mode s)
     ;; uint8 _door
       (write-byte _door s)
     ;; uint8 _horn_mode
       (write-byte _horn_mode s)
     ;; uint8 _horn
       (write-byte _horn s)
     ;; uint8 _auto_driver_cmd
       (write-byte _auto_driver_cmd s)
     ;; uint8 _e_stop_cmd
       (write-byte _e_stop_cmd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _steering_mode
     (setq _steering_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _steering_speed
     (setq _steering_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _throttle_mode
     (setq _throttle_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _brake_mode
     (setq _brake_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _brake
     (setq _brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _acceleration_request
     (setq _acceleration_request (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _acceleration_mode
     (setq _acceleration_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; pncc_msgs/Gear _gear
     (send _gear :deserialize buf ptr-) (incf ptr- (send _gear :serialization-length))
   ;; uint8 _gear_mode
     (setq _gear_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _turn_light_mode
     (setq _turn_light_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _turn_light
     (setq _turn_light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _light_mode
     (setq _light_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _light
     (setq _light (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wiper_mode
     (setq _wiper_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wiper
     (setq _wiper (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _door_mode
     (setq _door_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _door
     (setq _door (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _horn_mode
     (setq _horn_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _horn
     (setq _horn (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _auto_driver_cmd
     (setq _auto_driver_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _e_stop_cmd
     (setq _e_stop_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pnc_msgs::VehicleCmd :md5sum-) "d13944380411e88decad84bf9d937781")
(setf (get pnc_msgs::VehicleCmd :datatype-) "pnc_msgs/VehicleCmd")
(setf (get pnc_msgs::VehicleCmd :definition-)
      "uint8 MODE_MANUAL = 100
uint8 MODE_AUTO = 101

uint8 OFF = 150              # For horn, left_light and right_light
uint8 ON = 151               # For horn, left_light and right_light

uint8 TURN_LIGHT_LEFT = 0
uint8 TURN_LIGHT_RIGHT = 1
uint8 TURN_LIGHT_BOTH = 2
uint8 TURN_LIGHT_INVALID = 3

uint8 LIGHT_CLOSE = 0
uint8 LIGHT_NEAR = 1
uint8 LIGHT_FAR = 2
uint8 LIGHT_INVALID = 3

uint8 WIPER_CLOSE = 0
uint8 WIPER_RUN = 1
uint8 WIPER_RESERVE = 2
uint8 WIPER_INVALID = 3

uint8 DOOR_NO_CONTROL = 0
uint8 DOOR_NORMAL_OPEN = 1
uint8 DOOR_EMERGENCY_OPEN = 2
uint8 DOOR_RESERVE = 3

uint8 HORN_NO_CONTROL = 0
uint8 HORN_OPEN = 1

Header header

uint8 steering_mode
float64 steering_angle     # -1.0 ~ 1.0, positive number on the right side
float64 steering_speed     # 0.0 ~ 1.0

uint8 throttle_mode
float64 throttle           # 0.0 ~ 1.0
uint8 brake_mode
float64 brake              # 0.0 ~ 1.0

float64 acceleration_request   # m/s2
uint8 acceleration_mode

pncc_msgs/Gear gear
uint8 gear_mode

uint8 turn_light_mode
uint8 turn_light            #0:left  1:right  2:both  3:invalid

uint8 light_mode
uint8 light                 #front light    0:close  1:near light   2:far light  3:invalid

uint8 wiper_mode
uint8 wiper                 #0:wiper close  1:run wiper  2:reserve  3:invalid

uint8 door_mode
uint8 door                  #0:no control  1:normal open  2:emergency open  3:reserve

uint8 horn_mode
uint8 horn               #0:no control  1:open

uint8 auto_driver_cmd
uint8 e_stop_cmd



================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: pncc_msgs/Gear
uint8 GEAR_P = 0
uint8 GEAR_R = 1
uint8 GEAR_N = 2
uint8 GEAR_D = 3
uint8 GEAR_1 = 4
uint8 GEAR_2 = 5
uint8 GEAR_3 = 6
uint8 GEAR_4 = 7
uint8 GEAR_5 = 8
uint8 GEAR_6 = 9
uint8 GEAR_7 = 10
uint8 GEAR_8 = 11
uint8 GEAR_9 = 12
uint8 GEAR_10 = 13
uint8 GEAR_11 = 14
uint8 GEAR_12 = 15


uint8 value

")



(provide :pnc_msgs/VehicleCmd "d13944380411e88decad84bf9d937781")


