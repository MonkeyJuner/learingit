; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude LocalMapPoint.msg.html

(cl:defclass <LocalMapPoint> (roslisp-msg-protocol:ros-message)
  ((point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (speed_limit
    :reader speed_limit
    :initarg :speed_limit
    :type cl:float
    :initform 0.0))
)

(cl:defclass LocalMapPoint (<LocalMapPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocalMapPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocalMapPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<LocalMapPoint> is deprecated: use hadmap_msgs-msg:LocalMapPoint instead.")))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <LocalMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:point-val is deprecated.  Use hadmap_msgs-msg:point instead.")
  (point m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <LocalMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:heading-val is deprecated.  Use hadmap_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <LocalMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:type-val is deprecated.  Use hadmap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'speed_limit-val :lambda-list '(m))
(cl:defmethod speed_limit-val ((m <LocalMapPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:speed_limit-val is deprecated.  Use hadmap_msgs-msg:speed_limit instead.")
  (speed_limit m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<LocalMapPoint>)))
    "Constants for message type '<LocalMapPoint>"
  '((:TYPE_CROSS . 0)
    (:TYPE_NOT_CROSS . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'LocalMapPoint)))
    "Constants for message type 'LocalMapPoint"
  '((:TYPE_CROSS . 0)
    (:TYPE_NOT_CROSS . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocalMapPoint>) ostream)
  "Serializes a message object of type '<LocalMapPoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_limit))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocalMapPoint>) istream)
  "Deserializes a message object of type '<LocalMapPoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_limit) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocalMapPoint>)))
  "Returns string type for a message object of type '<LocalMapPoint>"
  "hadmap_msgs/LocalMapPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocalMapPoint)))
  "Returns string type for a message object of type 'LocalMapPoint"
  "hadmap_msgs/LocalMapPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocalMapPoint>)))
  "Returns md5sum for a message object of type '<LocalMapPoint>"
  "44cd12dbc0c0b0aceac900ebfe326f30")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocalMapPoint)))
  "Returns md5sum for a message object of type 'LocalMapPoint"
  "44cd12dbc0c0b0aceac900ebfe326f30")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocalMapPoint>)))
  "Returns full string definition for message of type '<LocalMapPoint>"
  (cl:format cl:nil "uint8 TYPE_CROSS = 0~%uint8 TYPE_NOT_CROSS = 1~%~%# lane point localization~%geometry_msgs/Point point~%# heading angle~%float32 heading~%# now: cross or not~%uint8 type~%# speed limit~%float32 speed_limit~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocalMapPoint)))
  "Returns full string definition for message of type 'LocalMapPoint"
  (cl:format cl:nil "uint8 TYPE_CROSS = 0~%uint8 TYPE_NOT_CROSS = 1~%~%# lane point localization~%geometry_msgs/Point point~%# heading angle~%float32 heading~%# now: cross or not~%uint8 type~%# speed limit~%float32 speed_limit~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocalMapPoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
     4
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocalMapPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'LocalMapPoint
    (cl:cons ':point (point msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':type (type msg))
    (cl:cons ':speed_limit (speed_limit msg))
))
