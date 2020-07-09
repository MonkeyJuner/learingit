; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude VehicleLoad.msg.html

(cl:defclass <VehicleLoad> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (load_type
    :reader load_type
    :initarg :load_type
    :type cl:fixnum
    :initform 0)
   (weight
    :reader weight
    :initarg :weight
    :type cl:float
    :initform 0.0)
   (size
    :reader size
    :initarg :size
    :type cl:integer
    :initform 0)
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0))
)

(cl:defclass VehicleLoad (<VehicleLoad>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleLoad>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleLoad)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<VehicleLoad> is deprecated: use tos_msgs-msg:VehicleLoad instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'load_type-val :lambda-list '(m))
(cl:defmethod load_type-val ((m <VehicleLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:load_type-val is deprecated.  Use tos_msgs-msg:load_type instead.")
  (load_type m))

(cl:ensure-generic-function 'weight-val :lambda-list '(m))
(cl:defmethod weight-val ((m <VehicleLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:weight-val is deprecated.  Use tos_msgs-msg:weight instead.")
  (weight m))

(cl:ensure-generic-function 'size-val :lambda-list '(m))
(cl:defmethod size-val ((m <VehicleLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:size-val is deprecated.  Use tos_msgs-msg:size instead.")
  (size m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <VehicleLoad>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleLoad>)))
    "Constants for message type '<VehicleLoad>"
  '((:LOAD_EMPTY . 0)
    (:LOAD_LADEN . 1)
    (:LOAD_UNKNOWN . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleLoad)))
    "Constants for message type 'VehicleLoad"
  '((:LOAD_EMPTY . 0)
    (:LOAD_LADEN . 1)
    (:LOAD_UNKNOWN . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleLoad>) ostream)
  "Serializes a message object of type '<VehicleLoad>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'weight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleLoad>) istream)
  "Deserializes a message object of type '<VehicleLoad>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'load_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'weight) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleLoad>)))
  "Returns string type for a message object of type '<VehicleLoad>"
  "tos_msgs/VehicleLoad")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleLoad)))
  "Returns string type for a message object of type 'VehicleLoad"
  "tos_msgs/VehicleLoad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleLoad>)))
  "Returns md5sum for a message object of type '<VehicleLoad>"
  "0b898a0b089ad602fc5aa489d1583fd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleLoad)))
  "Returns md5sum for a message object of type 'VehicleLoad"
  "0b898a0b089ad602fc5aa489d1583fd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleLoad>)))
  "Returns full string definition for message of type '<VehicleLoad>"
  (cl:format cl:nil "# LOAD TYPE~%uint8 LOAD_EMPTY = 0~%uint8 LOAD_LADEN = 1~%uint8 LOAD_UNKNOWN = 2~%~%Header header~%~%uint8 load_type~%float64 weight~%int32 size~%int32 send_packet_id~% ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleLoad)))
  "Returns full string definition for message of type 'VehicleLoad"
  (cl:format cl:nil "# LOAD TYPE~%uint8 LOAD_EMPTY = 0~%uint8 LOAD_LADEN = 1~%uint8 LOAD_UNKNOWN = 2~%~%Header header~%~%uint8 load_type~%float64 weight~%int32 size~%int32 send_packet_id~% ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleLoad>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleLoad>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleLoad
    (cl:cons ':header (header msg))
    (cl:cons ':load_type (load_type msg))
    (cl:cons ':weight (weight msg))
    (cl:cons ':size (size msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
))
