;; Auto-generated. Do not edit!


(when (boundp 'pncc_msgs::VehicleInfo)
  (if (not (find-package "PNCC_MSGS"))
    (make-package "PNCC_MSGS"))
  (shadow 'VehicleInfo (find-package "PNCC_MSGS")))
(unless (find-package "PNCC_MSGS::VEHICLEINFO")
  (make-package "PNCC_MSGS::VEHICLEINFO"))

(in-package "ROS")
;;//! \htmlinclude VehicleInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_MANUAL*" (find-package "PNCC_MSGS::VEHICLEINFO"))
(shadow '*MODE_MANUAL* (find-package "PNCC_MSGS::VEHICLEINFO"))
(defconstant pncc_msgs::VehicleInfo::*MODE_MANUAL* 70)
(intern "*MODE_AUTO*" (find-package "PNCC_MSGS::VEHICLEINFO"))
(shadow '*MODE_AUTO* (find-package "PNCC_MSGS::VEHICLEINFO"))
(defconstant pncc_msgs::VehicleInfo::*MODE_AUTO* 71)
(intern "*MODE_INTERVENED*" (find-package "PNCC_MSGS::VEHICLEINFO"))
(shadow '*MODE_INTERVENED* (find-package "PNCC_MSGS::VEHICLEINFO"))
(defconstant pncc_msgs::VehicleInfo::*MODE_INTERVENED* 72)
(defclass pncc_msgs::VehicleInfo
  :super ros::object
  :slots (_header _vehicle_speed _odometer _wheel_speed _wheel_odometer _wheel_angle_left _wheel_angle_right _yaw_rate _gx _gy _steering_mode _steering_angle _throttle_mode _throttle _brake_mode _brake _acceleration_mode _acceleration _gear_mode _gear _turn_light_status _door_status _wiper_status _horn_status _light_status _dump_energy_status _auto_driver_status _vehicle_error_status _emergency_stop_status _brake_air_pressure_0 _brake_air_pressure_1 ))

(defmethod pncc_msgs::VehicleInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:vehicle_speed __vehicle_speed) 0.0)
    ((:odometer __odometer) 0.0)
    ((:wheel_speed __wheel_speed) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheel_odometer __wheel_odometer) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:wheel_angle_left __wheel_angle_left) 0.0)
    ((:wheel_angle_right __wheel_angle_right) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:gx __gx) 0.0)
    ((:gy __gy) 0.0)
    ((:steering_mode __steering_mode) 0)
    ((:steering_angle __steering_angle) 0.0)
    ((:throttle_mode __throttle_mode) 0)
    ((:throttle __throttle) 0.0)
    ((:brake_mode __brake_mode) 0)
    ((:brake __brake) 0.0)
    ((:acceleration_mode __acceleration_mode) 0)
    ((:acceleration __acceleration) 0.0)
    ((:gear_mode __gear_mode) 0)
    ((:gear __gear) (instance pncc_msgs::Gear :init))
    ((:turn_light_status __turn_light_status) 0)
    ((:door_status __door_status) 0)
    ((:wiper_status __wiper_status) 0)
    ((:horn_status __horn_status) 0)
    ((:light_status __light_status) 0)
    ((:dump_energy_status __dump_energy_status) 0)
    ((:auto_driver_status __auto_driver_status) 0)
    ((:vehicle_error_status __vehicle_error_status) 0)
    ((:emergency_stop_status __emergency_stop_status) 0)
    ((:brake_air_pressure_0 __brake_air_pressure_0) 0.0)
    ((:brake_air_pressure_1 __brake_air_pressure_1) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _vehicle_speed (float __vehicle_speed))
   (setq _odometer (float __odometer))
   (setq _wheel_speed __wheel_speed)
   (setq _wheel_odometer __wheel_odometer)
   (setq _wheel_angle_left (float __wheel_angle_left))
   (setq _wheel_angle_right (float __wheel_angle_right))
   (setq _yaw_rate (float __yaw_rate))
   (setq _gx (float __gx))
   (setq _gy (float __gy))
   (setq _steering_mode (round __steering_mode))
   (setq _steering_angle (float __steering_angle))
   (setq _throttle_mode (round __throttle_mode))
   (setq _throttle (float __throttle))
   (setq _brake_mode (round __brake_mode))
   (setq _brake (float __brake))
   (setq _acceleration_mode (round __acceleration_mode))
   (setq _acceleration (float __acceleration))
   (setq _gear_mode (round __gear_mode))
   (setq _gear __gear)
   (setq _turn_light_status (round __turn_light_status))
   (setq _door_status (round __door_status))
   (setq _wiper_status (round __wiper_status))
   (setq _horn_status (round __horn_status))
   (setq _light_status (round __light_status))
   (setq _dump_energy_status (round __dump_energy_status))
   (setq _auto_driver_status (round __auto_driver_status))
   (setq _vehicle_error_status (round __vehicle_error_status))
   (setq _emergency_stop_status (round __emergency_stop_status))
   (setq _brake_air_pressure_0 (float __brake_air_pressure_0))
   (setq _brake_air_pressure_1 (float __brake_air_pressure_1))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:vehicle_speed
   (&optional __vehicle_speed)
   (if __vehicle_speed (setq _vehicle_speed __vehicle_speed)) _vehicle_speed)
  (:odometer
   (&optional __odometer)
   (if __odometer (setq _odometer __odometer)) _odometer)
  (:wheel_speed
   (&optional __wheel_speed)
   (if __wheel_speed (setq _wheel_speed __wheel_speed)) _wheel_speed)
  (:wheel_odometer
   (&optional __wheel_odometer)
   (if __wheel_odometer (setq _wheel_odometer __wheel_odometer)) _wheel_odometer)
  (:wheel_angle_left
   (&optional __wheel_angle_left)
   (if __wheel_angle_left (setq _wheel_angle_left __wheel_angle_left)) _wheel_angle_left)
  (:wheel_angle_right
   (&optional __wheel_angle_right)
   (if __wheel_angle_right (setq _wheel_angle_right __wheel_angle_right)) _wheel_angle_right)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:gx
   (&optional __gx)
   (if __gx (setq _gx __gx)) _gx)
  (:gy
   (&optional __gy)
   (if __gy (setq _gy __gy)) _gy)
  (:steering_mode
   (&optional __steering_mode)
   (if __steering_mode (setq _steering_mode __steering_mode)) _steering_mode)
  (:steering_angle
   (&optional __steering_angle)
   (if __steering_angle (setq _steering_angle __steering_angle)) _steering_angle)
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
  (:acceleration_mode
   (&optional __acceleration_mode)
   (if __acceleration_mode (setq _acceleration_mode __acceleration_mode)) _acceleration_mode)
  (:acceleration
   (&optional __acceleration)
   (if __acceleration (setq _acceleration __acceleration)) _acceleration)
  (:gear_mode
   (&optional __gear_mode)
   (if __gear_mode (setq _gear_mode __gear_mode)) _gear_mode)
  (:gear
   (&rest __gear)
   (if (keywordp (car __gear))
       (send* _gear __gear)
     (progn
       (if __gear (setq _gear (car __gear)))
       _gear)))
  (:turn_light_status
   (&optional __turn_light_status)
   (if __turn_light_status (setq _turn_light_status __turn_light_status)) _turn_light_status)
  (:door_status
   (&optional __door_status)
   (if __door_status (setq _door_status __door_status)) _door_status)
  (:wiper_status
   (&optional __wiper_status)
   (if __wiper_status (setq _wiper_status __wiper_status)) _wiper_status)
  (:horn_status
   (&optional __horn_status)
   (if __horn_status (setq _horn_status __horn_status)) _horn_status)
  (:light_status
   (&optional __light_status)
   (if __light_status (setq _light_status __light_status)) _light_status)
  (:dump_energy_status
   (&optional __dump_energy_status)
   (if __dump_energy_status (setq _dump_energy_status __dump_energy_status)) _dump_energy_status)
  (:auto_driver_status
   (&optional __auto_driver_status)
   (if __auto_driver_status (setq _auto_driver_status __auto_driver_status)) _auto_driver_status)
  (:vehicle_error_status
   (&optional __vehicle_error_status)
   (if __vehicle_error_status (setq _vehicle_error_status __vehicle_error_status)) _vehicle_error_status)
  (:emergency_stop_status
   (&optional __emergency_stop_status)
   (if __emergency_stop_status (setq _emergency_stop_status __emergency_stop_status)) _emergency_stop_status)
  (:brake_air_pressure_0
   (&optional __brake_air_pressure_0)
   (if __brake_air_pressure_0 (setq _brake_air_pressure_0 __brake_air_pressure_0)) _brake_air_pressure_0)
  (:brake_air_pressure_1
   (&optional __brake_air_pressure_1)
   (if __brake_air_pressure_1 (setq _brake_air_pressure_1 __brake_air_pressure_1)) _brake_air_pressure_1)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _vehicle_speed
    8
    ;; float64 _odometer
    8
    ;; float64[] _wheel_speed
    (* 8    (length _wheel_speed)) 4
    ;; float64[] _wheel_odometer
    (* 8    (length _wheel_odometer)) 4
    ;; float64 _wheel_angle_left
    8
    ;; float64 _wheel_angle_right
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _gx
    8
    ;; float64 _gy
    8
    ;; uint8 _steering_mode
    1
    ;; float64 _steering_angle
    8
    ;; uint8 _throttle_mode
    1
    ;; float64 _throttle
    8
    ;; uint8 _brake_mode
    1
    ;; float64 _brake
    8
    ;; uint8 _acceleration_mode
    1
    ;; float64 _acceleration
    8
    ;; uint8 _gear_mode
    1
    ;; pncc_msgs/Gear _gear
    (send _gear :serialization-length)
    ;; uint8 _turn_light_status
    1
    ;; uint8 _door_status
    1
    ;; uint8 _wiper_status
    1
    ;; uint8 _horn_status
    1
    ;; uint8 _light_status
    1
    ;; uint8 _dump_energy_status
    1
    ;; uint8 _auto_driver_status
    1
    ;; uint16 _vehicle_error_status
    2
    ;; uint8 _emergency_stop_status
    1
    ;; float64 _brake_air_pressure_0
    8
    ;; float64 _brake_air_pressure_1
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _vehicle_speed
       (sys::poke _vehicle_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _odometer
       (sys::poke _odometer (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _wheel_speed
     (write-long (length _wheel_speed) s)
     (dotimes (i (length _wheel_speed))
       (sys::poke (elt _wheel_speed i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _wheel_odometer
     (write-long (length _wheel_odometer) s)
     (dotimes (i (length _wheel_odometer))
       (sys::poke (elt _wheel_odometer i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _wheel_angle_left
       (sys::poke _wheel_angle_left (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wheel_angle_right
       (sys::poke _wheel_angle_right (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gx
       (sys::poke _gx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gy
       (sys::poke _gy (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _steering_mode
       (write-byte _steering_mode s)
     ;; float64 _steering_angle
       (sys::poke _steering_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _throttle_mode
       (write-byte _throttle_mode s)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _brake_mode
       (write-byte _brake_mode s)
     ;; float64 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _acceleration_mode
       (write-byte _acceleration_mode s)
     ;; float64 _acceleration
       (sys::poke _acceleration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _gear_mode
       (write-byte _gear_mode s)
     ;; pncc_msgs/Gear _gear
       (send _gear :serialize s)
     ;; uint8 _turn_light_status
       (write-byte _turn_light_status s)
     ;; uint8 _door_status
       (write-byte _door_status s)
     ;; uint8 _wiper_status
       (write-byte _wiper_status s)
     ;; uint8 _horn_status
       (write-byte _horn_status s)
     ;; uint8 _light_status
       (write-byte _light_status s)
     ;; uint8 _dump_energy_status
       (write-byte _dump_energy_status s)
     ;; uint8 _auto_driver_status
       (write-byte _auto_driver_status s)
     ;; uint16 _vehicle_error_status
       (write-word _vehicle_error_status s)
     ;; uint8 _emergency_stop_status
       (write-byte _emergency_stop_status s)
     ;; float64 _brake_air_pressure_0
       (sys::poke _brake_air_pressure_0 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake_air_pressure_1
       (sys::poke _brake_air_pressure_1 (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _vehicle_speed
     (setq _vehicle_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _odometer
     (setq _odometer (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _wheel_speed
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_speed (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_speed i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _wheel_odometer
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _wheel_odometer (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _wheel_odometer i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _wheel_angle_left
     (setq _wheel_angle_left (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wheel_angle_right
     (setq _wheel_angle_right (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gx
     (setq _gx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gy
     (setq _gy (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _steering_mode
     (setq _steering_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _steering_angle
     (setq _steering_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _throttle_mode
     (setq _throttle_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _brake_mode
     (setq _brake_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _brake
     (setq _brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _acceleration_mode
     (setq _acceleration_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _acceleration
     (setq _acceleration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _gear_mode
     (setq _gear_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; pncc_msgs/Gear _gear
     (send _gear :deserialize buf ptr-) (incf ptr- (send _gear :serialization-length))
   ;; uint8 _turn_light_status
     (setq _turn_light_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _door_status
     (setq _door_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wiper_status
     (setq _wiper_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _horn_status
     (setq _horn_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _light_status
     (setq _light_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dump_energy_status
     (setq _dump_energy_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _auto_driver_status
     (setq _auto_driver_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _vehicle_error_status
     (setq _vehicle_error_status (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _emergency_stop_status
     (setq _emergency_stop_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _brake_air_pressure_0
     (setq _brake_air_pressure_0 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake_air_pressure_1
     (setq _brake_air_pressure_1 (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pncc_msgs::VehicleInfo :md5sum-) "5250ff1105cef33cd8779a4c67c998f2")
(setf (get pncc_msgs::VehicleInfo :datatype-) "pncc_msgs/VehicleInfo")
(setf (get pncc_msgs::VehicleInfo :definition-)
      "uint8 MODE_MANUAL = 70
uint8 MODE_AUTO = 71
uint8 MODE_INTERVENED = 72

Header header

float64 vehicle_speed    # m/s
float64 odometer         # m

float64[] wheel_speed    # m/s, start from FL, clockwise.
float64[] wheel_odometer # m, start from FL, clockwise.

float64 wheel_angle_left # degree
float64 wheel_angle_right# degree

float64 yaw_rate         # rad/s
float64 gx               # m/s2
float64 gy               # m/s2

uint8 steering_mode
float64 steering_angle   # degree

uint8 throttle_mode
float64 throttle         # 0.0 ~ 1.0; -1.0 for unavailable.

uint8 brake_mode
float64 brake            # 0.0 ~ 1.0; -1.0 for unavailable.

uint8 acceleration_mode
float64 acceleration     # m/s2

uint8 gear_mode
Gear gear

uint8 turn_light_status
uint8 door_status
uint8 wiper_status
uint8 horn_status
uint8 light_status
uint8 dump_energy_status

uint8 auto_driver_status           #0:auto_driver          1:human intervention 2:udp lost 3:can lost 5:cdc lost
uint16 vehicle_error_status        #contain eight status, each status takes 2 bits          steering_error/gear_error/throttle_error/brake_error/vehicle_error

uint8 emergency_stop_status        #0:normal 1:stop_status

float64 brake_air_pressure_0 # air pressure
float64 brake_air_pressure_1

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



(provide :pncc_msgs/VehicleInfo "5250ff1105cef33cd8779a4c67c998f2")


