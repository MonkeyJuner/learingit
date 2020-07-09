; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude VehicleStopAccurate.msg.html

(cl:defclass <VehicleStopAccurate> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (chid
    :reader chid
    :initarg :chid
    :type cl:string
    :initform "")
   (stop_for
    :reader stop_for
    :initarg :stop_for
    :type cl:fixnum
    :initform 0)
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0)
   (stop_tag_id
    :reader stop_tag_id
    :initarg :stop_tag_id
    :type cl:integer
    :initform 0)
   (stop_tag_type
    :reader stop_tag_type
    :initarg :stop_tag_type
    :type cl:fixnum
    :initform 0)
   (stop_offset
    :reader stop_offset
    :initarg :stop_offset
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleStopAccurate (<VehicleStopAccurate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleStopAccurate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleStopAccurate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<VehicleStopAccurate> is deprecated: use tos_msgs-msg:VehicleStopAccurate instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleStopAccurate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <VehicleStopAccurate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:task_id-val is deprecated.  Use tos_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'chid-val :lambda-list '(m))
(cl:defmethod chid-val ((m <VehicleStopAccurate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:chid-val is deprecated.  Use tos_msgs-msg:chid instead.")
  (chid m))

(cl:ensure-generic-function 'stop_for-val :lambda-list '(m))
(cl:defmethod stop_for-val ((m <VehicleStopAccurate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:stop_for-val is deprecated.  Use tos_msgs-msg:stop_for instead.")
  (stop_for m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <VehicleStopAccurate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))

(cl:ensure-generic-function 'stop_tag_id-val :lambda-list '(m))
(cl:defmethod stop_tag_id-val ((m <VehicleStopAccurate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:stop_tag_id-val is deprecated.  Use tos_msgs-msg:stop_tag_id instead.")
  (stop_tag_id m))

(cl:ensure-generic-function 'stop_tag_type-val :lambda-list '(m))
(cl:defmethod stop_tag_type-val ((m <VehicleStopAccurate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:stop_tag_type-val is deprecated.  Use tos_msgs-msg:stop_tag_type instead.")
  (stop_tag_type m))

(cl:ensure-generic-function 'stop_offset-val :lambda-list '(m))
(cl:defmethod stop_offset-val ((m <VehicleStopAccurate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:stop_offset-val is deprecated.  Use tos_msgs-msg:stop_offset instead.")
  (stop_offset m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleStopAccurate>)))
    "Constants for message type '<VehicleStopAccurate>"
  '((:STOP_UNKNOWN . 0)
    (:STOP_FOR_MAP . 1)
    (:STOP_FOR_TAG . 2)
    (:STOP_FOR_PLC . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleStopAccurate)))
    "Constants for message type 'VehicleStopAccurate"
  '((:STOP_UNKNOWN . 0)
    (:STOP_FOR_MAP . 1)
    (:STOP_FOR_TAG . 2)
    (:STOP_FOR_PLC . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleStopAccurate>) ostream)
  "Serializes a message object of type '<VehicleStopAccurate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_for)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'stop_tag_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_tag_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'stop_offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleStopAccurate>) istream)
  "Deserializes a message object of type '<VehicleStopAccurate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_for)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_tag_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_tag_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stop_offset) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleStopAccurate>)))
  "Returns string type for a message object of type '<VehicleStopAccurate>"
  "tos_msgs/VehicleStopAccurate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleStopAccurate)))
  "Returns string type for a message object of type 'VehicleStopAccurate"
  "tos_msgs/VehicleStopAccurate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleStopAccurate>)))
  "Returns md5sum for a message object of type '<VehicleStopAccurate>"
  "e35e264833827db6110049455f7aabe3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleStopAccurate)))
  "Returns md5sum for a message object of type 'VehicleStopAccurate"
  "e35e264833827db6110049455f7aabe3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleStopAccurate>)))
  "Returns full string definition for message of type '<VehicleStopAccurate>"
  (cl:format cl:nil "uint8 STOP_UNKNOWN = 0~%uint8 STOP_FOR_MAP = 1~%uint8 STOP_FOR_TAG = 2~%uint8 STOP_FOR_PLC = 3~%~%Header header~%uint32 task_id~%string chid~%uint8 stop_for~%int32 send_packet_id~%int32 stop_tag_id~%uint8 stop_tag_type~%float64 stop_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleStopAccurate)))
  "Returns full string definition for message of type 'VehicleStopAccurate"
  (cl:format cl:nil "uint8 STOP_UNKNOWN = 0~%uint8 STOP_FOR_MAP = 1~%uint8 STOP_FOR_TAG = 2~%uint8 STOP_FOR_PLC = 3~%~%Header header~%uint32 task_id~%string chid~%uint8 stop_for~%int32 send_packet_id~%int32 stop_tag_id~%uint8 stop_tag_type~%float64 stop_offset~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleStopAccurate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4 (cl:length (cl:slot-value msg 'chid))
     1
     4
     4
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleStopAccurate>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleStopAccurate
    (cl:cons ':header (header msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':chid (chid msg))
    (cl:cons ':stop_for (stop_for msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
    (cl:cons ':stop_tag_id (stop_tag_id msg))
    (cl:cons ':stop_tag_type (stop_tag_type msg))
    (cl:cons ':stop_offset (stop_offset msg))
))
