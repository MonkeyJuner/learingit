; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude CraneWarnning.msg.html

(cl:defclass <CraneWarnning> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (certainty
    :reader certainty
    :initarg :certainty
    :type cl:float
    :initform 0.0)
   (distance_vertical
    :reader distance_vertical
    :initarg :distance_vertical
    :type cl:float
    :initform 0.0)
   (distance_lateral
    :reader distance_lateral
    :initarg :distance_lateral
    :type cl:float
    :initform 0.0))
)

(cl:defclass CraneWarnning (<CraneWarnning>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CraneWarnning>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CraneWarnning)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<CraneWarnning> is deprecated: use tos_msgs-msg:CraneWarnning instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CraneWarnning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'certainty-val :lambda-list '(m))
(cl:defmethod certainty-val ((m <CraneWarnning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:certainty-val is deprecated.  Use tos_msgs-msg:certainty instead.")
  (certainty m))

(cl:ensure-generic-function 'distance_vertical-val :lambda-list '(m))
(cl:defmethod distance_vertical-val ((m <CraneWarnning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:distance_vertical-val is deprecated.  Use tos_msgs-msg:distance_vertical instead.")
  (distance_vertical m))

(cl:ensure-generic-function 'distance_lateral-val :lambda-list '(m))
(cl:defmethod distance_lateral-val ((m <CraneWarnning>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:distance_lateral-val is deprecated.  Use tos_msgs-msg:distance_lateral instead.")
  (distance_lateral m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CraneWarnning>) ostream)
  "Serializes a message object of type '<CraneWarnning>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'certainty))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_vertical))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_lateral))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CraneWarnning>) istream)
  "Deserializes a message object of type '<CraneWarnning>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'certainty) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_vertical) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_lateral) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CraneWarnning>)))
  "Returns string type for a message object of type '<CraneWarnning>"
  "tos_msgs/CraneWarnning")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CraneWarnning)))
  "Returns string type for a message object of type 'CraneWarnning"
  "tos_msgs/CraneWarnning")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CraneWarnning>)))
  "Returns md5sum for a message object of type '<CraneWarnning>"
  "c24f3c5e54e151e721b842164d45ab26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CraneWarnning)))
  "Returns md5sum for a message object of type 'CraneWarnning"
  "c24f3c5e54e151e721b842164d45ab26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CraneWarnning>)))
  "Returns full string definition for message of type '<CraneWarnning>"
  (cl:format cl:nil "Header header~%~%# probability~%float64 certainty #0 ~~ 100~%~%#distance~%float64 distance_vertical #meter~%float64 distance_lateral  #meter~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CraneWarnning)))
  "Returns full string definition for message of type 'CraneWarnning"
  (cl:format cl:nil "Header header~%~%# probability~%float64 certainty #0 ~~ 100~%~%#distance~%float64 distance_vertical #meter~%float64 distance_lateral  #meter~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CraneWarnning>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CraneWarnning>))
  "Converts a ROS message object to a list"
  (cl:list 'CraneWarnning
    (cl:cons ':header (header msg))
    (cl:cons ':certainty (certainty msg))
    (cl:cons ':distance_vertical (distance_vertical msg))
    (cl:cons ':distance_lateral (distance_lateral msg))
))
