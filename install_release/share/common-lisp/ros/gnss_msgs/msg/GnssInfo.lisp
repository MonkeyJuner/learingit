; Auto-generated. Do not edit!


(cl:in-package gnss_msgs-msg)


;//! \htmlinclude GnssInfo.msg.html

(cl:defclass <GnssInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (gnss_velocity
    :reader gnss_velocity
    :initarg :gnss_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gnss_orientation
    :reader gnss_orientation
    :initarg :gnss_orientation
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gnss_position
    :reader gnss_position
    :initarg :gnss_position
    :type sensor_msgs-msg:NavSatFix
    :initform (cl:make-instance 'sensor_msgs-msg:NavSatFix))
   (utm_east
    :reader utm_east
    :initarg :utm_east
    :type cl:float
    :initform 0.0)
   (utm_north
    :reader utm_north
    :initarg :utm_north
    :type cl:float
    :initform 0.0)
   (latitude_std
    :reader latitude_std
    :initarg :latitude_std
    :type cl:float
    :initform 0.0)
   (longitude_std
    :reader longitude_std
    :initarg :longitude_std
    :type cl:float
    :initform 0.0)
   (altitude_std
    :reader altitude_std
    :initarg :altitude_std
    :type cl:float
    :initform 0.0)
   (north_velocity_std
    :reader north_velocity_std
    :initarg :north_velocity_std
    :type cl:float
    :initform 0.0)
   (east_velocity_std
    :reader east_velocity_std
    :initarg :east_velocity_std
    :type cl:float
    :initform 0.0)
   (up_velocity_std
    :reader up_velocity_std
    :initarg :up_velocity_std
    :type cl:float
    :initform 0.0)
   (roll_std
    :reader roll_std
    :initarg :roll_std
    :type cl:float
    :initform 0.0)
   (pitch_std
    :reader pitch_std
    :initarg :pitch_std
    :type cl:float
    :initform 0.0)
   (yaw_std
    :reader yaw_std
    :initarg :yaw_std
    :type cl:float
    :initform 0.0)
   (gps_status
    :reader gps_status
    :initarg :gps_status
    :type cl:fixnum
    :initform 0)
   (sate_num
    :reader sate_num
    :initarg :sate_num
    :type cl:fixnum
    :initform 0)
   (year
    :reader year
    :initarg :year
    :type cl:fixnum
    :initform 0)
   (month
    :reader month
    :initarg :month
    :type cl:fixnum
    :initform 0)
   (day
    :reader day
    :initarg :day
    :type cl:fixnum
    :initform 0)
   (hour
    :reader hour
    :initarg :hour
    :type cl:fixnum
    :initform 0)
   (minuter
    :reader minuter
    :initarg :minuter
    :type cl:fixnum
    :initform 0)
   (second
    :reader second
    :initarg :second
    :type cl:float
    :initform 0.0))
)

(cl:defclass GnssInfo (<GnssInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GnssInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GnssInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gnss_msgs-msg:<GnssInfo> is deprecated: use gnss_msgs-msg:GnssInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:header-val is deprecated.  Use gnss_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'gnss_velocity-val :lambda-list '(m))
(cl:defmethod gnss_velocity-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:gnss_velocity-val is deprecated.  Use gnss_msgs-msg:gnss_velocity instead.")
  (gnss_velocity m))

(cl:ensure-generic-function 'gnss_orientation-val :lambda-list '(m))
(cl:defmethod gnss_orientation-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:gnss_orientation-val is deprecated.  Use gnss_msgs-msg:gnss_orientation instead.")
  (gnss_orientation m))

(cl:ensure-generic-function 'gnss_position-val :lambda-list '(m))
(cl:defmethod gnss_position-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:gnss_position-val is deprecated.  Use gnss_msgs-msg:gnss_position instead.")
  (gnss_position m))

(cl:ensure-generic-function 'utm_east-val :lambda-list '(m))
(cl:defmethod utm_east-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:utm_east-val is deprecated.  Use gnss_msgs-msg:utm_east instead.")
  (utm_east m))

(cl:ensure-generic-function 'utm_north-val :lambda-list '(m))
(cl:defmethod utm_north-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:utm_north-val is deprecated.  Use gnss_msgs-msg:utm_north instead.")
  (utm_north m))

(cl:ensure-generic-function 'latitude_std-val :lambda-list '(m))
(cl:defmethod latitude_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:latitude_std-val is deprecated.  Use gnss_msgs-msg:latitude_std instead.")
  (latitude_std m))

(cl:ensure-generic-function 'longitude_std-val :lambda-list '(m))
(cl:defmethod longitude_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:longitude_std-val is deprecated.  Use gnss_msgs-msg:longitude_std instead.")
  (longitude_std m))

(cl:ensure-generic-function 'altitude_std-val :lambda-list '(m))
(cl:defmethod altitude_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:altitude_std-val is deprecated.  Use gnss_msgs-msg:altitude_std instead.")
  (altitude_std m))

(cl:ensure-generic-function 'north_velocity_std-val :lambda-list '(m))
(cl:defmethod north_velocity_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:north_velocity_std-val is deprecated.  Use gnss_msgs-msg:north_velocity_std instead.")
  (north_velocity_std m))

(cl:ensure-generic-function 'east_velocity_std-val :lambda-list '(m))
(cl:defmethod east_velocity_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:east_velocity_std-val is deprecated.  Use gnss_msgs-msg:east_velocity_std instead.")
  (east_velocity_std m))

(cl:ensure-generic-function 'up_velocity_std-val :lambda-list '(m))
(cl:defmethod up_velocity_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:up_velocity_std-val is deprecated.  Use gnss_msgs-msg:up_velocity_std instead.")
  (up_velocity_std m))

(cl:ensure-generic-function 'roll_std-val :lambda-list '(m))
(cl:defmethod roll_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:roll_std-val is deprecated.  Use gnss_msgs-msg:roll_std instead.")
  (roll_std m))

(cl:ensure-generic-function 'pitch_std-val :lambda-list '(m))
(cl:defmethod pitch_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:pitch_std-val is deprecated.  Use gnss_msgs-msg:pitch_std instead.")
  (pitch_std m))

(cl:ensure-generic-function 'yaw_std-val :lambda-list '(m))
(cl:defmethod yaw_std-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:yaw_std-val is deprecated.  Use gnss_msgs-msg:yaw_std instead.")
  (yaw_std m))

(cl:ensure-generic-function 'gps_status-val :lambda-list '(m))
(cl:defmethod gps_status-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:gps_status-val is deprecated.  Use gnss_msgs-msg:gps_status instead.")
  (gps_status m))

(cl:ensure-generic-function 'sate_num-val :lambda-list '(m))
(cl:defmethod sate_num-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:sate_num-val is deprecated.  Use gnss_msgs-msg:sate_num instead.")
  (sate_num m))

(cl:ensure-generic-function 'year-val :lambda-list '(m))
(cl:defmethod year-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:year-val is deprecated.  Use gnss_msgs-msg:year instead.")
  (year m))

(cl:ensure-generic-function 'month-val :lambda-list '(m))
(cl:defmethod month-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:month-val is deprecated.  Use gnss_msgs-msg:month instead.")
  (month m))

(cl:ensure-generic-function 'day-val :lambda-list '(m))
(cl:defmethod day-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:day-val is deprecated.  Use gnss_msgs-msg:day instead.")
  (day m))

(cl:ensure-generic-function 'hour-val :lambda-list '(m))
(cl:defmethod hour-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:hour-val is deprecated.  Use gnss_msgs-msg:hour instead.")
  (hour m))

(cl:ensure-generic-function 'minuter-val :lambda-list '(m))
(cl:defmethod minuter-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:minuter-val is deprecated.  Use gnss_msgs-msg:minuter instead.")
  (minuter m))

(cl:ensure-generic-function 'second-val :lambda-list '(m))
(cl:defmethod second-val ((m <GnssInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gnss_msgs-msg:second-val is deprecated.  Use gnss_msgs-msg:second instead.")
  (second m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GnssInfo>) ostream)
  "Serializes a message object of type '<GnssInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gnss_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gnss_orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gnss_position) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utm_east))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'utm_north))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'latitude_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'longitude_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'north_velocity_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'east_velocity_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'up_velocity_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw_std))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sate_num)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minuter)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GnssInfo>) istream)
  "Deserializes a message object of type '<GnssInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gnss_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gnss_orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gnss_position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'utm_east) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'utm_north) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'latitude_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'north_velocity_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'east_velocity_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'up_velocity_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_std) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gps_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sate_num)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'year)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'month)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'day)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'hour)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'minuter)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'second) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GnssInfo>)))
  "Returns string type for a message object of type '<GnssInfo>"
  "gnss_msgs/GnssInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GnssInfo)))
  "Returns string type for a message object of type 'GnssInfo"
  "gnss_msgs/GnssInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GnssInfo>)))
  "Returns md5sum for a message object of type '<GnssInfo>"
  "29d5c65ea6c74ae8feb75899be012a37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GnssInfo)))
  "Returns md5sum for a message object of type 'GnssInfo"
  "29d5c65ea6c74ae8feb75899be012a37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GnssInfo>)))
  "Returns full string definition for message of type '<GnssInfo>"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Vector3 gnss_velocity~%geometry_msgs/Vector3 gnss_orientation~%sensor_msgs/NavSatFix gnss_position~%~%float64 utm_east~%float64 utm_north~%~%float32 latitude_std~%float32 longitude_std~%float32 altitude_std~%~%float32 north_velocity_std~%float32 east_velocity_std~%float32 up_velocity_std~%~%float32 roll_std~%float32 pitch_std~%float32 yaw_std~%~%uint8 gps_status~%uint8 sate_num~%~%# utc time~%uint16 year~%uint8 month~%uint8 day~%uint8 hour~%uint8 minuter~%float32 second~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GnssInfo)))
  "Returns full string definition for message of type 'GnssInfo"
  (cl:format cl:nil "Header header~%~%geometry_msgs/Vector3 gnss_velocity~%geometry_msgs/Vector3 gnss_orientation~%sensor_msgs/NavSatFix gnss_position~%~%float64 utm_east~%float64 utm_north~%~%float32 latitude_std~%float32 longitude_std~%float32 altitude_std~%~%float32 north_velocity_std~%float32 east_velocity_std~%float32 up_velocity_std~%~%float32 roll_std~%float32 pitch_std~%float32 yaw_std~%~%uint8 gps_status~%uint8 sate_num~%~%# utc time~%uint16 year~%uint8 month~%uint8 day~%uint8 hour~%uint8 minuter~%float32 second~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: sensor_msgs/NavSatFix~%# Navigation Satellite fix for any Global Navigation Satellite System~%#~%# Specified using the WGS 84 reference ellipsoid~%~%# header.stamp specifies the ROS time for this measurement (the~%#        corresponding satellite time may be reported using the~%#        sensor_msgs/TimeReference message).~%#~%# header.frame_id is the frame of reference reported by the satellite~%#        receiver, usually the location of the antenna.  This is a~%#        Euclidean frame relative to the vehicle, not a reference~%#        ellipsoid.~%Header header~%~%# satellite fix status information~%NavSatStatus status~%~%# Latitude [degrees]. Positive is north of equator; negative is south.~%float64 latitude~%~%# Longitude [degrees]. Positive is east of prime meridian; negative is west.~%float64 longitude~%~%# Altitude [m]. Positive is above the WGS 84 ellipsoid~%# (quiet NaN if no altitude is available).~%float64 altitude~%~%# Position covariance [m^2] defined relative to a tangential plane~%# through the reported position. The components are East, North, and~%# Up (ENU), in row-major order.~%#~%# Beware: this coordinate system exhibits singularities at the poles.~%~%float64[9] position_covariance~%~%# If the covariance of the fix is known, fill it in completely. If the~%# GPS receiver provides the variance of each measurement, put them~%# along the diagonal. If only Dilution of Precision is available,~%# estimate an approximate covariance from that.~%~%uint8 COVARIANCE_TYPE_UNKNOWN = 0~%uint8 COVARIANCE_TYPE_APPROXIMATED = 1~%uint8 COVARIANCE_TYPE_DIAGONAL_KNOWN = 2~%uint8 COVARIANCE_TYPE_KNOWN = 3~%~%uint8 position_covariance_type~%~%================================================================================~%MSG: sensor_msgs/NavSatStatus~%# Navigation Satellite fix status for any Global Navigation Satellite System~%~%# Whether to output an augmented fix is determined by both the fix~%# type and the last time differential corrections were received.  A~%# fix is valid when status >= STATUS_FIX.~%~%int8 STATUS_NO_FIX =  -1        # unable to fix position~%int8 STATUS_FIX =      0        # unaugmented fix~%int8 STATUS_SBAS_FIX = 1        # with satellite-based augmentation~%int8 STATUS_GBAS_FIX = 2        # with ground-based augmentation~%~%int8 status~%~%# Bits defining which Global Navigation Satellite System signals were~%# used by the receiver.~%~%uint16 SERVICE_GPS =     1~%uint16 SERVICE_GLONASS = 2~%uint16 SERVICE_COMPASS = 4      # includes BeiDou.~%uint16 SERVICE_GALILEO = 8~%~%uint16 service~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GnssInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gnss_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gnss_orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gnss_position))
     8
     8
     4
     4
     4
     4
     4
     4
     4
     4
     4
     1
     1
     2
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GnssInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'GnssInfo
    (cl:cons ':header (header msg))
    (cl:cons ':gnss_velocity (gnss_velocity msg))
    (cl:cons ':gnss_orientation (gnss_orientation msg))
    (cl:cons ':gnss_position (gnss_position msg))
    (cl:cons ':utm_east (utm_east msg))
    (cl:cons ':utm_north (utm_north msg))
    (cl:cons ':latitude_std (latitude_std msg))
    (cl:cons ':longitude_std (longitude_std msg))
    (cl:cons ':altitude_std (altitude_std msg))
    (cl:cons ':north_velocity_std (north_velocity_std msg))
    (cl:cons ':east_velocity_std (east_velocity_std msg))
    (cl:cons ':up_velocity_std (up_velocity_std msg))
    (cl:cons ':roll_std (roll_std msg))
    (cl:cons ':pitch_std (pitch_std msg))
    (cl:cons ':yaw_std (yaw_std msg))
    (cl:cons ':gps_status (gps_status msg))
    (cl:cons ':sate_num (sate_num msg))
    (cl:cons ':year (year msg))
    (cl:cons ':month (month msg))
    (cl:cons ':day (day msg))
    (cl:cons ':hour (hour msg))
    (cl:cons ':minuter (minuter msg))
    (cl:cons ':second (second msg))
))
