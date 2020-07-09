; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-srv)


;//! \htmlinclude LocalMap-request.msg.html

(cl:defclass <LocalMap-request> (roslisp-msg-protocol:ros-message)
  ((transform
    :reader transform
    :initarg :transform
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (query_len_ahead
    :reader query_len_ahead
    :initarg :query_len_ahead
    :type cl:float
    :initform 0.0)
   (query_len_behind
    :reader query_len_behind
    :initarg :query_len_behind
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocalMap-request (<LocalMap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-srv:<LocalMap-request> is deprecated: use hadmap_msgs-srv:LocalMap-request instead.")))

(cl:ensure-generic-function 'transform-val :lambda-list '(m))
(cl:defmethod transform-val ((m <LocalMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:transform-val is deprecated.  Use hadmap_msgs-srv:transform instead.")
  (transform m))

(cl:ensure-generic-function 'query_len_ahead-val :lambda-list '(m))
(cl:defmethod query_len_ahead-val ((m <LocalMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:query_len_ahead-val is deprecated.  Use hadmap_msgs-srv:query_len_ahead instead.")
  (query_len_ahead m))

(cl:ensure-generic-function 'query_len_behind-val :lambda-list '(m))
(cl:defmethod query_len_behind-val ((m <LocalMap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:query_len_behind-val is deprecated.  Use hadmap_msgs-srv:query_len_behind instead.")
  (query_len_behind m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMap-request>) ostream)
  "Serializes a message object of type '<LocalMap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'transform) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'query_len_ahead))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'query_len_behind))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMap-request>) istream)
  "Deserializes a message object of type '<LocalMap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'transform) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'query_len_ahead) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'query_len_behind) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMap-request>)))
  "Returns string type for a service object of type '<LocalMap-request>"
  "hadmap_msgs/LocalMapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMap-request)))
  "Returns string type for a service object of type 'LocalMap-request"
  "hadmap_msgs/LocalMapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMap-request>)))
  "Returns md5sum for a message object of type '<LocalMap-request>"
  "08a1f6ded539d336de32646a87759460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMap-request)))
  "Returns md5sum for a message object of type 'LocalMap-request"
  "08a1f6ded539d336de32646a87759460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMap-request>)))
  "Returns full string definition for message of type '<LocalMap-request>"
  (cl:format cl:nil "~%geometry_msgs/Transform transform~%~%float32 query_len_ahead~%~%float32 query_len_behind~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMap-request)))
  "Returns full string definition for message of type 'LocalMap-request"
  (cl:format cl:nil "~%geometry_msgs/Transform transform~%~%float32 query_len_ahead~%~%float32 query_len_behind~%~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'transform))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMap-request
    (cl:cons ':transform (transform msg))
    (cl:cons ':query_len_ahead (query_len_ahead msg))
    (cl:cons ':query_len_behind (query_len_behind msg))
))
;//! \htmlinclude LocalMap-response.msg.html

(cl:defclass <LocalMap-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass LocalMap-response (<LocalMap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-srv:<LocalMap-response> is deprecated: use hadmap_msgs-srv:LocalMap-response instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocalMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:header-val is deprecated.  Use hadmap_msgs-srv:header instead.")
  (header m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <LocalMap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:lanes-val is deprecated.  Use hadmap_msgs-srv:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMap-response>) ostream)
  "Serializes a message object of type '<LocalMap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMap-response>) istream)
  "Deserializes a message object of type '<LocalMap-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMap-response>)))
  "Returns string type for a service object of type '<LocalMap-response>"
  "hadmap_msgs/LocalMapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMap-response)))
  "Returns string type for a service object of type 'LocalMap-response"
  "hadmap_msgs/LocalMapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMap-response>)))
  "Returns md5sum for a message object of type '<LocalMap-response>"
  "08a1f6ded539d336de32646a87759460")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMap-response)))
  "Returns md5sum for a message object of type 'LocalMap-response"
  "08a1f6ded539d336de32646a87759460")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMap-response>)))
  "Returns full string definition for message of type '<LocalMap-response>"
  (cl:format cl:nil "~%~%Header header~%~%LocalMapLane[] lanes~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hadmap_msgs/LocalMapLane~%# lane id~%int32 id~%# residual length~%float32 residual_len~%~%float32 stopline_distance~%geometry_msgs/Point stopline~%~%# central planning points~%LocalMapPoint[] center~%# left boundary~%LocalMapPoint[] left~%# right boundary~%LocalMapPoint[] right~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/LocalMapPoint~%uint8 TYPE_CROSS = 0~%uint8 TYPE_NOT_CROSS = 1~%~%# lane point localization~%geometry_msgs/Point point~%# heading angle~%float32 heading~%# now: cross or not~%uint8 type~%# speed limit~%float32 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMap-response)))
  "Returns full string definition for message of type 'LocalMap-response"
  (cl:format cl:nil "~%~%Header header~%~%LocalMapLane[] lanes~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hadmap_msgs/LocalMapLane~%# lane id~%int32 id~%# residual length~%float32 residual_len~%~%float32 stopline_distance~%geometry_msgs/Point stopline~%~%# central planning points~%LocalMapPoint[] center~%# left boundary~%LocalMapPoint[] left~%# right boundary~%LocalMapPoint[] right~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/LocalMapPoint~%uint8 TYPE_CROSS = 0~%uint8 TYPE_NOT_CROSS = 1~%~%# lane point localization~%geometry_msgs/Point point~%# heading angle~%float32 heading~%# now: cross or not~%uint8 type~%# speed limit~%float32 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMap-response
    (cl:cons ':header (header msg))
    (cl:cons ':lanes (lanes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LocalMap)))
  'LocalMap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LocalMap)))
  'LocalMap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMap)))
  "Returns string type for a service object of type '<LocalMap>"
  "hadmap_msgs/LocalMap")