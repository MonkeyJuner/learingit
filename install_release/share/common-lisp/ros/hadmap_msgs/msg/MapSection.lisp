; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude MapSection.msg.html

(cl:defclass <MapSection> (roslisp-msg-protocol:ros-message)
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
   (s
    :reader s
    :initarg :s
    :type cl:float
    :initform 0.0)
   (refer_line
    :reader refer_line
    :initarg :refer_line
    :type hadmap_msgs-msg:MapReferLine
    :initform (cl:make-instance 'hadmap_msgs-msg:MapReferLine))
   (z_coeffs
    :reader z_coeffs
    :initarg :z_coeffs
    :type (cl:vector hadmap_msgs-msg:MapPolyCoeff)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:MapPolyCoeff :initial-element (cl:make-instance 'hadmap_msgs-msg:MapPolyCoeff)))
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector hadmap_msgs-msg:MapLane)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:MapLane :initial-element (cl:make-instance 'hadmap_msgs-msg:MapLane))))
)

(cl:defclass MapSection (<MapSection>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapSection>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapSection)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<MapSection> is deprecated: use hadmap_msgs-msg:MapSection instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MapSection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:header-val is deprecated.  Use hadmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MapSection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:id-val is deprecated.  Use hadmap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 's-val :lambda-list '(m))
(cl:defmethod s-val ((m <MapSection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:s-val is deprecated.  Use hadmap_msgs-msg:s instead.")
  (s m))

(cl:ensure-generic-function 'refer_line-val :lambda-list '(m))
(cl:defmethod refer_line-val ((m <MapSection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:refer_line-val is deprecated.  Use hadmap_msgs-msg:refer_line instead.")
  (refer_line m))

(cl:ensure-generic-function 'z_coeffs-val :lambda-list '(m))
(cl:defmethod z_coeffs-val ((m <MapSection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:z_coeffs-val is deprecated.  Use hadmap_msgs-msg:z_coeffs instead.")
  (z_coeffs m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <MapSection>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:lanes-val is deprecated.  Use hadmap_msgs-msg:lanes instead.")
  (lanes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapSection>) ostream)
  "Serializes a message object of type '<MapSection>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 's))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'refer_line) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'z_coeffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'z_coeffs))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapSection>) istream)
  "Deserializes a message object of type '<MapSection>"
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
    (cl:setf (cl:slot-value msg 's) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'refer_line) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'z_coeffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'z_coeffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:MapPolyCoeff))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:MapLane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapSection>)))
  "Returns string type for a message object of type '<MapSection>"
  "hadmap_msgs/MapSection")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapSection)))
  "Returns string type for a message object of type 'MapSection"
  "hadmap_msgs/MapSection")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapSection>)))
  "Returns md5sum for a message object of type '<MapSection>"
  "c157895ff86d00b131821caeb238419d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapSection)))
  "Returns md5sum for a message object of type 'MapSection"
  "c157895ff86d00b131821caeb238419d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapSection>)))
  "Returns full string definition for message of type '<MapSection>"
  (cl:format cl:nil "Header header~%~%uint32 id~%float64 s~%~%MapReferLine refer_line~%MapPolyCoeff[] z_coeffs~%MapLane[] lanes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hadmap_msgs/MapReferLine~%~%geometry_msgs/Point start_point~%float64 heading~%float64 length~%MapSplineCoeff spline_coeff~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/MapSplineCoeff~%float64 start_offset~%uint8 degree~%uint8 dimension~%float64 scale~%float64[] spline_knots~%geometry_msgs/Point[] spline_points~%~%================================================================================~%MSG: hadmap_msgs/MapPolyCoeff~%float64 offset~%float64[] poly_parameters~%~%================================================================================~%MSG: hadmap_msgs/MapLane~%uint8 lane_type~%~%MapPolyCoeff[] poly_coeffs~%~%int16 predecessor~%int16 successor~%~%float32 lane_residual_len~%float32 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapSection)))
  "Returns full string definition for message of type 'MapSection"
  (cl:format cl:nil "Header header~%~%uint32 id~%float64 s~%~%MapReferLine refer_line~%MapPolyCoeff[] z_coeffs~%MapLane[] lanes~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hadmap_msgs/MapReferLine~%~%geometry_msgs/Point start_point~%float64 heading~%float64 length~%MapSplineCoeff spline_coeff~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/MapSplineCoeff~%float64 start_offset~%uint8 degree~%uint8 dimension~%float64 scale~%float64[] spline_knots~%geometry_msgs/Point[] spline_points~%~%================================================================================~%MSG: hadmap_msgs/MapPolyCoeff~%float64 offset~%float64[] poly_parameters~%~%================================================================================~%MSG: hadmap_msgs/MapLane~%uint8 lane_type~%~%MapPolyCoeff[] poly_coeffs~%~%int16 predecessor~%int16 successor~%~%float32 lane_residual_len~%float32 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapSection>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'refer_line))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'z_coeffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapSection>))
  "Converts a ROS message object to a list"
  (cl:list 'MapSection
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':s (s msg))
    (cl:cons ':refer_line (refer_line msg))
    (cl:cons ':z_coeffs (z_coeffs msg))
    (cl:cons ':lanes (lanes msg))
))
