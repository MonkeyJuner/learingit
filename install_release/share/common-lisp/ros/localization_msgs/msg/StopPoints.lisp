; Auto-generated. Do not edit!


(cl:in-package localization_msgs-msg)


;//! \htmlinclude StopPoints.msg.html

(cl:defclass <StopPoints> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stop_points
    :reader stop_points
    :initarg :stop_points
    :type (cl:vector localization_msgs-msg:StopPoint)
   :initform (cl:make-array 0 :element-type 'localization_msgs-msg:StopPoint :initial-element (cl:make-instance 'localization_msgs-msg:StopPoint))))
)

(cl:defclass StopPoints (<StopPoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopPoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopPoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msgs-msg:<StopPoints> is deprecated: use localization_msgs-msg:StopPoints instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StopPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msgs-msg:header-val is deprecated.  Use localization_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stop_points-val :lambda-list '(m))
(cl:defmethod stop_points-val ((m <StopPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msgs-msg:stop_points-val is deprecated.  Use localization_msgs-msg:stop_points instead.")
  (stop_points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopPoints>) ostream)
  "Serializes a message object of type '<StopPoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stop_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'stop_points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopPoints>) istream)
  "Deserializes a message object of type '<StopPoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stop_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stop_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'localization_msgs-msg:StopPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopPoints>)))
  "Returns string type for a message object of type '<StopPoints>"
  "localization_msgs/StopPoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPoints)))
  "Returns string type for a message object of type 'StopPoints"
  "localization_msgs/StopPoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopPoints>)))
  "Returns md5sum for a message object of type '<StopPoints>"
  "b5b863ed8d0741cd8d4dd19ce2273dbb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopPoints)))
  "Returns md5sum for a message object of type 'StopPoints"
  "b5b863ed8d0741cd8d4dd19ce2273dbb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopPoints>)))
  "Returns full string definition for message of type '<StopPoints>"
  (cl:format cl:nil "Header header~%StopPoint[] stop_points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: localization_msgs/StopPoint~%# main key~%int32 id~%~%# distance, [0, unlimit]~%float64 distance_shift~%~%~%float64 angle # rad~%float64 distance_vertical~%~%~%~%uint8 TYPE_CRANE = 0~%uint8 TYPE_YARD = 1~%uint8 TYPE_OTHER = 2~%~%# type~%uint8 type~%~%# decelerate flag~%bool decelerate # true~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopPoints)))
  "Returns full string definition for message of type 'StopPoints"
  (cl:format cl:nil "Header header~%StopPoint[] stop_points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: localization_msgs/StopPoint~%# main key~%int32 id~%~%# distance, [0, unlimit]~%float64 distance_shift~%~%~%float64 angle # rad~%float64 distance_vertical~%~%~%~%uint8 TYPE_CRANE = 0~%uint8 TYPE_YARD = 1~%uint8 TYPE_OTHER = 2~%~%# type~%uint8 type~%~%# decelerate flag~%bool decelerate # true~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopPoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stop_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopPoints>))
  "Converts a ROS message object to a list"
  (cl:list 'StopPoints
    (cl:cons ':header (header msg))
    (cl:cons ':stop_points (stop_points msg))
))
