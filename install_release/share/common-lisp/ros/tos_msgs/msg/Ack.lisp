; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude Ack.msg.html

(cl:defclass <Ack> (roslisp-msg-protocol:ros-message)
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
   (recv_packet_id
    :reader recv_packet_id
    :initarg :recv_packet_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Ack (<Ack>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Ack>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Ack)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<Ack> is deprecated: use tos_msgs-msg:Ack instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'chid-val :lambda-list '(m))
(cl:defmethod chid-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:chid-val is deprecated.  Use tos_msgs-msg:chid instead.")
  (chid m))

(cl:ensure-generic-function 'recv_packet_id-val :lambda-list '(m))
(cl:defmethod recv_packet_id-val ((m <Ack>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:recv_packet_id-val is deprecated.  Use tos_msgs-msg:recv_packet_id instead.")
  (recv_packet_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Ack>) ostream)
  "Serializes a message object of type '<Ack>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chid))
  (cl:let* ((signed (cl:slot-value msg 'recv_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Ack>) istream)
  "Deserializes a message object of type '<Ack>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'recv_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Ack>)))
  "Returns string type for a message object of type '<Ack>"
  "tos_msgs/Ack")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Ack)))
  "Returns string type for a message object of type 'Ack"
  "tos_msgs/Ack")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Ack>)))
  "Returns md5sum for a message object of type '<Ack>"
  "13cde61edac7c6d8fd963194a4397a3e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Ack)))
  "Returns md5sum for a message object of type 'Ack"
  "13cde61edac7c6d8fd963194a4397a3e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Ack>)))
  "Returns full string definition for message of type '<Ack>"
  (cl:format cl:nil "Header header~%string chid~%int32 recv_packet_id~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Ack)))
  "Returns full string definition for message of type 'Ack"
  (cl:format cl:nil "Header header~%string chid~%int32 recv_packet_id~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Ack>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'chid))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Ack>))
  "Converts a ROS message object to a list"
  (cl:list 'Ack
    (cl:cons ':header (header msg))
    (cl:cons ':chid (chid msg))
    (cl:cons ':recv_packet_id (recv_packet_id msg))
))
