; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSCmdSetTarget.msg.html

(cl:defclass <ADSCmdSetTarget> (roslisp-msg-protocol:ros-message)
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
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (stop_point
    :reader stop_point
    :initarg :stop_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass ADSCmdSetTarget (<ADSCmdSetTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSCmdSetTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSCmdSetTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSCmdSetTarget> is deprecated: use ads_msgs-msg:ADSCmdSetTarget instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADSCmdSetTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:header-val is deprecated.  Use ads_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ADSCmdSetTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:id-val is deprecated.  Use ads_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <ADSCmdSetTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:task_id-val is deprecated.  Use ads_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'stop_point-val :lambda-list '(m))
(cl:defmethod stop_point-val ((m <ADSCmdSetTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:stop_point-val is deprecated.  Use ads_msgs-msg:stop_point instead.")
  (stop_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSCmdSetTarget>) ostream)
  "Serializes a message object of type '<ADSCmdSetTarget>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stop_point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSCmdSetTarget>) istream)
  "Deserializes a message object of type '<ADSCmdSetTarget>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stop_point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSCmdSetTarget>)))
  "Returns string type for a message object of type '<ADSCmdSetTarget>"
  "ads_msgs/ADSCmdSetTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSCmdSetTarget)))
  "Returns string type for a message object of type 'ADSCmdSetTarget"
  "ads_msgs/ADSCmdSetTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSCmdSetTarget>)))
  "Returns md5sum for a message object of type '<ADSCmdSetTarget>"
  "ef04ad969fa33b2a76b6bde3230a3b53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSCmdSetTarget)))
  "Returns md5sum for a message object of type 'ADSCmdSetTarget"
  "ef04ad969fa33b2a76b6bde3230a3b53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSCmdSetTarget>)))
  "Returns full string definition for message of type '<ADSCmdSetTarget>"
  (cl:format cl:nil "Header header~%uint32 id~%uint32 task_id~%geometry_msgs/Point stop_point~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSCmdSetTarget)))
  "Returns full string definition for message of type 'ADSCmdSetTarget"
  (cl:format cl:nil "Header header~%uint32 id~%uint32 task_id~%geometry_msgs/Point stop_point~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSCmdSetTarget>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stop_point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSCmdSetTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSCmdSetTarget
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':stop_point (stop_point msg))
))
