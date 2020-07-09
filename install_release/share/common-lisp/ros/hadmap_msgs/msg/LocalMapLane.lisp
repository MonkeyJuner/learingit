; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude LocalMapLane.msg.html

(cl:defclass <LocalMapLane> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (residual_len
    :reader residual_len
    :initarg :residual_len
    :type cl:float
    :initform 0.0)
   (stopline_distance
    :reader stopline_distance
    :initarg :stopline_distance
    :type cl:float
    :initform 0.0)
   (stopline
    :reader stopline
    :initarg :stopline
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (center
    :reader center
    :initarg :center
    :type (cl:vector hadmap_msgs-msg:LocalMapPoint)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:LocalMapPoint :initial-element (cl:make-instance 'hadmap_msgs-msg:LocalMapPoint)))
   (left
    :reader left
    :initarg :left
    :type (cl:vector hadmap_msgs-msg:LocalMapPoint)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:LocalMapPoint :initial-element (cl:make-instance 'hadmap_msgs-msg:LocalMapPoint)))
   (right
    :reader right
    :initarg :right
    :type (cl:vector hadmap_msgs-msg:LocalMapPoint)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:LocalMapPoint :initial-element (cl:make-instance 'hadmap_msgs-msg:LocalMapPoint))))
)

(cl:defclass LocalMapLane (<LocalMapLane>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMapLane>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMapLane)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<LocalMapLane> is deprecated: use hadmap_msgs-msg:LocalMapLane instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <LocalMapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:id-val is deprecated.  Use hadmap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'residual_len-val :lambda-list '(m))
(cl:defmethod residual_len-val ((m <LocalMapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:residual_len-val is deprecated.  Use hadmap_msgs-msg:residual_len instead.")
  (residual_len m))

(cl:ensure-generic-function 'stopline_distance-val :lambda-list '(m))
(cl:defmethod stopline_distance-val ((m <LocalMapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:stopline_distance-val is deprecated.  Use hadmap_msgs-msg:stopline_distance instead.")
  (stopline_distance m))

(cl:ensure-generic-function 'stopline-val :lambda-list '(m))
(cl:defmethod stopline-val ((m <LocalMapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:stopline-val is deprecated.  Use hadmap_msgs-msg:stopline instead.")
  (stopline m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <LocalMapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:center-val is deprecated.  Use hadmap_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <LocalMapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:left-val is deprecated.  Use hadmap_msgs-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <LocalMapLane>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:right-val is deprecated.  Use hadmap_msgs-msg:right instead.")
  (right m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMapLane>) ostream)
  "Serializes a message object of type '<LocalMapLane>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'residual_len))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'stopline_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stopline) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'center))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'center))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'left))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'right))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMapLane>) istream)
  "Deserializes a message object of type '<LocalMapLane>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'residual_len) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stopline_distance) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stopline) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'center) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'center)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:LocalMapPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'left) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'left)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:LocalMapPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'right) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'right)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:LocalMapPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMapLane>)))
  "Returns string type for a message object of type '<LocalMapLane>"
  "hadmap_msgs/LocalMapLane")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapLane)))
  "Returns string type for a message object of type 'LocalMapLane"
  "hadmap_msgs/LocalMapLane")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMapLane>)))
  "Returns md5sum for a message object of type '<LocalMapLane>"
  "f3a9c307847eb3878abedcf1188d3601")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMapLane)))
  "Returns md5sum for a message object of type 'LocalMapLane"
  "f3a9c307847eb3878abedcf1188d3601")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMapLane>)))
  "Returns full string definition for message of type '<LocalMapLane>"
  (cl:format cl:nil "# lane id~%int32 id~%# residual length~%float32 residual_len~%~%float32 stopline_distance~%geometry_msgs/Point stopline~%~%# central planning points~%LocalMapPoint[] center~%# left boundary~%LocalMapPoint[] left~%# right boundary~%LocalMapPoint[] right~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/LocalMapPoint~%uint8 TYPE_CROSS = 0~%uint8 TYPE_NOT_CROSS = 1~%~%# lane point localization~%geometry_msgs/Point point~%# heading angle~%float32 heading~%# now: cross or not~%uint8 type~%# speed limit~%float32 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMapLane)))
  "Returns full string definition for message of type 'LocalMapLane"
  (cl:format cl:nil "# lane id~%int32 id~%# residual length~%float32 residual_len~%~%float32 stopline_distance~%geometry_msgs/Point stopline~%~%# central planning points~%LocalMapPoint[] center~%# left boundary~%LocalMapPoint[] left~%# right boundary~%LocalMapPoint[] right~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/LocalMapPoint~%uint8 TYPE_CROSS = 0~%uint8 TYPE_NOT_CROSS = 1~%~%# lane point localization~%geometry_msgs/Point point~%# heading angle~%float32 heading~%# now: cross or not~%uint8 type~%# speed limit~%float32 speed_limit~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMapLane>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stopline))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'center) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'left) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'right) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMapLane>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMapLane
    (cl:cons ':id (id msg))
    (cl:cons ':residual_len (residual_len msg))
    (cl:cons ':stopline_distance (stopline_distance msg))
    (cl:cons ':stopline (stopline msg))
    (cl:cons ':center (center msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
))
