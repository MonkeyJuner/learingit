; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude MapPolyCoeff.msg.html

(cl:defclass <MapPolyCoeff> (roslisp-msg-protocol:ros-message)
  ((offset
    :reader offset
    :initarg :offset
    :type cl:float
    :initform 0.0)
   (poly_parameters
    :reader poly_parameters
    :initarg :poly_parameters
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass MapPolyCoeff (<MapPolyCoeff>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapPolyCoeff>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapPolyCoeff)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<MapPolyCoeff> is deprecated: use hadmap_msgs-msg:MapPolyCoeff instead.")))

(cl:ensure-generic-function 'offset-val :lambda-list '(m))
(cl:defmethod offset-val ((m <MapPolyCoeff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:offset-val is deprecated.  Use hadmap_msgs-msg:offset instead.")
  (offset m))

(cl:ensure-generic-function 'poly_parameters-val :lambda-list '(m))
(cl:defmethod poly_parameters-val ((m <MapPolyCoeff>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:poly_parameters-val is deprecated.  Use hadmap_msgs-msg:poly_parameters instead.")
  (poly_parameters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapPolyCoeff>) ostream)
  "Serializes a message object of type '<MapPolyCoeff>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'offset))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'poly_parameters))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'poly_parameters))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapPolyCoeff>) istream)
  "Deserializes a message object of type '<MapPolyCoeff>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'offset) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'poly_parameters) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'poly_parameters)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapPolyCoeff>)))
  "Returns string type for a message object of type '<MapPolyCoeff>"
  "hadmap_msgs/MapPolyCoeff")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapPolyCoeff)))
  "Returns string type for a message object of type 'MapPolyCoeff"
  "hadmap_msgs/MapPolyCoeff")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapPolyCoeff>)))
  "Returns md5sum for a message object of type '<MapPolyCoeff>"
  "e66720b6436770bcd662ec869090bc14")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapPolyCoeff)))
  "Returns md5sum for a message object of type 'MapPolyCoeff"
  "e66720b6436770bcd662ec869090bc14")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapPolyCoeff>)))
  "Returns full string definition for message of type '<MapPolyCoeff>"
  (cl:format cl:nil "float64 offset~%float64[] poly_parameters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapPolyCoeff)))
  "Returns full string definition for message of type 'MapPolyCoeff"
  (cl:format cl:nil "float64 offset~%float64[] poly_parameters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapPolyCoeff>))
  (cl:+ 0
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'poly_parameters) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapPolyCoeff>))
  "Converts a ROS message object to a list"
  (cl:list 'MapPolyCoeff
    (cl:cons ':offset (offset msg))
    (cl:cons ':poly_parameters (poly_parameters msg))
))
