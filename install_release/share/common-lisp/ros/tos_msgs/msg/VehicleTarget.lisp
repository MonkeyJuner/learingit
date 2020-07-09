; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude VehicleTarget.msg.html

(cl:defclass <VehicleTarget> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0)
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0)
   (chid
    :reader chid
    :initarg :chid
    :type cl:string
    :initform "")
   (stop_point
    :reader stop_point
    :initarg :stop_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (stop_tag_id
    :reader stop_tag_id
    :initarg :stop_tag_id
    :type cl:integer
    :initform 0)
   (stop_tag_type
    :reader stop_tag_type
    :initarg :stop_tag_type
    :type cl:fixnum
    :initform 0)
   (brake_distance
    :reader brake_distance
    :initarg :brake_distance
    :type cl:float
    :initform 0.0)
   (hadmap_stop_shift
    :reader hadmap_stop_shift
    :initarg :hadmap_stop_shift
    :type cl:float
    :initform 0.0)
   (tag_stop_shift
    :reader tag_stop_shift
    :initarg :tag_stop_shift
    :type cl:float
    :initform 0.0)
   (lane_id
    :reader lane_id
    :initarg :lane_id
    :type cl:string
    :initform "")
   (brake_tag_id_forward
    :reader brake_tag_id_forward
    :initarg :brake_tag_id_forward
    :type cl:fixnum
    :initform 0)
   (brake_distance_forward
    :reader brake_distance_forward
    :initarg :brake_distance_forward
    :type cl:float
    :initform 0.0)
   (brake_tag_id_backward
    :reader brake_tag_id_backward
    :initarg :brake_tag_id_backward
    :type cl:fixnum
    :initform 0)
   (brake_distance_backward
    :reader brake_distance_backward
    :initarg :brake_distance_backward
    :type cl:float
    :initform 0.0)
   (vessel_orientation
    :reader vessel_orientation
    :initarg :vessel_orientation
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleTarget (<VehicleTarget>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleTarget>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleTarget)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<VehicleTarget> is deprecated: use tos_msgs-msg:VehicleTarget instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:task_id-val is deprecated.  Use tos_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))

(cl:ensure-generic-function 'chid-val :lambda-list '(m))
(cl:defmethod chid-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:chid-val is deprecated.  Use tos_msgs-msg:chid instead.")
  (chid m))

(cl:ensure-generic-function 'stop_point-val :lambda-list '(m))
(cl:defmethod stop_point-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:stop_point-val is deprecated.  Use tos_msgs-msg:stop_point instead.")
  (stop_point m))

(cl:ensure-generic-function 'stop_tag_id-val :lambda-list '(m))
(cl:defmethod stop_tag_id-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:stop_tag_id-val is deprecated.  Use tos_msgs-msg:stop_tag_id instead.")
  (stop_tag_id m))

(cl:ensure-generic-function 'stop_tag_type-val :lambda-list '(m))
(cl:defmethod stop_tag_type-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:stop_tag_type-val is deprecated.  Use tos_msgs-msg:stop_tag_type instead.")
  (stop_tag_type m))

(cl:ensure-generic-function 'brake_distance-val :lambda-list '(m))
(cl:defmethod brake_distance-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:brake_distance-val is deprecated.  Use tos_msgs-msg:brake_distance instead.")
  (brake_distance m))

(cl:ensure-generic-function 'hadmap_stop_shift-val :lambda-list '(m))
(cl:defmethod hadmap_stop_shift-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:hadmap_stop_shift-val is deprecated.  Use tos_msgs-msg:hadmap_stop_shift instead.")
  (hadmap_stop_shift m))

(cl:ensure-generic-function 'tag_stop_shift-val :lambda-list '(m))
(cl:defmethod tag_stop_shift-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:tag_stop_shift-val is deprecated.  Use tos_msgs-msg:tag_stop_shift instead.")
  (tag_stop_shift m))

(cl:ensure-generic-function 'lane_id-val :lambda-list '(m))
(cl:defmethod lane_id-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:lane_id-val is deprecated.  Use tos_msgs-msg:lane_id instead.")
  (lane_id m))

(cl:ensure-generic-function 'brake_tag_id_forward-val :lambda-list '(m))
(cl:defmethod brake_tag_id_forward-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:brake_tag_id_forward-val is deprecated.  Use tos_msgs-msg:brake_tag_id_forward instead.")
  (brake_tag_id_forward m))

(cl:ensure-generic-function 'brake_distance_forward-val :lambda-list '(m))
(cl:defmethod brake_distance_forward-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:brake_distance_forward-val is deprecated.  Use tos_msgs-msg:brake_distance_forward instead.")
  (brake_distance_forward m))

(cl:ensure-generic-function 'brake_tag_id_backward-val :lambda-list '(m))
(cl:defmethod brake_tag_id_backward-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:brake_tag_id_backward-val is deprecated.  Use tos_msgs-msg:brake_tag_id_backward instead.")
  (brake_tag_id_backward m))

(cl:ensure-generic-function 'brake_distance_backward-val :lambda-list '(m))
(cl:defmethod brake_distance_backward-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:brake_distance_backward-val is deprecated.  Use tos_msgs-msg:brake_distance_backward instead.")
  (brake_distance_backward m))

(cl:ensure-generic-function 'vessel_orientation-val :lambda-list '(m))
(cl:defmethod vessel_orientation-val ((m <VehicleTarget>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:vessel_orientation-val is deprecated.  Use tos_msgs-msg:vessel_orientation instead.")
  (vessel_orientation m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleTarget>)))
    "Constants for message type '<VehicleTarget>"
  '((:TAG_ON_ANQIAO . 1)
    (:TAG_ON_CHANGQIAO . 2)
    (:VESSEL_ORIENTATION_FORWARD . 0)
    (:VESSEL_ORIENTATION_BACKWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleTarget)))
    "Constants for message type 'VehicleTarget"
  '((:TAG_ON_ANQIAO . 1)
    (:TAG_ON_CHANGQIAO . 2)
    (:VESSEL_ORIENTATION_FORWARD . 0)
    (:VESSEL_ORIENTATION_BACKWARD . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleTarget>) ostream)
  "Serializes a message object of type '<VehicleTarget>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chid))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stop_point) ostream)
  (cl:let* ((signed (cl:slot-value msg 'stop_tag_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_tag_type)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'hadmap_stop_shift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tag_stop_shift))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lane_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lane_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_tag_id_forward)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_distance_forward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_tag_id_backward)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_distance_backward))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vessel_orientation)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleTarget>) istream)
  "Deserializes a message object of type '<VehicleTarget>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chid) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chid) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stop_point) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stop_tag_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'stop_tag_type)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'hadmap_stop_shift) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tag_stop_shift) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lane_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lane_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_tag_id_forward)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_distance_forward) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_tag_id_backward)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_distance_backward) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vessel_orientation)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleTarget>)))
  "Returns string type for a message object of type '<VehicleTarget>"
  "tos_msgs/VehicleTarget")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleTarget)))
  "Returns string type for a message object of type 'VehicleTarget"
  "tos_msgs/VehicleTarget")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleTarget>)))
  "Returns md5sum for a message object of type '<VehicleTarget>"
  "71267172c38fac2a6326d1c7bdcba91e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleTarget)))
  "Returns md5sum for a message object of type 'VehicleTarget"
  "71267172c38fac2a6326d1c7bdcba91e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleTarget>)))
  "Returns full string definition for message of type '<VehicleTarget>"
  (cl:format cl:nil "uint8 TAG_ON_ANQIAO = 1~%uint8 TAG_ON_CHANGQIAO = 2~%~%uint8 VESSEL_ORIENTATION_FORWARD = 0~%uint8 VESSEL_ORIENTATION_BACKWARD = 1~%~%Header header~%uint32 task_id~%int32 send_packet_id~%string chid~%geometry_msgs/Point stop_point~%int32 stop_tag_id~%uint8 stop_tag_type~%float64 brake_distance~%float64 hadmap_stop_shift~%float64 tag_stop_shift~%string lane_id~%~%uint8 brake_tag_id_forward~%float64 brake_distance_forward~%~%uint8 brake_tag_id_backward~%float64 brake_distance_backward~%~%uint8 vessel_orientation~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleTarget)))
  "Returns full string definition for message of type 'VehicleTarget"
  (cl:format cl:nil "uint8 TAG_ON_ANQIAO = 1~%uint8 TAG_ON_CHANGQIAO = 2~%~%uint8 VESSEL_ORIENTATION_FORWARD = 0~%uint8 VESSEL_ORIENTATION_BACKWARD = 1~%~%Header header~%uint32 task_id~%int32 send_packet_id~%string chid~%geometry_msgs/Point stop_point~%int32 stop_tag_id~%uint8 stop_tag_type~%float64 brake_distance~%float64 hadmap_stop_shift~%float64 tag_stop_shift~%string lane_id~%~%uint8 brake_tag_id_forward~%float64 brake_distance_forward~%~%uint8 brake_tag_id_backward~%float64 brake_distance_backward~%~%uint8 vessel_orientation~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleTarget>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4 (cl:length (cl:slot-value msg 'chid))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stop_point))
     4
     1
     8
     8
     8
     4 (cl:length (cl:slot-value msg 'lane_id))
     1
     8
     1
     8
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleTarget>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleTarget
    (cl:cons ':header (header msg))
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
    (cl:cons ':chid (chid msg))
    (cl:cons ':stop_point (stop_point msg))
    (cl:cons ':stop_tag_id (stop_tag_id msg))
    (cl:cons ':stop_tag_type (stop_tag_type msg))
    (cl:cons ':brake_distance (brake_distance msg))
    (cl:cons ':hadmap_stop_shift (hadmap_stop_shift msg))
    (cl:cons ':tag_stop_shift (tag_stop_shift msg))
    (cl:cons ':lane_id (lane_id msg))
    (cl:cons ':brake_tag_id_forward (brake_tag_id_forward msg))
    (cl:cons ':brake_distance_forward (brake_distance_forward msg))
    (cl:cons ':brake_tag_id_backward (brake_tag_id_backward msg))
    (cl:cons ':brake_distance_backward (brake_distance_backward msg))
    (cl:cons ':vessel_orientation (vessel_orientation msg))
))
