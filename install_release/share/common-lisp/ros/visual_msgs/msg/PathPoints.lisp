; Auto-generated. Do not edit!


(cl:in-package visual_msgs-msg)


;//! \htmlinclude PathPoints.msg.html

(cl:defclass <PathPoints> (roslisp-msg-protocol:ros-message)
  ((pts
    :reader pts
    :initarg :pts
    :type (cl:vector visual_msgs-msg:PathPoint)
   :initform (cl:make-array 0 :element-type 'visual_msgs-msg:PathPoint :initial-element (cl:make-instance 'visual_msgs-msg:PathPoint))))
)

(cl:defclass PathPoints (<PathPoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PathPoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PathPoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visual_msgs-msg:<PathPoints> is deprecated: use visual_msgs-msg:PathPoints instead.")))

(cl:ensure-generic-function 'pts-val :lambda-list '(m))
(cl:defmethod pts-val ((m <PathPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_msgs-msg:pts-val is deprecated.  Use visual_msgs-msg:pts instead.")
  (pts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PathPoints>) ostream)
  "Serializes a message object of type '<PathPoints>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PathPoints>) istream)
  "Deserializes a message object of type '<PathPoints>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'visual_msgs-msg:PathPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PathPoints>)))
  "Returns string type for a message object of type '<PathPoints>"
  "visual_msgs/PathPoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PathPoints)))
  "Returns string type for a message object of type 'PathPoints"
  "visual_msgs/PathPoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PathPoints>)))
  "Returns md5sum for a message object of type '<PathPoints>"
  "01429fadba51614891b44c6668b252ba")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PathPoints)))
  "Returns md5sum for a message object of type 'PathPoints"
  "01429fadba51614891b44c6668b252ba")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PathPoints>)))
  "Returns full string definition for message of type '<PathPoints>"
  (cl:format cl:nil "visual_msgs/PathPoint[] pts~%================================================================================~%MSG: visual_msgs/PathPoint~%# coordinates in [m]~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PathPoints)))
  "Returns full string definition for message of type 'PathPoints"
  (cl:format cl:nil "visual_msgs/PathPoint[] pts~%================================================================================~%MSG: visual_msgs/PathPoint~%# coordinates in [m]~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PathPoints>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PathPoints>))
  "Converts a ROS message object to a list"
  (cl:list 'PathPoints
    (cl:cons ':pts (pts msg))
))
