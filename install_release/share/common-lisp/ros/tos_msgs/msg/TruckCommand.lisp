; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TruckCommand.msg.html

(cl:defclass <TruckCommand> (roslisp-msg-protocol:ros-message)
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
   (confirm_type
    :reader confirm_type
    :initarg :confirm_type
    :type cl:fixnum
    :initform 0)
   (cheid
    :reader cheid
    :initarg :cheid
    :type cl:string
    :initform "")
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TruckCommand (<TruckCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TruckCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TruckCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TruckCommand> is deprecated: use tos_msgs-msg:TruckCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TruckCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TruckCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:task_id-val is deprecated.  Use tos_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'confirm_type-val :lambda-list '(m))
(cl:defmethod confirm_type-val ((m <TruckCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:confirm_type-val is deprecated.  Use tos_msgs-msg:confirm_type instead.")
  (confirm_type m))

(cl:ensure-generic-function 'cheid-val :lambda-list '(m))
(cl:defmethod cheid-val ((m <TruckCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:cheid-val is deprecated.  Use tos_msgs-msg:cheid instead.")
  (cheid m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <TruckCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TruckCommand>)))
    "Constants for message type '<TruckCommand>"
  '((:CONFIRM . 1)
    (:REFRESH . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TruckCommand)))
    "Constants for message type 'TruckCommand"
  '((:CONFIRM . 1)
    (:REFRESH . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TruckCommand>) ostream)
  "Serializes a message object of type '<TruckCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confirm_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cheid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cheid))
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TruckCommand>) istream)
  "Deserializes a message object of type '<TruckCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'confirm_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cheid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cheid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TruckCommand>)))
  "Returns string type for a message object of type '<TruckCommand>"
  "tos_msgs/TruckCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TruckCommand)))
  "Returns string type for a message object of type 'TruckCommand"
  "tos_msgs/TruckCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TruckCommand>)))
  "Returns md5sum for a message object of type '<TruckCommand>"
  "a146c4c4d7747195ef6beffa8f9470bb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TruckCommand)))
  "Returns md5sum for a message object of type 'TruckCommand"
  "a146c4c4d7747195ef6beffa8f9470bb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TruckCommand>)))
  "Returns full string definition for message of type '<TruckCommand>"
  (cl:format cl:nil "# confirm type~%uint8 CONFIRM         = 1~%uint8 REFRESH         = 2~%~%Header header~%~%# task id~%uint32 task_id~%~%uint8 confirm_type~%~%~%# for test~%string cheid~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TruckCommand)))
  "Returns full string definition for message of type 'TruckCommand"
  (cl:format cl:nil "# confirm type~%uint8 CONFIRM         = 1~%uint8 REFRESH         = 2~%~%Header header~%~%# task id~%uint32 task_id~%~%uint8 confirm_type~%~%~%# for test~%string cheid~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TruckCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     4 (cl:length (cl:slot-value msg 'cheid))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TruckCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'TruckCommand
    (cl:cons ':header (header msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':confirm_type (confirm_type msg))
    (cl:cons ':cheid (cheid msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
))
