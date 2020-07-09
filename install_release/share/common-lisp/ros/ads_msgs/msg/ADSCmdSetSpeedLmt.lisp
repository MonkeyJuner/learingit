; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSCmdSetSpeedLmt.msg.html

(cl:defclass <ADSCmdSetSpeedLmt> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (upper_velocity_km_h
    :reader upper_velocity_km_h
    :initarg :upper_velocity_km_h
    :type cl:float
    :initform 0.0)
   (upper_velocity_m_s
    :reader upper_velocity_m_s
    :initarg :upper_velocity_m_s
    :type cl:float
    :initform 0.0))
)

(cl:defclass ADSCmdSetSpeedLmt (<ADSCmdSetSpeedLmt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSCmdSetSpeedLmt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSCmdSetSpeedLmt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSCmdSetSpeedLmt> is deprecated: use ads_msgs-msg:ADSCmdSetSpeedLmt instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADSCmdSetSpeedLmt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:header-val is deprecated.  Use ads_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ADSCmdSetSpeedLmt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:id-val is deprecated.  Use ads_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'upper_velocity_km_h-val :lambda-list '(m))
(cl:defmethod upper_velocity_km_h-val ((m <ADSCmdSetSpeedLmt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:upper_velocity_km_h-val is deprecated.  Use ads_msgs-msg:upper_velocity_km_h instead.")
  (upper_velocity_km_h m))

(cl:ensure-generic-function 'upper_velocity_m_s-val :lambda-list '(m))
(cl:defmethod upper_velocity_m_s-val ((m <ADSCmdSetSpeedLmt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:upper_velocity_m_s-val is deprecated.  Use ads_msgs-msg:upper_velocity_m_s instead.")
  (upper_velocity_m_s m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSCmdSetSpeedLmt>) ostream)
  "Serializes a message object of type '<ADSCmdSetSpeedLmt>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'upper_velocity_km_h))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'upper_velocity_m_s))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSCmdSetSpeedLmt>) istream)
  "Deserializes a message object of type '<ADSCmdSetSpeedLmt>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upper_velocity_km_h) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'upper_velocity_m_s) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSCmdSetSpeedLmt>)))
  "Returns string type for a message object of type '<ADSCmdSetSpeedLmt>"
  "ads_msgs/ADSCmdSetSpeedLmt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSCmdSetSpeedLmt)))
  "Returns string type for a message object of type 'ADSCmdSetSpeedLmt"
  "ads_msgs/ADSCmdSetSpeedLmt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSCmdSetSpeedLmt>)))
  "Returns md5sum for a message object of type '<ADSCmdSetSpeedLmt>"
  "81b7ed48bbe46c268791addb9f4a6381")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSCmdSetSpeedLmt)))
  "Returns md5sum for a message object of type 'ADSCmdSetSpeedLmt"
  "81b7ed48bbe46c268791addb9f4a6381")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSCmdSetSpeedLmt>)))
  "Returns full string definition for message of type '<ADSCmdSetSpeedLmt>"
  (cl:format cl:nil "Header header~%~%uint32 id~%~%float64 upper_velocity_km_h~%~%float64 upper_velocity_m_s~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSCmdSetSpeedLmt)))
  "Returns full string definition for message of type 'ADSCmdSetSpeedLmt"
  (cl:format cl:nil "Header header~%~%uint32 id~%~%float64 upper_velocity_km_h~%~%float64 upper_velocity_m_s~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSCmdSetSpeedLmt>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSCmdSetSpeedLmt>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSCmdSetSpeedLmt
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':upper_velocity_km_h (upper_velocity_km_h msg))
    (cl:cons ':upper_velocity_m_s (upper_velocity_m_s msg))
))
