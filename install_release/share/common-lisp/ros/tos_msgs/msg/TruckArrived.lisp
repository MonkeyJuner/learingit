; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TruckArrived.msg.html

(cl:defclass <TruckArrived> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (chid
    :reader chid
    :initarg :chid
    :type cl:string
    :initform "")
   (arrived
    :reader arrived
    :initarg :arrived
    :type cl:boolean
    :initform cl:nil)
   (task_key
    :reader task_key
    :initarg :task_key
    :type cl:integer
    :initform 0)
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TruckArrived (<TruckArrived>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TruckArrived>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TruckArrived)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TruckArrived> is deprecated: use tos_msgs-msg:TruckArrived instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TruckArrived>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'chid-val :lambda-list '(m))
(cl:defmethod chid-val ((m <TruckArrived>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:chid-val is deprecated.  Use tos_msgs-msg:chid instead.")
  (chid m))

(cl:ensure-generic-function 'arrived-val :lambda-list '(m))
(cl:defmethod arrived-val ((m <TruckArrived>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:arrived-val is deprecated.  Use tos_msgs-msg:arrived instead.")
  (arrived m))

(cl:ensure-generic-function 'task_key-val :lambda-list '(m))
(cl:defmethod task_key-val ((m <TruckArrived>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:task_key-val is deprecated.  Use tos_msgs-msg:task_key instead.")
  (task_key m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <TruckArrived>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TruckArrived>) ostream)
  "Serializes a message object of type '<TruckArrived>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'arrived) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_key)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_key)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TruckArrived>) istream)
  "Deserializes a message object of type '<TruckArrived>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'arrived) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_key)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_key)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TruckArrived>)))
  "Returns string type for a message object of type '<TruckArrived>"
  "tos_msgs/TruckArrived")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TruckArrived)))
  "Returns string type for a message object of type 'TruckArrived"
  "tos_msgs/TruckArrived")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TruckArrived>)))
  "Returns md5sum for a message object of type '<TruckArrived>"
  "b64e38fecffb9b2e3ac7616cb715411c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TruckArrived)))
  "Returns md5sum for a message object of type 'TruckArrived"
  "b64e38fecffb9b2e3ac7616cb715411c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TruckArrived>)))
  "Returns full string definition for message of type '<TruckArrived>"
  (cl:format cl:nil "Header header~%string chid~%bool arrived~%~%# task key (task_id)~%uint32 task_key~%~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TruckArrived)))
  "Returns full string definition for message of type 'TruckArrived"
  (cl:format cl:nil "Header header~%string chid~%bool arrived~%~%# task key (task_id)~%uint32 task_key~%~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TruckArrived>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'chid))
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TruckArrived>))
  "Converts a ROS message object to a list"
  (cl:list 'TruckArrived
    (cl:cons ':header (header msg))
    (cl:cons ':chid (chid msg))
    (cl:cons ':arrived (arrived msg))
    (cl:cons ':task_key (task_key msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
))
