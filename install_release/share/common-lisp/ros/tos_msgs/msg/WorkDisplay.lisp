; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude WorkDisplay.msg.html

(cl:defclass <WorkDisplay> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (cheid
    :reader cheid
    :initarg :cheid
    :type cl:string
    :initform "")
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (fsm_state
    :reader fsm_state
    :initarg :fsm_state
    :type cl:string
    :initform ""))
)

(cl:defclass WorkDisplay (<WorkDisplay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorkDisplay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorkDisplay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<WorkDisplay> is deprecated: use tos_msgs-msg:WorkDisplay instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WorkDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cheid-val :lambda-list '(m))
(cl:defmethod cheid-val ((m <WorkDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:cheid-val is deprecated.  Use tos_msgs-msg:cheid instead.")
  (cheid m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <WorkDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:task_id-val is deprecated.  Use tos_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'fsm_state-val :lambda-list '(m))
(cl:defmethod fsm_state-val ((m <WorkDisplay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:fsm_state-val is deprecated.  Use tos_msgs-msg:fsm_state instead.")
  (fsm_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorkDisplay>) ostream)
  "Serializes a message object of type '<WorkDisplay>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'cheid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'cheid))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'fsm_state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'fsm_state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorkDisplay>) istream)
  "Deserializes a message object of type '<WorkDisplay>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'cheid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'cheid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'fsm_state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'fsm_state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorkDisplay>)))
  "Returns string type for a message object of type '<WorkDisplay>"
  "tos_msgs/WorkDisplay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorkDisplay)))
  "Returns string type for a message object of type 'WorkDisplay"
  "tos_msgs/WorkDisplay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorkDisplay>)))
  "Returns md5sum for a message object of type '<WorkDisplay>"
  "d618f559e2d43aff5d2195dc0060744a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorkDisplay)))
  "Returns md5sum for a message object of type 'WorkDisplay"
  "d618f559e2d43aff5d2195dc0060744a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorkDisplay>)))
  "Returns full string definition for message of type '<WorkDisplay>"
  (cl:format cl:nil "Header header~%~%# truck id~%string cheid~%~%# task id~%uint32 task_id~%~%# alignment status~%string fsm_state~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorkDisplay)))
  "Returns full string definition for message of type 'WorkDisplay"
  (cl:format cl:nil "Header header~%~%# truck id~%string cheid~%~%# task id~%uint32 task_id~%~%# alignment status~%string fsm_state~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorkDisplay>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'cheid))
     4
     4 (cl:length (cl:slot-value msg 'fsm_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorkDisplay>))
  "Converts a ROS message object to a list"
  (cl:list 'WorkDisplay
    (cl:cons ':header (header msg))
    (cl:cons ':cheid (cheid msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':fsm_state (fsm_state msg))
))
