; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude MiniPoint.msg.html

(cl:defclass <MiniPoint> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (point
    :reader point
    :initarg :point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass MiniPoint (<MiniPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MiniPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MiniPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<MiniPoint> is deprecated: use hadmap_msgs-msg:MiniPoint instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <MiniPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:id-val is deprecated.  Use hadmap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'point-val :lambda-list '(m))
(cl:defmethod point-val ((m <MiniPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:point-val is deprecated.  Use hadmap_msgs-msg:point instead.")
  (point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MiniPoint>) ostream)
  "Serializes a message object of type '<MiniPoint>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'point) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MiniPoint>) istream)
  "Deserializes a message object of type '<MiniPoint>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'point) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MiniPoint>)))
  "Returns string type for a message object of type '<MiniPoint>"
  "hadmap_msgs/MiniPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiniPoint)))
  "Returns string type for a message object of type 'MiniPoint"
  "hadmap_msgs/MiniPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MiniPoint>)))
  "Returns md5sum for a message object of type '<MiniPoint>"
  "039fd761ab13b0a87ce0c7bb4c023250")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MiniPoint)))
  "Returns md5sum for a message object of type 'MiniPoint"
  "039fd761ab13b0a87ce0c7bb4c023250")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MiniPoint>)))
  "Returns full string definition for message of type '<MiniPoint>"
  (cl:format cl:nil "int32 id~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MiniPoint)))
  "Returns full string definition for message of type 'MiniPoint"
  (cl:format cl:nil "int32 id~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MiniPoint>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'point))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MiniPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'MiniPoint
    (cl:cons ':id (id msg))
    (cl:cons ':point (point msg))
))
