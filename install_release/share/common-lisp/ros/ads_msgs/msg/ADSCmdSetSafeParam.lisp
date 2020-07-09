; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSCmdSetSafeParam.msg.html

(cl:defclass <ADSCmdSetSafeParam> (roslisp-msg-protocol:ros-message)
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
   (safe_second
    :reader safe_second
    :initarg :safe_second
    :type cl:float
    :initform 0.0)
   (safe_distance
    :reader safe_distance
    :initarg :safe_distance
    :type cl:float
    :initform 0.0))
)

(cl:defclass ADSCmdSetSafeParam (<ADSCmdSetSafeParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSCmdSetSafeParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSCmdSetSafeParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSCmdSetSafeParam> is deprecated: use ads_msgs-msg:ADSCmdSetSafeParam instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADSCmdSetSafeParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:header-val is deprecated.  Use ads_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ADSCmdSetSafeParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:id-val is deprecated.  Use ads_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'safe_second-val :lambda-list '(m))
(cl:defmethod safe_second-val ((m <ADSCmdSetSafeParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:safe_second-val is deprecated.  Use ads_msgs-msg:safe_second instead.")
  (safe_second m))

(cl:ensure-generic-function 'safe_distance-val :lambda-list '(m))
(cl:defmethod safe_distance-val ((m <ADSCmdSetSafeParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:safe_distance-val is deprecated.  Use ads_msgs-msg:safe_distance instead.")
  (safe_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSCmdSetSafeParam>) ostream)
  "Serializes a message object of type '<ADSCmdSetSafeParam>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'safe_second))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'safe_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSCmdSetSafeParam>) istream)
  "Deserializes a message object of type '<ADSCmdSetSafeParam>"
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
    (cl:setf (cl:slot-value msg 'safe_second) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'safe_distance) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSCmdSetSafeParam>)))
  "Returns string type for a message object of type '<ADSCmdSetSafeParam>"
  "ads_msgs/ADSCmdSetSafeParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSCmdSetSafeParam)))
  "Returns string type for a message object of type 'ADSCmdSetSafeParam"
  "ads_msgs/ADSCmdSetSafeParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSCmdSetSafeParam>)))
  "Returns md5sum for a message object of type '<ADSCmdSetSafeParam>"
  "861db45b0a43099456491e88ed389e30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSCmdSetSafeParam)))
  "Returns md5sum for a message object of type 'ADSCmdSetSafeParam"
  "861db45b0a43099456491e88ed389e30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSCmdSetSafeParam>)))
  "Returns full string definition for message of type '<ADSCmdSetSafeParam>"
  (cl:format cl:nil "Header header~%~%uint32 id~%~%float64 safe_second~%float64 safe_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSCmdSetSafeParam)))
  "Returns full string definition for message of type 'ADSCmdSetSafeParam"
  (cl:format cl:nil "Header header~%~%uint32 id~%~%float64 safe_second~%float64 safe_distance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSCmdSetSafeParam>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSCmdSetSafeParam>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSCmdSetSafeParam
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':safe_second (safe_second msg))
    (cl:cons ':safe_distance (safe_distance msg))
))
