; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSCmdShutDown.msg.html

(cl:defclass <ADSCmdShutDown> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0))
)

(cl:defclass ADSCmdShutDown (<ADSCmdShutDown>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSCmdShutDown>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSCmdShutDown)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSCmdShutDown> is deprecated: use ads_msgs-msg:ADSCmdShutDown instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADSCmdShutDown>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:header-val is deprecated.  Use ads_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ADSCmdShutDown>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:id-val is deprecated.  Use ads_msgs-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSCmdShutDown>) ostream)
  "Serializes a message object of type '<ADSCmdShutDown>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSCmdShutDown>) istream)
  "Deserializes a message object of type '<ADSCmdShutDown>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSCmdShutDown>)))
  "Returns string type for a message object of type '<ADSCmdShutDown>"
  "ads_msgs/ADSCmdShutDown")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSCmdShutDown)))
  "Returns string type for a message object of type 'ADSCmdShutDown"
  "ads_msgs/ADSCmdShutDown")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSCmdShutDown>)))
  "Returns md5sum for a message object of type '<ADSCmdShutDown>"
  "057dd8251e7cb69192b3590359a014ce")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSCmdShutDown)))
  "Returns md5sum for a message object of type 'ADSCmdShutDown"
  "057dd8251e7cb69192b3590359a014ce")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSCmdShutDown>)))
  "Returns full string definition for message of type '<ADSCmdShutDown>"
  (cl:format cl:nil "Header header~%~%uint32 id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSCmdShutDown)))
  "Returns full string definition for message of type 'ADSCmdShutDown"
  (cl:format cl:nil "Header header~%~%uint32 id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSCmdShutDown>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSCmdShutDown>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSCmdShutDown
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
))
