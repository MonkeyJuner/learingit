; Auto-generated. Do not edit!


(cl:in-package localization_msgs-msg)


;//! \htmlinclude StopPoint.msg.html

(cl:defclass <StopPoint> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (distance_shift
    :reader distance_shift
    :initarg :distance_shift
    :type cl:float
    :initform 0.0)
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (distance_vertical
    :reader distance_vertical
    :initarg :distance_vertical
    :type cl:float
    :initform 0.0)
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (decelerate
    :reader decelerate
    :initarg :decelerate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass StopPoint (<StopPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StopPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StopPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name localization_msgs-msg:<StopPoint> is deprecated: use localization_msgs-msg:StopPoint instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <StopPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msgs-msg:id-val is deprecated.  Use localization_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'distance_shift-val :lambda-list '(m))
(cl:defmethod distance_shift-val ((m <StopPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msgs-msg:distance_shift-val is deprecated.  Use localization_msgs-msg:distance_shift instead.")
  (distance_shift m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <StopPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msgs-msg:angle-val is deprecated.  Use localization_msgs-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'distance_vertical-val :lambda-list '(m))
(cl:defmethod distance_vertical-val ((m <StopPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msgs-msg:distance_vertical-val is deprecated.  Use localization_msgs-msg:distance_vertical instead.")
  (distance_vertical m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <StopPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msgs-msg:type-val is deprecated.  Use localization_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'decelerate-val :lambda-list '(m))
(cl:defmethod decelerate-val ((m <StopPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader localization_msgs-msg:decelerate-val is deprecated.  Use localization_msgs-msg:decelerate instead.")
  (decelerate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<StopPoint>)))
    "Constants for message type '<StopPoint>"
  '((:TYPE_CRANE . 0)
    (:TYPE_YARD . 1)
    (:TYPE_OTHER . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'StopPoint)))
    "Constants for message type 'StopPoint"
  '((:TYPE_CRANE . 0)
    (:TYPE_YARD . 1)
    (:TYPE_OTHER . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StopPoint>) ostream)
  "Serializes a message object of type '<StopPoint>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_shift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'distance_vertical))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'decelerate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StopPoint>) istream)
  "Deserializes a message object of type '<StopPoint>"
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
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_shift) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'distance_vertical) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'decelerate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StopPoint>)))
  "Returns string type for a message object of type '<StopPoint>"
  "localization_msgs/StopPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StopPoint)))
  "Returns string type for a message object of type 'StopPoint"
  "localization_msgs/StopPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StopPoint>)))
  "Returns md5sum for a message object of type '<StopPoint>"
  "857da375e16b789899f14886149cb405")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StopPoint)))
  "Returns md5sum for a message object of type 'StopPoint"
  "857da375e16b789899f14886149cb405")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StopPoint>)))
  "Returns full string definition for message of type '<StopPoint>"
  (cl:format cl:nil "# main key~%int32 id~%~%# distance, [0, unlimit]~%float64 distance_shift~%~%~%float64 angle # rad~%float64 distance_vertical~%~%~%~%uint8 TYPE_CRANE = 0~%uint8 TYPE_YARD = 1~%uint8 TYPE_OTHER = 2~%~%# type~%uint8 type~%~%# decelerate flag~%bool decelerate # true~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StopPoint)))
  "Returns full string definition for message of type 'StopPoint"
  (cl:format cl:nil "# main key~%int32 id~%~%# distance, [0, unlimit]~%float64 distance_shift~%~%~%float64 angle # rad~%float64 distance_vertical~%~%~%~%uint8 TYPE_CRANE = 0~%uint8 TYPE_YARD = 1~%uint8 TYPE_OTHER = 2~%~%# type~%uint8 type~%~%# decelerate flag~%bool decelerate # true~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StopPoint>))
  (cl:+ 0
     4
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StopPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'StopPoint
    (cl:cons ':id (id msg))
    (cl:cons ':distance_shift (distance_shift msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':distance_vertical (distance_vertical msg))
    (cl:cons ':type (type msg))
    (cl:cons ':decelerate (decelerate msg))
))
