; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude LocalMapSection.msg.html

(cl:defclass <LocalMapSection> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector hadmap_msgs-msg:LocalMapLane)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:LocalMapLane :initial-element (cl:make-instance 'hadmap_msgs-msg:LocalMapLane))))
)

(cl:defclass LocalMapSection (<LocalMapSection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMapSection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMapSection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<LocalMapSection> is deprecated: use hadmap_msgs-msg:LocalMapSection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocalMapSection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:header-val is deprecated.  Use hadmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <LocalMapSection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:lanes-val is deprecated.  Use hadmap_msgs-msg:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMapSection>) ostream)
  "Serializes a message object of type '<LocalMapSection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMapSection>) istream)
  "Deserializes a message object of type '<LocalMapSection>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:LocalMapLane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMapSection>)))
  "Returns string type for a message object of type '<LocalMapSection>"
  "hadmap_msgs/LocalMapSection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapSection)))
  "Returns string type for a message object of type 'LocalMapSection"
  "hadmap_msgs/LocalMapSection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMapSection>)))
  "Returns md5sum for a message object of type '<LocalMapSection>"
  "2e2581a2675681ccfe2f2c202442f570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMapSection)))
  "Returns md5sum for a message object of type 'LocalMapSection"
  "2e2581a2675681ccfe2f2c202442f570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMapSection>)))
  "Returns full string definition for message of type '<LocalMapSection>"
  (cl:format cl:nil "Header header~%LocalMapLane[] lanes~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hadmap_msgs/LocalMapLane~%# lane id~%int32 id~%# residual length~%float32 residual_len~%~%float32 stopline_distance~%geometry_msgs/Point stopline~%~%# central planning points~%LocalMapPoint[] center~%# left boundary~%LocalMapPoint[] left~%# right boundary~%LocalMapPoint[] right~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/LocalMapPoint~%uint8 TYPE_CROSS = 0~%uint8 TYPE_NOT_CROSS = 1~%~%# lane point localization~%geometry_msgs/Point point~%# heading angle~%float32 heading~%# now: cross or not~%uint8 type~%# speed limit~%float32 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMapSection)))
  "Returns full string definition for message of type 'LocalMapSection"
  (cl:format cl:nil "Header header~%LocalMapLane[] lanes~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hadmap_msgs/LocalMapLane~%# lane id~%int32 id~%# residual length~%float32 residual_len~%~%float32 stopline_distance~%geometry_msgs/Point stopline~%~%# central planning points~%LocalMapPoint[] center~%# left boundary~%LocalMapPoint[] left~%# right boundary~%LocalMapPoint[] right~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/LocalMapPoint~%uint8 TYPE_CROSS = 0~%uint8 TYPE_NOT_CROSS = 1~%~%# lane point localization~%geometry_msgs/Point point~%# heading angle~%float32 heading~%# now: cross or not~%uint8 type~%# speed limit~%float32 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMapSection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMapSection>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMapSection
    (cl:cons ':header (header msg))
    (cl:cons ':lanes (lanes msg))
))
