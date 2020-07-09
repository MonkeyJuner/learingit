; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-srv)


;//! \htmlinclude Routing-request.msg.html

(cl:defclass <Routing-request> (roslisp-msg-protocol:ros-message)
  ((start_lane_id
    :reader start_lane_id
    :initarg :start_lane_id
    :type cl:string
    :initform "")
   (dst_lane_id
    :reader dst_lane_id
    :initarg :dst_lane_id
    :type cl:string
    :initform ""))
)

(cl:defclass Routing-request (<Routing-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Routing-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Routing-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-srv:<Routing-request> is deprecated: use hadmap_msgs-srv:Routing-request instead.")))

(cl:ensure-generic-function 'start_lane_id-val :lambda-list '(m))
(cl:defmethod start_lane_id-val ((m <Routing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:start_lane_id-val is deprecated.  Use hadmap_msgs-srv:start_lane_id instead.")
  (start_lane_id m))

(cl:ensure-generic-function 'dst_lane_id-val :lambda-list '(m))
(cl:defmethod dst_lane_id-val ((m <Routing-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:dst_lane_id-val is deprecated.  Use hadmap_msgs-srv:dst_lane_id instead.")
  (dst_lane_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Routing-request>) ostream)
  "Serializes a message object of type '<Routing-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'start_lane_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'start_lane_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'dst_lane_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'dst_lane_id))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Routing-request>) istream)
  "Deserializes a message object of type '<Routing-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'start_lane_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'start_lane_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'dst_lane_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'dst_lane_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Routing-request>)))
  "Returns string type for a service object of type '<Routing-request>"
  "hadmap_msgs/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Routing-request)))
  "Returns string type for a service object of type 'Routing-request"
  "hadmap_msgs/RoutingRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Routing-request>)))
  "Returns md5sum for a message object of type '<Routing-request>"
  "1d09afa1493d77ed4bdd69b158969b61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Routing-request)))
  "Returns md5sum for a message object of type 'Routing-request"
  "1d09afa1493d77ed4bdd69b158969b61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Routing-request>)))
  "Returns full string definition for message of type '<Routing-request>"
  (cl:format cl:nil "string start_lane_id~%string dst_lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Routing-request)))
  "Returns full string definition for message of type 'Routing-request"
  (cl:format cl:nil "string start_lane_id~%string dst_lane_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Routing-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'start_lane_id))
     4 (cl:length (cl:slot-value msg 'dst_lane_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Routing-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Routing-request
    (cl:cons ':start_lane_id (start_lane_id msg))
    (cl:cons ':dst_lane_id (dst_lane_id msg))
))
;//! \htmlinclude Routing-response.msg.html

(cl:defclass <Routing-response> (roslisp-msg-protocol:ros-message)
  ((planning_path
    :reader planning_path
    :initarg :planning_path
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass Routing-response (<Routing-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Routing-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Routing-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-srv:<Routing-response> is deprecated: use hadmap_msgs-srv:Routing-response instead.")))

(cl:ensure-generic-function 'planning_path-val :lambda-list '(m))
(cl:defmethod planning_path-val ((m <Routing-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:planning_path-val is deprecated.  Use hadmap_msgs-srv:planning_path instead.")
  (planning_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Routing-response>) ostream)
  "Serializes a message object of type '<Routing-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'planning_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'planning_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Routing-response>) istream)
  "Deserializes a message object of type '<Routing-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'planning_path) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'planning_path)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Routing-response>)))
  "Returns string type for a service object of type '<Routing-response>"
  "hadmap_msgs/RoutingResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Routing-response)))
  "Returns string type for a service object of type 'Routing-response"
  "hadmap_msgs/RoutingResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Routing-response>)))
  "Returns md5sum for a message object of type '<Routing-response>"
  "1d09afa1493d77ed4bdd69b158969b61")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Routing-response)))
  "Returns md5sum for a message object of type 'Routing-response"
  "1d09afa1493d77ed4bdd69b158969b61")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Routing-response>)))
  "Returns full string definition for message of type '<Routing-response>"
  (cl:format cl:nil "string[] planning_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Routing-response)))
  "Returns full string definition for message of type 'Routing-response"
  (cl:format cl:nil "string[] planning_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Routing-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'planning_path) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Routing-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Routing-response
    (cl:cons ':planning_path (planning_path msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Routing)))
  'Routing-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Routing)))
  'Routing-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Routing)))
  "Returns string type for a service object of type '<Routing>"
  "hadmap_msgs/Routing")