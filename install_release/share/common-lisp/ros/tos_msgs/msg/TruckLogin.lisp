; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TruckLogin.msg.html

(cl:defclass <TruckLogin> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cheid
    :reader cheid
    :initarg :cheid
    :type cl:string
    :initform "")
   (usr_name
    :reader usr_name
    :initarg :usr_name
    :type cl:string
    :initform "")
   (register_type
    :reader register_type
    :initarg :register_type
    :type cl:fixnum
    :initform 0)
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TruckLogin (<TruckLogin>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TruckLogin>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TruckLogin)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TruckLogin> is deprecated: use tos_msgs-msg:TruckLogin instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TruckLogin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cheid-val :lambda-list '(m))
(cl:defmethod cheid-val ((m <TruckLogin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:cheid-val is deprecated.  Use tos_msgs-msg:cheid instead.")
  (cheid m))

(cl:ensure-generic-function 'usr_name-val :lambda-list '(m))
(cl:defmethod usr_name-val ((m <TruckLogin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:usr_name-val is deprecated.  Use tos_msgs-msg:usr_name instead.")
  (usr_name m))

(cl:ensure-generic-function 'register_type-val :lambda-list '(m))
(cl:defmethod register_type-val ((m <TruckLogin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:register_type-val is deprecated.  Use tos_msgs-msg:register_type instead.")
  (register_type m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <TruckLogin>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TruckLogin>)))
    "Constants for message type '<TruckLogin>"
  '((:TRUNK_UNREGISTER . 0)
    (:TRUNK_REGISTER . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TruckLogin)))
    "Constants for message type 'TruckLogin"
  '((:TRUNK_UNREGISTER . 0)
    (:TRUNK_REGISTER . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TruckLogin>) ostream)
  "Serializes a message object of type '<TruckLogin>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cheid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cheid))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'usr_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'usr_name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'register_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TruckLogin>) istream)
  "Deserializes a message object of type '<TruckLogin>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cheid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cheid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'usr_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'usr_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'register_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TruckLogin>)))
  "Returns string type for a message object of type '<TruckLogin>"
  "tos_msgs/TruckLogin")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TruckLogin)))
  "Returns string type for a message object of type 'TruckLogin"
  "tos_msgs/TruckLogin")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TruckLogin>)))
  "Returns md5sum for a message object of type '<TruckLogin>"
  "ae364b6ad1460c8b838375d9b99a1ccb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TruckLogin)))
  "Returns md5sum for a message object of type 'TruckLogin"
  "ae364b6ad1460c8b838375d9b99a1ccb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TruckLogin>)))
  "Returns full string definition for message of type '<TruckLogin>"
  (cl:format cl:nil "# truck register~%uint8 TRUNK_UNREGISTER         = 0~%uint8 TRUNK_REGISTER           = 1~%~%Header header~%string cheid~%string usr_name~%uint8 register_type~%~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TruckLogin)))
  "Returns full string definition for message of type 'TruckLogin"
  (cl:format cl:nil "# truck register~%uint8 TRUNK_UNREGISTER         = 0~%uint8 TRUNK_REGISTER           = 1~%~%Header header~%string cheid~%string usr_name~%uint8 register_type~%~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TruckLogin>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'cheid))
     4 (cl:length (cl:slot-value msg 'usr_name))
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TruckLogin>))
  "Converts a ROS message object to a list"
  (cl:list 'TruckLogin
    (cl:cons ':header (header msg))
    (cl:cons ':cheid (cheid msg))
    (cl:cons ':usr_name (usr_name msg))
    (cl:cons ':register_type (register_type msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
))
