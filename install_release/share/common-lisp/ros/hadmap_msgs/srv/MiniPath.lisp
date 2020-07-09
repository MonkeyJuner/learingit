; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-srv)


;//! \htmlinclude MiniPath-request.msg.html

(cl:defclass <MiniPath-request> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass MiniPath-request (<MiniPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MiniPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MiniPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-srv:<MiniPath-request> is deprecated: use hadmap_msgs-srv:MiniPath-request instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <MiniPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:position-val is deprecated.  Use hadmap_msgs-srv:position instead.")
  (position m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MiniPath-request>) ostream)
  "Serializes a message object of type '<MiniPath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MiniPath-request>) istream)
  "Deserializes a message object of type '<MiniPath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MiniPath-request>)))
  "Returns string type for a service object of type '<MiniPath-request>"
  "hadmap_msgs/MiniPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiniPath-request)))
  "Returns string type for a service object of type 'MiniPath-request"
  "hadmap_msgs/MiniPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MiniPath-request>)))
  "Returns md5sum for a message object of type '<MiniPath-request>"
  "236efb3fe2cd8a6bbaa85a93082c96ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MiniPath-request)))
  "Returns md5sum for a message object of type 'MiniPath-request"
  "236efb3fe2cd8a6bbaa85a93082c96ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MiniPath-request>)))
  "Returns full string definition for message of type '<MiniPath-request>"
  (cl:format cl:nil "~%geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MiniPath-request)))
  "Returns full string definition for message of type 'MiniPath-request"
  (cl:format cl:nil "~%geometry_msgs/Point position~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MiniPath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MiniPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'MiniPath-request
    (cl:cons ':position (position msg))
))
;//! \htmlinclude MiniPath-response.msg.html

(cl:defclass <MiniPath-response> (roslisp-msg-protocol:ros-message)
  ((joint_path
    :reader joint_path
    :initarg :joint_path
    :type (cl:vector hadmap_msgs-msg:MiniPoint)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:MiniPoint :initial-element (cl:make-instance 'hadmap_msgs-msg:MiniPoint))))
)

(cl:defclass MiniPath-response (<MiniPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MiniPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MiniPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-srv:<MiniPath-response> is deprecated: use hadmap_msgs-srv:MiniPath-response instead.")))

(cl:ensure-generic-function 'joint_path-val :lambda-list '(m))
(cl:defmethod joint_path-val ((m <MiniPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:joint_path-val is deprecated.  Use hadmap_msgs-srv:joint_path instead.")
  (joint_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MiniPath-response>) ostream)
  "Serializes a message object of type '<MiniPath-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MiniPath-response>) istream)
  "Deserializes a message object of type '<MiniPath-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:MiniPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MiniPath-response>)))
  "Returns string type for a service object of type '<MiniPath-response>"
  "hadmap_msgs/MiniPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiniPath-response)))
  "Returns string type for a service object of type 'MiniPath-response"
  "hadmap_msgs/MiniPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MiniPath-response>)))
  "Returns md5sum for a message object of type '<MiniPath-response>"
  "236efb3fe2cd8a6bbaa85a93082c96ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MiniPath-response)))
  "Returns md5sum for a message object of type 'MiniPath-response"
  "236efb3fe2cd8a6bbaa85a93082c96ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MiniPath-response>)))
  "Returns full string definition for message of type '<MiniPath-response>"
  (cl:format cl:nil "~%~%MiniPoint[] joint_path~%~%~%================================================================================~%MSG: hadmap_msgs/MiniPoint~%int32 id~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MiniPath-response)))
  "Returns full string definition for message of type 'MiniPath-response"
  (cl:format cl:nil "~%~%MiniPoint[] joint_path~%~%~%================================================================================~%MSG: hadmap_msgs/MiniPoint~%int32 id~%geometry_msgs/Point point~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MiniPath-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MiniPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'MiniPath-response
    (cl:cons ':joint_path (joint_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'MiniPath)))
  'MiniPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'MiniPath)))
  'MiniPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiniPath)))
  "Returns string type for a service object of type '<MiniPath>"
  "hadmap_msgs/MiniPath")