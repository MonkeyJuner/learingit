; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude Container.msg.html

(cl:defclass <Container> (roslisp-msg-protocol:ros-message)
  ((container_id
    :reader container_id
    :initarg :container_id
    :type cl:string
    :initform "")
   (container_size
    :reader container_size
    :initarg :container_size
    :type cl:fixnum
    :initform 0)
   (container_weight
    :reader container_weight
    :initarg :container_weight
    :type cl:integer
    :initform 0)
   (container_pos
    :reader container_pos
    :initarg :container_pos
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Container (<Container>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Container>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Container)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<Container> is deprecated: use tos_msgs-msg:Container instead.")))

(cl:ensure-generic-function 'container_id-val :lambda-list '(m))
(cl:defmethod container_id-val ((m <Container>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:container_id-val is deprecated.  Use tos_msgs-msg:container_id instead.")
  (container_id m))

(cl:ensure-generic-function 'container_size-val :lambda-list '(m))
(cl:defmethod container_size-val ((m <Container>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:container_size-val is deprecated.  Use tos_msgs-msg:container_size instead.")
  (container_size m))

(cl:ensure-generic-function 'container_weight-val :lambda-list '(m))
(cl:defmethod container_weight-val ((m <Container>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:container_weight-val is deprecated.  Use tos_msgs-msg:container_weight instead.")
  (container_weight m))

(cl:ensure-generic-function 'container_pos-val :lambda-list '(m))
(cl:defmethod container_pos-val ((m <Container>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:container_pos-val is deprecated.  Use tos_msgs-msg:container_pos instead.")
  (container_pos m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Container>) ostream)
  "Serializes a message object of type '<Container>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'container_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'container_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'container_size)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'container_weight)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'container_pos)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Container>) istream)
  "Deserializes a message object of type '<Container>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'container_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'container_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'container_size)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'container_weight) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'container_pos)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Container>)))
  "Returns string type for a message object of type '<Container>"
  "tos_msgs/Container")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Container)))
  "Returns string type for a message object of type 'Container"
  "tos_msgs/Container")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Container>)))
  "Returns md5sum for a message object of type '<Container>"
  "fd22eca006ec43bbf4e6912d6c115e28")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Container)))
  "Returns md5sum for a message object of type 'Container"
  "fd22eca006ec43bbf4e6912d6c115e28")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Container>)))
  "Returns full string definition for message of type '<Container>"
  (cl:format cl:nil "string container_id~%uint8 container_size~%int32 container_weight~%uint8 container_pos ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Container)))
  "Returns full string definition for message of type 'Container"
  (cl:format cl:nil "string container_id~%uint8 container_size~%int32 container_weight~%uint8 container_pos ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Container>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'container_id))
     1
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Container>))
  "Converts a ROS message object to a list"
  (cl:list 'Container
    (cl:cons ':container_id (container_id msg))
    (cl:cons ':container_size (container_size msg))
    (cl:cons ':container_weight (container_weight msg))
    (cl:cons ':container_pos (container_pos msg))
))
