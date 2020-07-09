;; Auto-generated. Do not edit!


(when (boundp 'gnss_msgs::GnssInfo)
  (if (not (find-package "GNSS_MSGS"))
    (make-package "GNSS_MSGS"))
  (shadow 'GnssInfo (find-package "GNSS_MSGS")))
(unless (find-package "GNSS_MSGS::GNSSINFO")
  (make-package "GNSS_MSGS::GNSSINFO"))

(in-package "ROS")
;;//! \htmlinclude GnssInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass gnss_msgs::GnssInfo
  :super ros::object
  :slots (_header _gnss_velocity _gnss_orientation _gnss_position _utm_east _utm_north _latitude_std _longitude_std _altitude_std _north_velocity_std _east_velocity_std _up_velocity_std _roll_std _pitch_std _yaw_std _gps_status _sate_num _year _month _day _hour _minuter _second ))

(defmethod gnss_msgs::GnssInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gnss_velocity __gnss_velocity) (instance geometry_msgs::Vector3 :init))
    ((:gnss_orientation __gnss_orientation) (instance geometry_msgs::Vector3 :init))
    ((:gnss_position __gnss_position) (instance sensor_msgs::NavSatFix :init))
    ((:utm_east __utm_east) 0.0)
    ((:utm_north __utm_north) 0.0)
    ((:latitude_std __latitude_std) 0.0)
    ((:longitude_std __longitude_std) 0.0)
    ((:altitude_std __altitude_std) 0.0)
    ((:north_velocity_std __north_velocity_std) 0.0)
    ((:east_velocity_std __east_velocity_std) 0.0)
    ((:up_velocity_std __up_velocity_std) 0.0)
    ((:roll_std __roll_std) 0.0)
    ((:pitch_std __pitch_std) 0.0)
    ((:yaw_std __yaw_std) 0.0)
    ((:gps_status __gps_status) 0)
    ((:sate_num __sate_num) 0)
    ((:year __year) 0)
    ((:month __month) 0)
    ((:day __day) 0)
    ((:hour __hour) 0)
    ((:minuter __minuter) 0)
    ((:second __second) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gnss_velocity __gnss_velocity)
   (setq _gnss_orientation __gnss_orientation)
   (setq _gnss_position __gnss_position)
   (setq _utm_east (float __utm_east))
   (setq _utm_north (float __utm_north))
   (setq _latitude_std (float __latitude_std))
   (setq _longitude_std (float __longitude_std))
   (setq _altitude_std (float __altitude_std))
   (setq _north_velocity_std (float __north_velocity_std))
   (setq _east_velocity_std (float __east_velocity_std))
   (setq _up_velocity_std (float __up_velocity_std))
   (setq _roll_std (float __roll_std))
   (setq _pitch_std (float __pitch_std))
   (setq _yaw_std (float __yaw_std))
   (setq _gps_status (round __gps_status))
   (setq _sate_num (round __sate_num))
   (setq _year (round __year))
   (setq _month (round __month))
   (setq _day (round __day))
   (setq _hour (round __hour))
   (setq _minuter (round __minuter))
   (setq _second (float __second))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gnss_velocity
   (&rest __gnss_velocity)
   (if (keywordp (car __gnss_velocity))
       (send* _gnss_velocity __gnss_velocity)
     (progn
       (if __gnss_velocity (setq _gnss_velocity (car __gnss_velocity)))
       _gnss_velocity)))
  (:gnss_orientation
   (&rest __gnss_orientation)
   (if (keywordp (car __gnss_orientation))
       (send* _gnss_orientation __gnss_orientation)
     (progn
       (if __gnss_orientation (setq _gnss_orientation (car __gnss_orientation)))
       _gnss_orientation)))
  (:gnss_position
   (&rest __gnss_position)
   (if (keywordp (car __gnss_position))
       (send* _gnss_position __gnss_position)
     (progn
       (if __gnss_position (setq _gnss_position (car __gnss_position)))
       _gnss_position)))
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
  (:north_velocity_std
   (&optional __north_velocity_std)
   (if __north_velocity_std (setq _north_velocity_std __north_velocity_std)) _north_velocity_std)
  (:east_velocity_std
   (&optional __east_velocity_std)
   (if __east_velocity_std (setq _east_velocity_std __east_velocity_std)) _east_velocity_std)
  (:up_velocity_std
   (&optional __up_velocity_std)
   (if __up_velocity_std (setq _up_velocity_std __up_velocity_std)) _up_velocity_std)
  (:roll_std
   (&optional __roll_std)
   (if __roll_std (setq _roll_std __roll_std)) _roll_std)
  (:pitch_std
   (&optional __pitch_std)
   (if __pitch_std (setq _pitch_std __pitch_std)) _pitch_std)
  (:yaw_std
   (&optional __yaw_std)
   (if __yaw_std (setq _yaw_std __yaw_std)) _yaw_std)
  (:gps_status
   (&optional __gps_status)
   (if __gps_status (setq _gps_status __gps_status)) _gps_status)
  (:sate_num
   (&optional __sate_num)
   (if __sate_num (setq _sate_num __sate_num)) _sate_num)
  (:year
   (&optional __year)
   (if __year (setq _year __year)) _year)
  (:month
   (&optional __month)
   (if __month (setq _month __month)) _month)
  (:day
   (&optional __day)
   (if __day (setq _day __day)) _day)
  (:hour
   (&optional __hour)
   (if __hour (setq _hour __hour)) _hour)
  (:minuter
   (&optional __minuter)
   (if __minuter (setq _minuter __minuter)) _minuter)
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Vector3 _gnss_velocity
    (send _gnss_velocity :serialization-length)
    ;; geometry_msgs/Vector3 _gnss_orientation
    (send _gnss_orientation :serialization-length)
    ;; sensor_msgs/NavSatFix _gnss_position
    (send _gnss_position :serialization-length)
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
    ;; float32 _north_velocity_std
    4
    ;; float32 _east_velocity_std
    4
    ;; float32 _up_velocity_std
    4
    ;; float32 _roll_std
    4
    ;; float32 _pitch_std
    4
    ;; float32 _yaw_std
    4
    ;; uint8 _gps_status
    1
    ;; uint8 _sate_num
    1
    ;; uint16 _year
    2
    ;; uint8 _month
    1
    ;; uint8 _day
    1
    ;; uint8 _hour
    1
    ;; uint8 _minuter
    1
    ;; float32 _second
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Vector3 _gnss_velocity
       (send _gnss_velocity :serialize s)
     ;; geometry_msgs/Vector3 _gnss_orientation
       (send _gnss_orientation :serialize s)
     ;; sensor_msgs/NavSatFix _gnss_position
       (send _gnss_position :serialize s)
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
     ;; float32 _north_velocity_std
       (sys::poke _north_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _east_velocity_std
       (sys::poke _east_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _up_velocity_std
       (sys::poke _up_velocity_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _roll_std
       (sys::poke _roll_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _pitch_std
       (sys::poke _pitch_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _yaw_std
       (sys::poke _yaw_std (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _gps_status
       (write-byte _gps_status s)
     ;; uint8 _sate_num
       (write-byte _sate_num s)
     ;; uint16 _year
       (write-word _year s)
     ;; uint8 _month
       (write-byte _month s)
     ;; uint8 _day
       (write-byte _day s)
     ;; uint8 _hour
       (write-byte _hour s)
     ;; uint8 _minuter
       (write-byte _minuter s)
     ;; float32 _second
       (sys::poke _second (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Vector3 _gnss_velocity
     (send _gnss_velocity :deserialize buf ptr-) (incf ptr- (send _gnss_velocity :serialization-length))
   ;; geometry_msgs/Vector3 _gnss_orientation
     (send _gnss_orientation :deserialize buf ptr-) (incf ptr- (send _gnss_orientation :serialization-length))
   ;; sensor_msgs/NavSatFix _gnss_position
     (send _gnss_position :deserialize buf ptr-) (incf ptr- (send _gnss_position :serialization-length))
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
   ;; float32 _north_velocity_std
     (setq _north_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _east_velocity_std
     (setq _east_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _up_velocity_std
     (setq _up_velocity_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _roll_std
     (setq _roll_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _pitch_std
     (setq _pitch_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _yaw_std
     (setq _yaw_std (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _gps_status
     (setq _gps_status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _sate_num
     (setq _sate_num (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _year
     (setq _year (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _month
     (setq _month (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _day
     (setq _day (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _hour
     (setq _hour (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _minuter
     (setq _minuter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _second
     (setq _second (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get gnss_msgs::GnssInfo :md5sum-) "29d5c65ea6c74ae8feb75899be012a37")
(setf (get gnss_msgs::GnssInfo :datatype-) "gnss_msgs/GnssInfo")
(setf (get gnss_msgs::GnssInfo :definition-)
      "Header header

geometry_msgs/Vector3 gnss_velocity
geometry_msgs/Vector3 gnss_orientation
sensor_msgs/NavSatFix gnss_position

float64 utm_east
float64 utm_north

float32 latitude_std
float32 longitude_std
float32 altitude_std

float32 north_velocity_std
float32 east_velocity_std
float32 up_velocity_std

float32 roll_std
float32 pitch_std
float32 yaw_std

uint8 gps_status
uint8 sate_num

# utc time
uint16 year
uint8 month
uint8 day
uint8 hour
uint8 minuter
float32 second

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
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: sensor_msgs/NavSatFix
# Navigation Satellite fix for any Global Navigation Satellite System
#
# Specified using the WGS 84 reference ellipsoid

# header.stamp specifies the ROS time for this measurement (the
#        corresponding satellite time may be reported using the
#        sensor_msgs/TimeReference message).
#
# header.frame_id is the frame of reference reported by the satellite
#        receiver, usually the location of the antenna.  This is a
#        Euclidean frame relative to the vehicle, not a reference
#        ellipsoid.
Header header

# satellite fix status information
NavSatStatus status

# Latitude [degrees]. Positive is north of equator; negative is south.
float64 latitude

# Longitude [degrees]. Positive is east of prime meridian; negative is west.
float64 longitude

# Altitude [m]. Positive is above the WGS 84 ellipsoid
# (quiet NaN if no altitude is available).
float64 altitude

# Position covariance [m^2] defined relative to a tangential plane
# through the reported position. The components are East, North, and
# Up (ENU), in row-major order.
#
# Beware: this coordinate system exhibits singularities at the poles.

float64[9] position_covariance

# If the covariance of the fix is known, fill it in completely. If the
# GPS receiver provides the variance of each measurement, put them
# along the diagonal. If only Dilution of Precision is available,
# estimate an approximate covariance from that.

uint8 COVARIANCE_TYPE_UNKNOWN = 0
uint8 COVARIANCE_TYPE_APPROXIMATED = 1
uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2
uint8 COVARIANCE_TYPE_KNOWN = 3

uint8 position_covariance_type

================================================================================
MSG: sensor_msgs/NavSatStatus
# Navigation Satellite fix status for any Global Navigation Satellite System

# Whether to output an augmented fix is determined by both the fix
# type and the last time differential corrections were received.  A
# fix is valid when status >= STATUS_FIX.

int8 STATUS_NO_FIX =  -1        # unable to fix position
int8 STATUS_FIX =      0        # unaugmented fix
int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation
int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation

int8 status

# Bits defining which Global Navigation Satellite System signals were
# used by the receiver.

uint16 SERVICE_GPS =     1
uint16 SERVICE_GLONASS = 2
uint16 SERVICE_COMPASS = 4      # includes BeiDou.
uint16 SERVICE_GALILEO = 8

uint16 service

")



(provide :gnss_msgs/GnssInfo "29d5c65ea6c74ae8feb75899be012a37")


