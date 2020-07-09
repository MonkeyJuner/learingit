; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude HeartBeat.msg.html

(cl:defclass <HeartBeat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (is_in_map
    :reader is_in_map
    :initarg :is_in_map
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass HeartBeat (<HeartBeat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeartBeat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeartBeat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<HeartBeat> is deprecated: use hadmap_msgs-msg:HeartBeat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:header-val is deprecated.  Use hadmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'is_in_map-val :lambda-list '(m))
(cl:defmethod is_in_map-val ((m <HeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:is_in_map-val is deprecated.  Use hadmap_msgs-msg:is_in_map instead.")
  (is_in_map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeartBeat>) ostream)
  "Serializes a message object of type '<HeartBeat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_in_map) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeartBeat>) istream)
  "Deserializes a message object of type '<HeartBeat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'is_in_map) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeartBeat>)))
  "Returns string type for a message object of type '<HeartBeat>"
  "hadmap_msgs/HeartBeat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeartBeat)))
  "Returns string type for a message object of type 'HeartBeat"
  "hadmap_msgs/HeartBeat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeartBeat>)))
  "Returns md5sum for a message object of type '<HeartBeat>"
  "8b0cf2981c193c5945dad67297c6287d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeartBeat)))
  "Returns md5sum for a message object of type 'HeartBeat"
  "8b0cf2981c193c5945dad67297c6287d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeartBeat>)))
  "Returns full string definition for message of type '<HeartBeat>"
  (cl:format cl:nil "Header header~%bool is_in_map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeartBeat)))
  "Returns full string definition for message of type 'HeartBeat"
  (cl:format cl:nil "Header header~%bool is_in_map~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeartBeat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeartBeat>))
  "Converts a ROS message object to a list"
  (cl:list 'HeartBeat
    (cl:cons ':header (header msg))
    (cl:cons ':is_in_map (is_in_map msg))
))
