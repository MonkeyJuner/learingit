; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TruckTarget.msg.html

(cl:defclass <TruckTarget> (roslisp-msg-protocol:ros-message)
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
   (sub_task_id
    :reader sub_task_id
    :initarg :sub_task_id
    :type cl:fixnum
    :initform 0)
   (targets
    :reader targets
    :initarg :targets
    :type (cl:vector tos_msgs-msg:TargetInfo)
   :initform (cl:make-array 0 :element-type 'tos_msgs-msg:TargetInfo :initial-element (cl:make-instance 'tos_msgs-msg:TargetInfo)))
   (display_msg
    :reader display_msg
    :initarg :display_msg
    :type cl:string
    :initform "")
   (operate_type
    :reader operate_type
    :initarg :operate_type
    :type cl:fixnum
    :initform 0)
   (command_type
    :reader command_type
    :initarg :command_type
    :type cl:fixnum
    :initform 0)
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0))
)

(cl:defclass TruckTarget (<TruckTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TruckTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TruckTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TruckTarget> is deprecated: use tos_msgs-msg:TruckTarget instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'cheid-val :lambda-list '(m))
(cl:defmethod cheid-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:cheid-val is deprecated.  Use tos_msgs-msg:cheid instead.")
  (cheid m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:task_id-val is deprecated.  Use tos_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'sub_task_id-val :lambda-list '(m))
(cl:defmethod sub_task_id-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:sub_task_id-val is deprecated.  Use tos_msgs-msg:sub_task_id instead.")
  (sub_task_id m))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:targets-val is deprecated.  Use tos_msgs-msg:targets instead.")
  (targets m))

(cl:ensure-generic-function 'display_msg-val :lambda-list '(m))
(cl:defmethod display_msg-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:display_msg-val is deprecated.  Use tos_msgs-msg:display_msg instead.")
  (display_msg m))

(cl:ensure-generic-function 'operate_type-val :lambda-list '(m))
(cl:defmethod operate_type-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:operate_type-val is deprecated.  Use tos_msgs-msg:operate_type instead.")
  (operate_type m))

(cl:ensure-generic-function 'command_type-val :lambda-list '(m))
(cl:defmethod command_type-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:command_type-val is deprecated.  Use tos_msgs-msg:command_type instead.")
  (command_type m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <TruckTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TruckTarget>)))
    "Constants for message type '<TruckTarget>"
  '((:START_FROM . 0)
    (:ARRIVE_AT . 1)
    (:LOAD . 0)
    (:UNLOAD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TruckTarget)))
    "Constants for message type 'TruckTarget"
  '((:START_FROM . 0)
    (:ARRIVE_AT . 1)
    (:LOAD . 0)
    (:UNLOAD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TruckTarget>) ostream)
  "Serializes a message object of type '<TruckTarget>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sub_task_id)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'targets))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'display_msg))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'display_msg))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operate_type)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TruckTarget>) istream)
  "Deserializes a message object of type '<TruckTarget>"
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sub_task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sub_task_id)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'tos_msgs-msg:TargetInfo))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'display_msg) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'display_msg) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'operate_type)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TruckTarget>)))
  "Returns string type for a message object of type '<TruckTarget>"
  "tos_msgs/TruckTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TruckTarget)))
  "Returns string type for a message object of type 'TruckTarget"
  "tos_msgs/TruckTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TruckTarget>)))
  "Returns md5sum for a message object of type '<TruckTarget>"
  "f554a84fb3643ba35c52d9e4368a490a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TruckTarget)))
  "Returns md5sum for a message object of type 'TruckTarget"
  "f554a84fb3643ba35c52d9e4368a490a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TruckTarget>)))
  "Returns full string definition for message of type '<TruckTarget>"
  (cl:format cl:nil "# command type~%uint8 START_FROM      = 0~%uint8 ARRIVE_AT       = 1~%~%# operate type~%uint8 LOAD	= 0~%uint8 UNLOAD	= 1~%~%~%Header header~%~%# truck id~%string cheid~%~%# task id~%uint32 task_id~%uint16 sub_task_id~%~%# taget info~%TargetInfo[] targets~%~%# display message~%string display_msg~%~%# operate~%uint8 operate_type~%~%# for test~%uint8 command_type~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TargetInfo~%# target type~%uint8 NORMAL_YARD_CRANE         = 0~%uint8 AUTOMATIC_YARD_CRANE      = 1~%uint8 GANTRY_CRANE      	= 2~%uint8 TRANSFER_ZONE      	= 3~%~%# target~%uint8 target_type~%~%# target info~%string section~%string bay~%string transfer_zone~%~%string gantry_crane_id~%string lane_id~%~%# container~%Container container~%~%# move stage~%string move_stage~%~%# for test~%string ppos~%~%================================================================================~%MSG: tos_msgs/Container~%string container_id~%uint8 container_size~%int32 container_weight~%uint8 container_pos ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TruckTarget)))
  "Returns full string definition for message of type 'TruckTarget"
  (cl:format cl:nil "# command type~%uint8 START_FROM      = 0~%uint8 ARRIVE_AT       = 1~%~%# operate type~%uint8 LOAD	= 0~%uint8 UNLOAD	= 1~%~%~%Header header~%~%# truck id~%string cheid~%~%# task id~%uint32 task_id~%uint16 sub_task_id~%~%# taget info~%TargetInfo[] targets~%~%# display message~%string display_msg~%~%# operate~%uint8 operate_type~%~%# for test~%uint8 command_type~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TargetInfo~%# target type~%uint8 NORMAL_YARD_CRANE         = 0~%uint8 AUTOMATIC_YARD_CRANE      = 1~%uint8 GANTRY_CRANE      	= 2~%uint8 TRANSFER_ZONE      	= 3~%~%# target~%uint8 target_type~%~%# target info~%string section~%string bay~%string transfer_zone~%~%string gantry_crane_id~%string lane_id~%~%# container~%Container container~%~%# move stage~%string move_stage~%~%# for test~%string ppos~%~%================================================================================~%MSG: tos_msgs/Container~%string container_id~%uint8 container_size~%int32 container_weight~%uint8 container_pos ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TruckTarget>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'cheid))
     4
     2
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'display_msg))
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TruckTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'TruckTarget
    (cl:cons ':header (header msg))
    (cl:cons ':cheid (cheid msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':sub_task_id (sub_task_id msg))
    (cl:cons ':targets (targets msg))
    (cl:cons ':display_msg (display_msg msg))
    (cl:cons ':operate_type (operate_type msg))
    (cl:cons ':command_type (command_type msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
))
