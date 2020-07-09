; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude TargetInfo.msg.html

(cl:defclass <TargetInfo> (roslisp-msg-protocol:ros-message)
  ((target_type
    :reader target_type
    :initarg :target_type
    :type cl:fixnum
    :initform 0)
   (section
    :reader section
    :initarg :section
    :type cl:string
    :initform "")
   (bay
    :reader bay
    :initarg :bay
    :type cl:string
    :initform "")
   (transfer_zone
    :reader transfer_zone
    :initarg :transfer_zone
    :type cl:string
    :initform "")
   (gantry_crane_id
    :reader gantry_crane_id
    :initarg :gantry_crane_id
    :type cl:string
    :initform "")
   (lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:string
    :initform "")
   (container
    :reader container
    :initarg :container
    :type tos_msgs-msg:Container
    :initform (cl:make-instance 'tos_msgs-msg:Container))
   (move_stage
    :reader move_stage
    :initarg :move_stage
    :type cl:string
    :initform "")
   (ppos
    :reader ppos
    :initarg :ppos
    :type cl:string
    :initform ""))
)

(cl:defclass TargetInfo (<TargetInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TargetInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TargetInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<TargetInfo> is deprecated: use tos_msgs-msg:TargetInfo instead.")))

(cl:ensure-generic-function 'target_type-val :lambda-list '(m))
(cl:defmethod target_type-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:target_type-val is deprecated.  Use tos_msgs-msg:target_type instead.")
  (target_type m))

(cl:ensure-generic-function 'section-val :lambda-list '(m))
(cl:defmethod section-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:section-val is deprecated.  Use tos_msgs-msg:section instead.")
  (section m))

(cl:ensure-generic-function 'bay-val :lambda-list '(m))
(cl:defmethod bay-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:bay-val is deprecated.  Use tos_msgs-msg:bay instead.")
  (bay m))

(cl:ensure-generic-function 'transfer_zone-val :lambda-list '(m))
(cl:defmethod transfer_zone-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:transfer_zone-val is deprecated.  Use tos_msgs-msg:transfer_zone instead.")
  (transfer_zone m))

(cl:ensure-generic-function 'gantry_crane_id-val :lambda-list '(m))
(cl:defmethod gantry_crane_id-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:gantry_crane_id-val is deprecated.  Use tos_msgs-msg:gantry_crane_id instead.")
  (gantry_crane_id m))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:lane_id-val is deprecated.  Use tos_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'container-val :lambda-list '(m))
(cl:defmethod container-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:container-val is deprecated.  Use tos_msgs-msg:container instead.")
  (container m))

(cl:ensure-generic-function 'move_stage-val :lambda-list '(m))
(cl:defmethod move_stage-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:move_stage-val is deprecated.  Use tos_msgs-msg:move_stage instead.")
  (move_stage m))

(cl:ensure-generic-function 'ppos-val :lambda-list '(m))
(cl:defmethod ppos-val ((m <TargetInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:ppos-val is deprecated.  Use tos_msgs-msg:ppos instead.")
  (ppos m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<TargetInfo>)))
    "Constants for message type '<TargetInfo>"
  '((:NORMAL_YARD_CRANE . 0)
    (:AUTOMATIC_YARD_CRANE . 1)
    (:GANTRY_CRANE . 2)
    (:TRANSFER_ZONE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'TargetInfo)))
    "Constants for message type 'TargetInfo"
  '((:NORMAL_YARD_CRANE . 0)
    (:AUTOMATIC_YARD_CRANE . 1)
    (:GANTRY_CRANE . 2)
    (:TRANSFER_ZONE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TargetInfo>) ostream)
  "Serializes a message object of type '<TargetInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_type)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'section))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'section))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bay))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bay))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transfer_zone))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transfer_zone))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'gantry_crane_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'gantry_crane_id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lane_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lane_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'container) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'move_stage))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'move_stage))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ppos))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ppos))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TargetInfo>) istream)
  "Deserializes a message object of type '<TargetInfo>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_type)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'section) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'section) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bay) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bay) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transfer_zone) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transfer_zone) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'gantry_crane_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'gantry_crane_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lane_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'container) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'move_stage) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'move_stage) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ppos) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ppos) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TargetInfo>)))
  "Returns string type for a message object of type '<TargetInfo>"
  "tos_msgs/TargetInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TargetInfo)))
  "Returns string type for a message object of type 'TargetInfo"
  "tos_msgs/TargetInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TargetInfo>)))
  "Returns md5sum for a message object of type '<TargetInfo>"
  "677d252aa7d6e6bd4ba970587d5907b8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TargetInfo)))
  "Returns md5sum for a message object of type 'TargetInfo"
  "677d252aa7d6e6bd4ba970587d5907b8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TargetInfo>)))
  "Returns full string definition for message of type '<TargetInfo>"
  (cl:format cl:nil "# target type~%uint8 NORMAL_YARD_CRANE         = 0~%uint8 AUTOMATIC_YARD_CRANE      = 1~%uint8 GANTRY_CRANE      	= 2~%uint8 TRANSFER_ZONE      	= 3~%~%# target~%uint8 target_type~%~%# target info~%string section~%string bay~%string transfer_zone~%~%string gantry_crane_id~%string lane_id~%~%# container~%Container container~%~%# move stage~%string move_stage~%~%# for test~%string ppos~%~%================================================================================~%MSG: tos_msgs/Container~%string container_id~%uint8 container_size~%int32 container_weight~%uint8 container_pos ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TargetInfo)))
  "Returns full string definition for message of type 'TargetInfo"
  (cl:format cl:nil "# target type~%uint8 NORMAL_YARD_CRANE         = 0~%uint8 AUTOMATIC_YARD_CRANE      = 1~%uint8 GANTRY_CRANE      	= 2~%uint8 TRANSFER_ZONE      	= 3~%~%# target~%uint8 target_type~%~%# target info~%string section~%string bay~%string transfer_zone~%~%string gantry_crane_id~%string lane_id~%~%# container~%Container container~%~%# move stage~%string move_stage~%~%# for test~%string ppos~%~%================================================================================~%MSG: tos_msgs/Container~%string container_id~%uint8 container_size~%int32 container_weight~%uint8 container_pos ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TargetInfo>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'section))
     4 (cl:length (cl:slot-value msg 'bay))
     4 (cl:length (cl:slot-value msg 'transfer_zone))
     4 (cl:length (cl:slot-value msg 'gantry_crane_id))
     4 (cl:length (cl:slot-value msg 'lane_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'container))
     4 (cl:length (cl:slot-value msg 'move_stage))
     4 (cl:length (cl:slot-value msg 'ppos))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TargetInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'TargetInfo
    (cl:cons ':target_type (target_type msg))
    (cl:cons ':section (section msg))
    (cl:cons ':bay (bay msg))
    (cl:cons ':transfer_zone (transfer_zone msg))
    (cl:cons ':gantry_crane_id (gantry_crane_id msg))
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':container (container msg))
    (cl:cons ':move_stage (move_stage msg))
    (cl:cons ':ppos (ppos msg))
))
