; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude MapLane.msg.html

(cl:defclass <MapLane> (roslisp-msg-protocol:ros-message)
  ((lane_type
    :reader lane_type
    :initarg :lane_type
    :type cl:fixnum
    :initform 0)
   (poly_coeffs
    :reader poly_coeffs
    :initarg :poly_coeffs
    :type (cl:vector hadmap_msgs-msg:MapPolyCoeff)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:MapPolyCoeff :initial-element (cl:make-instance 'hadmap_msgs-msg:MapPolyCoeff)))
   (predecessor
    :reader predecessor
    :initarg :predecessor
    :type cl:fixnum
    :initform 0)
   (successor
    :reader successor
    :initarg :successor
    :type cl:fixnum
    :initform 0)
   (lane_residual_len
    :reader lane_residual_len
    :initarg :lane_residual_len
    :type cl:float
    :initform 0.0)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass MapLane (<MapLane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapLane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapLane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<MapLane> is deprecated: use hadmap_msgs-msg:MapLane instead.")))

(cl:ensure-generic-function 'lane_type-val :lambda-list '(m))
(cl:defmethod lane_type-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:lane_type-val is deprecated.  Use hadmap_msgs-msg:lane_type instead.")
  (lane_type m))

(cl:ensure-generic-function 'poly_coeffs-val :lambda-list '(m))
(cl:defmethod poly_coeffs-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:poly_coeffs-val is deprecated.  Use hadmap_msgs-msg:poly_coeffs instead.")
  (poly_coeffs m))

(cl:ensure-generic-function 'predecessor-val :lambda-list '(m))
(cl:defmethod predecessor-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:predecessor-val is deprecated.  Use hadmap_msgs-msg:predecessor instead.")
  (predecessor m))

(cl:ensure-generic-function 'successor-val :lambda-list '(m))
(cl:defmethod successor-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:successor-val is deprecated.  Use hadmap_msgs-msg:successor instead.")
  (successor m))

(cl:ensure-generic-function 'lane_residual_len-val :lambda-list '(m))
(cl:defmethod lane_residual_len-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:lane_residual_len-val is deprecated.  Use hadmap_msgs-msg:lane_residual_len instead.")
  (lane_residual_len m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <MapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:speed_limit-val is deprecated.  Use hadmap_msgs-msg:speed_limit instead.")
  (speed_limit m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapLane>) ostream)
  "Serializes a message object of type '<MapLane>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poly_coeffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'poly_coeffs))
  (cl:let* ((signed (cl:slot-value msg 'predecessor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'successor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lane_residual_len))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapLane>) istream)
  "Deserializes a message object of type '<MapLane>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lane_type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poly_coeffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poly_coeffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:MapPolyCoeff))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'predecessor) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'successor) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lane_residual_len) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapLane>)))
  "Returns string type for a message object of type '<MapLane>"
  "hadmap_msgs/MapLane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapLane)))
  "Returns string type for a message object of type 'MapLane"
  "hadmap_msgs/MapLane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapLane>)))
  "Returns md5sum for a message object of type '<MapLane>"
  "1afa43e53ccebe2d6ea6280b4380157c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapLane)))
  "Returns md5sum for a message object of type 'MapLane"
  "1afa43e53ccebe2d6ea6280b4380157c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapLane>)))
  "Returns full string definition for message of type '<MapLane>"
  (cl:format cl:nil "uint8 lane_type~%~%MapPolyCoeff[] poly_coeffs~%~%int16 predecessor~%int16 successor~%~%float32 lane_residual_len~%float32 speed_limit~%~%================================================================================~%MSG: hadmap_msgs/MapPolyCoeff~%float64 offset~%float64[] poly_parameters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapLane)))
  "Returns full string definition for message of type 'MapLane"
  (cl:format cl:nil "uint8 lane_type~%~%MapPolyCoeff[] poly_coeffs~%~%int16 predecessor~%int16 successor~%~%float32 lane_residual_len~%float32 speed_limit~%~%================================================================================~%MSG: hadmap_msgs/MapPolyCoeff~%float64 offset~%float64[] poly_parameters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapLane>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poly_coeffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     2
     2
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapLane>))
  "Converts a ROS message object to a list"
  (cl:list 'MapLane
    (cl:cons ':lane_type (lane_type msg))
    (cl:cons ':poly_coeffs (poly_coeffs msg))
    (cl:cons ':predecessor (predecessor msg))
    (cl:cons ':successor (successor msg))
    (cl:cons ':lane_residual_len (lane_residual_len msg))
    (cl:cons ':speed_limit (speed_limit msg))
))
