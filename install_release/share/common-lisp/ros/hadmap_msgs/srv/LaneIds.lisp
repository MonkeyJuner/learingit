; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-srv)


;//! \htmlinclude LaneIds-request.msg.html

(cl:defclass <LaneIds-request> (roslisp-msg-protocol:ros-message)
  ((idx
    :reader idx
    :initarg :idx
    :type cl:integer
    :initform 0))
)

(cl:defclass LaneIds-request (<LaneIds-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneIds-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneIds-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-srv:<LaneIds-request> is deprecated: use hadmap_msgs-srv:LaneIds-request instead.")))

(cl:ensure-generic-function 'idx-val :lambda-list '(m))
(cl:defmethod idx-val ((m <LaneIds-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:idx-val is deprecated.  Use hadmap_msgs-srv:idx instead.")
  (idx m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneIds-request>) ostream)
  "Serializes a message object of type '<LaneIds-request>"
  (cl:let* ((signed (cl:slot-value msg 'idx)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneIds-request>) istream)
  "Deserializes a message object of type '<LaneIds-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'idx) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneIds-request>)))
  "Returns string type for a service object of type '<LaneIds-request>"
  "hadmap_msgs/LaneIdsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneIds-request)))
  "Returns string type for a service object of type 'LaneIds-request"
  "hadmap_msgs/LaneIdsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneIds-request>)))
  "Returns md5sum for a message object of type '<LaneIds-request>"
  "7877fa7c982b195fc7441f07ae1fc06e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneIds-request)))
  "Returns md5sum for a message object of type 'LaneIds-request"
  "7877fa7c982b195fc7441f07ae1fc06e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneIds-request>)))
  "Returns full string definition for message of type '<LaneIds-request>"
  (cl:format cl:nil "int32 idx~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneIds-request)))
  "Returns full string definition for message of type 'LaneIds-request"
  (cl:format cl:nil "int32 idx~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneIds-request>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneIds-request>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneIds-request
    (cl:cons ':idx (idx msg))
))
;//! \htmlinclude LaneIds-response.msg.html

(cl:defclass <LaneIds-response> (roslisp-msg-protocol:ros-message)
  ((lane_ids
    :reader lane_ids
    :initarg :lane_ids
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element "")))
)

(cl:defclass LaneIds-response (<LaneIds-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaneIds-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaneIds-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-srv:<LaneIds-response> is deprecated: use hadmap_msgs-srv:LaneIds-response instead.")))

(cl:ensure-generic-function 'lane_ids-val :lambda-list '(m))
(cl:defmethod lane_ids-val ((m <LaneIds-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-srv:lane_ids-val is deprecated.  Use hadmap_msgs-srv:lane_ids instead.")
  (lane_ids m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaneIds-response>) ostream)
  "Serializes a message object of type '<LaneIds-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lane_ids))))
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
   (cl:slot-value msg 'lane_ids))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaneIds-response>) istream)
  "Deserializes a message object of type '<LaneIds-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lane_ids) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lane_ids)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaneIds-response>)))
  "Returns string type for a service object of type '<LaneIds-response>"
  "hadmap_msgs/LaneIdsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneIds-response)))
  "Returns string type for a service object of type 'LaneIds-response"
  "hadmap_msgs/LaneIdsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaneIds-response>)))
  "Returns md5sum for a message object of type '<LaneIds-response>"
  "7877fa7c982b195fc7441f07ae1fc06e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaneIds-response)))
  "Returns md5sum for a message object of type 'LaneIds-response"
  "7877fa7c982b195fc7441f07ae1fc06e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaneIds-response>)))
  "Returns full string definition for message of type '<LaneIds-response>"
  (cl:format cl:nil "string[] lane_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaneIds-response)))
  "Returns full string definition for message of type 'LaneIds-response"
  (cl:format cl:nil "string[] lane_ids~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaneIds-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lane_ids) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaneIds-response>))
  "Converts a ROS message object to a list"
  (cl:list 'LaneIds-response
    (cl:cons ':lane_ids (lane_ids msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'LaneIds)))
  'LaneIds-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'LaneIds)))
  'LaneIds-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaneIds)))
  "Returns string type for a service object of type '<LaneIds>"
  "hadmap_msgs/LaneIds")