; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude MapReferLine.msg.html

(cl:defclass <MapReferLine> (roslisp-msg-protocol:ros-message)
  ((start_point
    :reader start_point
    :initarg :start_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (heading
    :reader heading
    :initarg :heading
    :type cl:float
    :initform 0.0)
   (length
    :reader length
    :initarg :length
    :type cl:float
    :initform 0.0)
   (spline_coeff
    :reader spline_coeff
    :initarg :spline_coeff
    :type hadmap_msgs-msg:MapSplineCoeff
    :initform (cl:make-instance 'hadmap_msgs-msg:MapSplineCoeff)))
)

(cl:defclass MapReferLine (<MapReferLine>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapReferLine>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapReferLine)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<MapReferLine> is deprecated: use hadmap_msgs-msg:MapReferLine instead.")))

(cl:ensure-generic-function 'start_point-val :lambda-list '(m))
(cl:defmethod start_point-val ((m <MapReferLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:start_point-val is deprecated.  Use hadmap_msgs-msg:start_point instead.")
  (start_point m))

(cl:ensure-generic-function 'heading-val :lambda-list '(m))
(cl:defmethod heading-val ((m <MapReferLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:heading-val is deprecated.  Use hadmap_msgs-msg:heading instead.")
  (heading m))

(cl:ensure-generic-function 'length-val :lambda-list '(m))
(cl:defmethod length-val ((m <MapReferLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:length-val is deprecated.  Use hadmap_msgs-msg:length instead.")
  (length m))

(cl:ensure-generic-function 'spline_coeff-val :lambda-list '(m))
(cl:defmethod spline_coeff-val ((m <MapReferLine>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:spline_coeff-val is deprecated.  Use hadmap_msgs-msg:spline_coeff instead.")
  (spline_coeff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapReferLine>) ostream)
  "Serializes a message object of type '<MapReferLine>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_point) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'heading))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spline_coeff) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapReferLine>) istream)
  "Deserializes a message object of type '<MapReferLine>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_point) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'heading) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'length) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spline_coeff) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapReferLine>)))
  "Returns string type for a message object of type '<MapReferLine>"
  "hadmap_msgs/MapReferLine")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapReferLine)))
  "Returns string type for a message object of type 'MapReferLine"
  "hadmap_msgs/MapReferLine")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapReferLine>)))
  "Returns md5sum for a message object of type '<MapReferLine>"
  "34d3d1855a2eb9af60516c0b14a979dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapReferLine)))
  "Returns md5sum for a message object of type 'MapReferLine"
  "34d3d1855a2eb9af60516c0b14a979dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapReferLine>)))
  "Returns full string definition for message of type '<MapReferLine>"
  (cl:format cl:nil "~%geometry_msgs/Point start_point~%float64 heading~%float64 length~%MapSplineCoeff spline_coeff~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/MapSplineCoeff~%float64 start_offset~%uint8 degree~%uint8 dimension~%float64 scale~%float64[] spline_knots~%geometry_msgs/Point[] spline_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapReferLine)))
  "Returns full string definition for message of type 'MapReferLine"
  (cl:format cl:nil "~%geometry_msgs/Point start_point~%float64 heading~%float64 length~%MapSplineCoeff spline_coeff~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: hadmap_msgs/MapSplineCoeff~%float64 start_offset~%uint8 degree~%uint8 dimension~%float64 scale~%float64[] spline_knots~%geometry_msgs/Point[] spline_points~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapReferLine>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_point))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spline_coeff))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapReferLine>))
  "Converts a ROS message object to a list"
  (cl:list 'MapReferLine
    (cl:cons ':start_point (start_point msg))
    (cl:cons ':heading (heading msg))
    (cl:cons ':length (length msg))
    (cl:cons ':spline_coeff (spline_coeff msg))
))
