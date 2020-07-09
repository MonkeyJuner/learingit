; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TruckAlignment.msg.html

(cl:defclass <TruckAlignment> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (TruckNBR
    :reader TruckNBR
    :initarg :TruckNBR
    :type cl:string
    :initform "")
   (Stamp
    :reader Stamp
    :initarg :Stamp
    :type cl:string
    :initform "")
   (WorkOder
    :reader WorkOder
    :initarg :WorkOder
    :type cl:string
    :initform "")
   (CraneNBR
    :reader CraneNBR
    :initarg :CraneNBR
    :type cl:integer
    :initform 0)
   (InPlace
    :reader InPlace
    :initarg :InPlace
    :type cl:fixnum
    :initform 0)
   (Rest
    :reader Rest
    :initarg :Rest
    :type cl:fixnum
    :initform 0)
   (TruckLeave
    :reader TruckLeave
    :initarg :TruckLeave
    :type cl:fixnum
    :initform 0)
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TruckAlignment (<TruckAlignment>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TruckAlignment>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TruckAlignment)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TruckAlignment> is deprecated: use tos_msgs-msg:TruckAlignment instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'TruckNBR-val :lambda-list '(m))
(cl:defmethod TruckNBR-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:TruckNBR-val is deprecated.  Use tos_msgs-msg:TruckNBR instead.")
  (TruckNBR m))

(cl:ensure-generic-function 'Stamp-val :lambda-list '(m))
(cl:defmethod Stamp-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:Stamp-val is deprecated.  Use tos_msgs-msg:Stamp instead.")
  (Stamp m))

(cl:ensure-generic-function 'WorkOder-val :lambda-list '(m))
(cl:defmethod WorkOder-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:WorkOder-val is deprecated.  Use tos_msgs-msg:WorkOder instead.")
  (WorkOder m))

(cl:ensure-generic-function 'CraneNBR-val :lambda-list '(m))
(cl:defmethod CraneNBR-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:CraneNBR-val is deprecated.  Use tos_msgs-msg:CraneNBR instead.")
  (CraneNBR m))

(cl:ensure-generic-function 'InPlace-val :lambda-list '(m))
(cl:defmethod InPlace-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:InPlace-val is deprecated.  Use tos_msgs-msg:InPlace instead.")
  (InPlace m))

(cl:ensure-generic-function 'Rest-val :lambda-list '(m))
(cl:defmethod Rest-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:Rest-val is deprecated.  Use tos_msgs-msg:Rest instead.")
  (Rest m))

(cl:ensure-generic-function 'TruckLeave-val :lambda-list '(m))
(cl:defmethod TruckLeave-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:TruckLeave-val is deprecated.  Use tos_msgs-msg:TruckLeave instead.")
  (TruckLeave m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <TruckAlignment>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TruckAlignment>) ostream)
  "Serializes a message object of type '<TruckAlignment>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'TruckNBR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'TruckNBR))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Stamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Stamp))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'WorkOder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'WorkOder))
  (cl:let* ((signed (cl:slot-value msg 'CraneNBR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'InPlace)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'InPlace)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Rest)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TruckLeave)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TruckLeave)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TruckAlignment>) istream)
  "Deserializes a message object of type '<TruckAlignment>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TruckNBR) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'TruckNBR) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Stamp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Stamp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'WorkOder) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'WorkOder) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CraneNBR) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'InPlace)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'InPlace)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'Rest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'Rest)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TruckLeave)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'TruckLeave)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TruckAlignment>)))
  "Returns string type for a message object of type '<TruckAlignment>"
  "tos_msgs/TruckAlignment")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TruckAlignment)))
  "Returns string type for a message object of type 'TruckAlignment"
  "tos_msgs/TruckAlignment")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TruckAlignment>)))
  "Returns md5sum for a message object of type '<TruckAlignment>"
  "65d8fffd5aa268d9cd99df47762be918")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TruckAlignment)))
  "Returns md5sum for a message object of type 'TruckAlignment"
  "65d8fffd5aa268d9cd99df47762be918")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TruckAlignment>)))
  "Returns full string definition for message of type '<TruckAlignment>"
  (cl:format cl:nil "Header header~%~%string TruckNBR~%string Stamp~%string WorkOder~%int32 CraneNBR~%uint16 InPlace~%uint16 Rest~%uint16 TruckLeave~%~%int32 send_packet_id~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TruckAlignment)))
  "Returns full string definition for message of type 'TruckAlignment"
  (cl:format cl:nil "Header header~%~%string TruckNBR~%string Stamp~%string WorkOder~%int32 CraneNBR~%uint16 InPlace~%uint16 Rest~%uint16 TruckLeave~%~%int32 send_packet_id~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TruckAlignment>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'TruckNBR))
     4 (cl:length (cl:slot-value msg 'Stamp))
     4 (cl:length (cl:slot-value msg 'WorkOder))
     4
     2
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TruckAlignment>))
  "Converts a ROS message object to a list"
  (cl:list 'TruckAlignment
    (cl:cons ':header (header msg))
    (cl:cons ':TruckNBR (TruckNBR msg))
    (cl:cons ':Stamp (Stamp msg))
    (cl:cons ':WorkOder (WorkOder msg))
    (cl:cons ':CraneNBR (CraneNBR msg))
    (cl:cons ':InPlace (InPlace msg))
    (cl:cons ':Rest (Rest msg))
    (cl:cons ':TruckLeave (TruckLeave msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
))
