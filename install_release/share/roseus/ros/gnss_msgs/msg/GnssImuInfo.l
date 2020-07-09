;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::GnssImuInfo)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'GnssImuInfo (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::GNSSIMUINFO")
  (make-package "GNSS_MSGS::GNSSIMUINFO"))

(in-package "ROS")
;;//! \htmlinclude GnssImuInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*POSITION_TYPE_NONE*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_NONE* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_NONE* 0)
(intern "*POSITION_TYPE_FIXEDPOS*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_FIXEDPOS* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_FIXEDPOS* 1)
(intern "*POSITION_TYPE_FIXEDHEIGHT*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_FIXEDHEIGHT* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_FIXEDHEIGHT* 2)
(intern "*POSITION_TYPE_DOPPLER_VELOCITY*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_DOPPLER_VELOCITY* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_DOPPLER_VELOCITY* 8)
(intern "*POSITION_TYPE_SINGLE*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_SINGLE* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_SINGLE* 16)
(intern "*POSITION_TYPE_PSRDIFF*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_PSRDIFF* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_PSRDIFF* 17)
(intern "*POSITION_TYPE_SBAS*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_SBAS* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_SBAS* 18)
(intern "*POSITION_TYPE_PROPAGATED*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_PROPAGATED* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_PROPAGATED* 19)
(intern "*POSITION_TYPE_OMNISTAR*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_OMNISTAR* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_OMNISTAR* 20)
(intern "*POSITION_TYPE_L1_FLOAT*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_L1_FLOAT* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_L1_FLOAT* 32)
(intern "*POSITION_TYPE_IONOFREE_FLOAT*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_IONOFREE_FLOAT* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_IONOFREE_FLOAT* 33)
(intern "*POSITION_TYPE_NARROW_FLOAT*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_NARROW_FLOAT* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_NARROW_FLOAT* 34)
(intern "*POSITION_TYPE_L1_INT*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_L1_INT* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_L1_INT* 48)
(intern "*POSITION_TYPE_WIDE_INT*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_WIDE_INT* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_WIDE_INT* 49)
(intern "*POSITION_TYPE_NARROW_INT*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_NARROW_INT* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_NARROW_INT* 50)
(intern "*POSITION_TYPE_OMNISTAR_HP*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_OMNISTAR_HP* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_OMNISTAR_HP* 64)
(intern "*POSITION_TYPE_OMNISTAR_XP*" (find-package "GNSS_MSGS::GNSSIMUINFO"))
(shadow '*POSITION_TYPE_OMNISTAR_XP* (find-package "GNSS_MSGS::GNSSIMUINFO"))
(defconstant gnss_msgs::GnssImuInfo::*POSITION_TYPE_OMNISTAR_XP* 65)
(defclass gnss_msgs::GnssImuInfo
  :super ros::object
  :slots (_header _latitude _longitude _altitude _utm_east _utm_north _latitude_std _longitude_std _altitude_std _north_velocity _east_velocity _up_velocity _north_velocity_std _east_velocity_std _up_velocity_std _roll _pitch _yaw _x _y _z _w _roll_std _pitch_std _yaw_std _roll_rate _pitch_rate _yaw_rate _ax _ay _az _init_position _init_velocity _init_pitchroll _init_yaw _gps_status _gps_satellitenum _wheelspeed_status _temperature ))

(defmethod gnss_msgs::GnssImuInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:utm_east __utm_east) 0.0)
    ((:utm_north __utm_north) 0.0)
    ((:latitude_std __latitude_std) 0.0)
    ((:longitude_std __longitude_std) 0.0)
    ((:altitude_std __altitude_std) 0.0)
    ((:north_velocity __north_velocity) 0.0)
    ((:east_velocity __east_velocity) 0.0)
    ((:up_velocity __up_velocity) 0.0)
    ((:north_velocity_std __north_velocity_std) 0.0)
    ((:east_velocity_std __east_velocity_std) 0.0)
    ((:up_velocity_std __up_velocity_std) 0.0)
    ((:roll __roll) 0.0)
    ((:pitch __pitch) 0.0)
    ((:yaw __yaw) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:w __w) 0.0)
    ((:roll_std __roll_std) 0.0)
    ((:pitch_std __pitch_std) 0.0)
    ((:yaw_std __yaw_std) 0.0)
    ((:roll_rate __roll_rate) 0.0)
    ((:pitch_rate __pitch_rate) 0.0)
    ((:yaw_rate __yaw_rate) 0.0)
    ((:ax __ax) 0.0)
    ((:ay __ay) 0.0)
    ((:az __az) 0.0)
    ((:init_position __init_position) 0)
    ((:init_velocity __init_velocity) 0)
    ((:init_pitchroll __init_pitchroll) 0)
    ((:init_yaw __init_yaw) 0)
    ((:gps_status __gps_status) 0)
    ((:gps_satellitenum __gps_satellitenum) 0)
    ((:wheelspeed_status __wheelspeed_status) 0)
    ((:temperature __temperature) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _utm_east (float __utm_east))
   (setq _utm_north (float __utm_north))
   (setq _latitude_std (float __latitude_std))
   (setq _longitude_std (float __longitude_std))
   (setq _altitude_std (float __altitude_std))
   (setq _north_velocity (float __north_velocity))
   (setq _east_velocity (float __east_velocity))
   (setq _up_velocity (float __up_velocity))
   (setq _north_velocity_std (float __north_velocity_std))
   (setq _east_velocity_std (float __east_velocity_std))
   (setq _up_velocity_std (float __up_velocity_std))
   (setq _roll (float __roll))
   (setq _pitch (float __pitch))
   (setq _yaw (float __yaw))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _w (float __w))
   (setq _roll_std (float __roll_std))
   (setq _pitch_std (float __pitch_std))
   (setq _yaw_std (float __yaw_std))
   (setq _roll_rate (float __roll_rate))
   (setq _pitch_rate (float __pitch_rate))
   (setq _yaw_rate (float __yaw_rate))
   (setq _ax (float __ax))
   (setq _ay (float __ay))
   (setq _az (float __az))
   (setq _init_position (round __init_position))
   (setq _init_velocity (round __init_velocity))
   (setq _init_pitchroll (round __init_pitchroll))
   (setq _init_yaw (round __init_yaw))
   (setq _gps_status (round __gps_status))
   (setq _gps_satellitenum (round __gps_satellitenum))
   (setq _wheelspeed_status (round __wheelspeed_status))
   (setq _temperature (float __temperature))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:utm_east
   (&optional __utm_east)
   (if __utm_east (setq _utm_east __utm_east)) _utm_east)
  (:utm_north
   (&optional __utm_north)
   (if __utm_north (setq _utm_north __utm_north)) _utm_north)
  (:latitude_std
   (&optional __latitude_std)
   (if __latitude_std (setq _latitude_std __latitude_std)) _latitude_std)
  (:longitude_std
   (&optional __longitude_std)
   (if __longitude_std (setq _longitude_std __longitude_std)) _longitude_std)
  (:altitude_std
   (&optional __altitude_std)
   (if __altitude_std (setq _altitude_std __altitude_std)) _altitude_std)
  (:north_velocity
   (&optional __north_velocity)
   (if __north_velocity (setq _north_velocity __north_velocity)) _north_velocity)
  (:east_velocity
   (&optional __east_velocity)
   (if __east_velocity (setq _east_velocity __east_velocity)) _east_velocity)
  (:up_velocity
   (&optional __up_velocity)
   (if __up_velocity (setq _up_velocity __up_velocity)) _up_velocity)
  (:north_velocity_std
   (&optional __north_velocity_std)
   (if __north_velocity_std (setq _north_velocity_std __north_velocity_std)) _north_velocity_std)
  (:east_velocity_std
   (&optional __east_velocity_std)
   (if __east_velocity_std (setq _east_velocity_std __east_velocity_std)) _east_velocity_std)
  (:up_velocity_std
   (&optional __up_velocity_std)
   (if __up_velocity_std (setq _up_velocity_std __up_velocity_std)) _up_velocity_std)
  (:roll
   (&optional __roll)
   (if __roll (setq _roll __roll)) _roll)
  (:pitch
   (&optional __pitch)
   (if __pitch (setq _pitch __pitch)) _pitch)
  (:yaw
   (&optional __yaw)
   (if __yaw (setq _yaw __yaw)) _yaw)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:w
   (&optional __w)
   (if __w (setq _w __w)) _w)
  (:roll_std
   (&optional __roll_std)
   (if __roll_std (setq _roll_std __roll_std)) _roll_std)
  (:pitch_std
   (&optional __pitch_std)
   (if __pitch_std (setq _pitch_std __pitch_std)) _pitch_std)
  (:yaw_std
   (&optional __yaw_std)
   (if __yaw_std (setq _yaw_std __yaw_std)) _yaw_std)
  (:roll_rate
   (&optional __roll_rate)
   (if __roll_rate (setq _roll_rate __roll_rate)) _roll_rate)
  (:pitch_rate
   (&optional __pitch_rate)
   (if __pitch_rate (setq _pitch_rate __pitch_rate)) _pitch_rate)
  (:yaw_rate
   (&optional __yaw_rate)
   (if __yaw_rate (setq _yaw_rate __yaw_rate)) _yaw_rate)
  (:ax
   (&optional __ax)
   (if __ax (setq _ax __ax)) _ax)
  (:ay
   (&optional __ay)
   (if __ay (setq _ay __ay)) _ay)
  (:az
   (&optional __az)
   (if __az (setq _az __az)) _az)
  (:init_position
   (&optional __init_position)
   (if __init_position (setq _init_position __init_position)) _init_position)
  (:init_velocity
   (&optional __init_velocity)
   (if __init_velocity (setq _init_velocity __init_velocity)) _init_velocity)
  (:init_pitchroll
   (&optional __init_pitchroll)
   (if __init_pitchroll (setq _init_pitchroll __init_pitchroll)) _init_pitchroll)
  (:init_yaw
   (&optional __init_yaw)
   (if __init_yaw (setq _init_yaw __init_yaw)) _init_yaw)
  (:gps_status
   (&optional __gps_status)
   (if __gps_status (setq _gps_status __gps_status)) _gps_status)
  (:gps_satellitenum
   (&optional __gps_satellitenum)
   (if __gps_satellitenum (setq _gps_satellitenum __gps_satellitenum)) _gps_satellitenum)
  (:wheelspeed_status
   (&optional __wheelspeed_status)
   (if __wheelspeed_status (setq _wheelspeed_status __wheelspeed_status)) _wheelspeed_status)
  (:temperature
   (&optional __temperature)
   (if __temperature (setq _temperature __temperature)) _temperature)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _utm_east
    8
    ;; float64 _utm_north
    8
    ;; float32 _latitude_std
    4
    ;; float32 _longitude_std
    4
    ;; float32 _altitude_std
    4
    ;; float64 _north_velocity
    8
    ;; float64 _east_velocity
    8
    ;; float64 _up_velocity
    8
    ;; float32 _north_velocity_std
    4
    ;; float32 _east_velocity_std
    4
    ;; float32 _up_velocity_std
    4
    ;; float64 _roll
    8
    ;; float64 _pitch
    8
    ;; float64 _yaw
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _w
    8
    ;; float32 _roll_std
    4
    ;; float32 _pitch_std
    4
    ;; float32 _yaw_std
    4
    ;; float64 _roll_rate
    8
    ;; float64 _pitch_rate
    8
    ;; float64 _yaw_rate
    8
    ;; float64 _ax
    8
    ;; float64 _ay
    8
    ;; float64 _az
    8
    ;; uint8 _init_position
    1
    ;; uint8 _init_velocity
    1
    ;; uint8 _init_pitchroll
    1
    ;; uint8 _init_yaw
    1
    ;; int32 _gps_status
    4
    ;; int32 _gps_satellitenum
    4
    ;; int32 _wheelspeed_status
    4
    ;; float64 _temperature
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utm_east
       (sys::poke _utm_east (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _utm_north
       (sys::poke _utm_north (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _latitude_std
       (sys::poke _latitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _longitude_std
       (sys::poke _longitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _altitude_std
       (sys::poke _altitude_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _north_velocity
       (sys::poke _north_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _east_velocity
       (sys::poke _east_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _up_velocity
       (sys::poke _up_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _north_velocity_std
       (sys::poke _north_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _east_velocity_std
       (sys::poke _east_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _up_velocity_std
       (sys::poke _up_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _roll
       (sys::poke _roll (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch
       (sys::poke _pitch (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw
       (sys::poke _yaw (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _w
       (sys::poke _w (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _roll_std
       (sys::poke _roll_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_std
       (sys::poke _pitch_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_std
       (sys::poke _yaw_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _roll_rate
       (sys::poke _roll_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _pitch_rate
       (sys::poke _pitch_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _yaw_rate
       (sys::poke _yaw_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ax
       (sys::poke _ax (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ay
       (sys::poke _ay (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _az
       (sys::poke _az (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _init_position
       (write-byte _init_position s)
     ;; uint8 _init_velocity
       (write-byte _init_velocity s)
     ;; uint8 _init_pitchroll
       (write-byte _init_pitchroll s)
     ;; uint8 _init_yaw
       (write-byte _init_yaw s)
     ;; int32 _gps_status
       (write-long _gps_status s)
     ;; int32 _gps_satellitenum
       (write-long _gps_satellitenum s)
     ;; int32 _wheelspeed_status
       (write-long _wheelspeed_status s)
     ;; float64 _temperature
       (sys::poke _temperature (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utm_east
     (setq _utm_east (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _utm_north
     (setq _utm_north (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _latitude_std
     (setq _latitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _longitude_std
     (setq _longitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _altitude_std
     (setq _altitude_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _north_velocity
     (setq _north_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _east_velocity
     (setq _east_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _up_velocity
     (setq _up_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _north_velocity_std
     (setq _north_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _east_velocity_std
     (setq _east_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _up_velocity_std
     (setq _up_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _roll
     (setq _roll (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch
     (setq _pitch (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw
     (setq _yaw (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _w
     (setq _w (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _roll_std
     (setq _roll_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_std
     (setq _pitch_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_std
     (setq _yaw_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _roll_rate
     (setq _roll_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _pitch_rate
     (setq _pitch_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _yaw_rate
     (setq _yaw_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ax
     (setq _ax (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ay
     (setq _ay (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _az
     (setq _az (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _init_position
     (setq _init_position (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _init_velocity
     (setq _init_velocity (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _init_pitchroll
     (setq _init_pitchroll (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _init_yaw
     (setq _init_yaw (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _gps_status
     (setq _gps_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _gps_satellitenum
     (setq _gps_satellitenum (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _wheelspeed_status
     (setq _wheelspeed_status (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _temperature
     (setq _temperature (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get gnss_msgs::GnssImuInfo :md5sum-) "11dc712d4d164c4b214a63c633cf7ef7")
(setf (get gnss_msgs::GnssImuInfo :datatype-) "gnss_msgs/GnssImuInfo")
(setf (get gnss_msgs::GnssImuInfo :definition-)
      "int32 POSITION_TYPE_NONE = 0
int32 POSITION_TYPE_FIXEDPOS = 1
int32 POSITION_TYPE_FIXEDHEIGHT = 2
int32 POSITION_TYPE_DOPPLER_VELOCITY = 8
int32 POSITION_TYPE_SINGLE = 16
int32 POSITION_TYPE_PSRDIFF = 17
int32 POSITION_TYPE_SBAS = 18
#int32 POSITION_TYPE_WAAS = 18
int32 POSITION_TYPE_PROPAGATED = 19
int32 POSITION_TYPE_OMNISTAR = 20
int32 POSITION_TYPE_L1_FLOAT = 32
int32 POSITION_TYPE_IONOFREE_FLOAT = 33
int32 POSITION_TYPE_NARROW_FLOAT = 34
int32 POSITION_TYPE_L1_INT = 48
int32 POSITION_TYPE_WIDE_INT = 49
int32 POSITION_TYPE_NARROW_INT = 50
int32 POSITION_TYPE_OMNISTAR_HP = 64
int32 POSITION_TYPE_OMNISTAR_XP = 65
#int32 POSITION_TYPE_PPP_CONVERGING = 68
#int32 POSITION_TYPE_PPP = 69
#int32 POSITION_TYPE_OPERATIONAL = 70
#int32 POSITION_TYPE_WARNING = 71
#int32 POSITION_TYPE_OUT_OF_BOUNDS = 72

Header header

# position
float64 latitude
float64 longitude
float64 altitude

float64 utm_east
float64 utm_north

float32 latitude_std
float32 longitude_std
float32 altitude_std

# velocity
float64 north_velocity
float64 east_velocity
float64 up_velocity

float32 north_velocity_std
float32 east_velocity_std
float32 up_velocity_std

# attitude
float64 roll
float64 pitch
float64 yaw

float64 x
float64 y
float64 z
float64 w

float32 roll_std
float32 pitch_std
float32 yaw_std

#angular velocity
float64 roll_rate
float64 pitch_rate
float64 yaw_rate

#acceleration
float64 ax
float64 ay
float64 az

#INS550D status
#initialization status
uint8 init_position
uint8 init_velocity
uint8 init_pitchroll
uint8 init_yaw

#gps status
int32 gps_status
int32 gps_satellitenum

#wheel speed status
int32 wheelspeed_status

#device status
float64 temperature

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

")



(provide :gnss_msgs/GnssImuInfo "11dc712d4d164c4b214a63c633cf7ef7")


