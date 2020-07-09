; Auto-generated. Do not edit!


(cl:in-package tos_msgs-msg)


;//! \htmlinclude YardCraneStatus.msg.html

(cl:defclass <YardCraneStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (WorkOrder
    :reader WorkOrder
    :initarg :WorkOrder
    :type cl:string
    :initform "")
   (CraneNBR
    :reader CraneNBR
    :initarg :CraneNBR
    :type cl:integer
    :initform 0)
   (TruckNBR
    :reader TruckNBR
    :initarg :TruckNBR
    :type cl:string
    :initform "")
   (Time
    :reader Time
    :initarg :Time
    :type cl:string
    :initform "")
   (GantryPosition
    :reader GantryPosition
    :initarg :GantryPosition
    :type cl:float
    :initform 0.0)
   (GantryMove
    :reader GantryMove
    :initarg :GantryMove
    :type cl:fixnum
    :initform 0)
   (TrolleyPosition
    :reader TrolleyPosition
    :initarg :TrolleyPosition
    :type cl:float
    :initform 0.0)
   (HositPosition
    :reader HositPosition
    :initarg :HositPosition
    :type cl:float
    :initform 0.0)
   (SpreadLock
    :reader SpreadLock
    :initarg :SpreadLock
    :type cl:fixnum
    :initform 0)
   (SpreadLoad
    :reader SpreadLoad
    :initarg :SpreadLoad
    :type cl:float
    :initform 0.0)
   (SpreadWorkType
    :reader SpreadWorkType
    :initarg :SpreadWorkType
    :type cl:integer
    :initform 0)
   (VasStatus
    :reader VasStatus
    :initarg :VasStatus
    :type cl:fixnum
    :initform 0)
   (TruckLoad
    :reader TruckLoad
    :initarg :TruckLoad
    :type cl:fixnum
    :initform 0)
   (TruckInPosition
    :reader TruckInPosition
    :initarg :TruckInPosition
    :type cl:fixnum
    :initform 0)
   (SpreadOnChassis
    :reader SpreadOnChassis
    :initarg :SpreadOnChassis
    :type cl:fixnum
    :initform 0)
   (TruckLeave
    :reader TruckLeave
    :initarg :TruckLeave
    :type cl:fixnum
    :initform 0)
   (Distance
    :reader Distance
    :initarg :Distance
    :type cl:integer
    :initform 0)
   (send_packet_id
    :reader send_packet_id
    :initarg :send_packet_id
    :type cl:integer
    :initform 0))
)

(cl:defclass YardCraneStatus (<YardCraneStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <YardCraneStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'YardCraneStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-msg:<YardCraneStatus> is deprecated: use tos_msgs-msg:YardCraneStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:header-val is deprecated.  Use tos_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'WorkOrder-val :lambda-list '(m))
(cl:defmethod WorkOrder-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:WorkOrder-val is deprecated.  Use tos_msgs-msg:WorkOrder instead.")
  (WorkOrder m))

(cl:ensure-generic-function 'CraneNBR-val :lambda-list '(m))
(cl:defmethod CraneNBR-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:CraneNBR-val is deprecated.  Use tos_msgs-msg:CraneNBR instead.")
  (CraneNBR m))

(cl:ensure-generic-function 'TruckNBR-val :lambda-list '(m))
(cl:defmethod TruckNBR-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:TruckNBR-val is deprecated.  Use tos_msgs-msg:TruckNBR instead.")
  (TruckNBR m))

(cl:ensure-generic-function 'Time-val :lambda-list '(m))
(cl:defmethod Time-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:Time-val is deprecated.  Use tos_msgs-msg:Time instead.")
  (Time m))

(cl:ensure-generic-function 'GantryPosition-val :lambda-list '(m))
(cl:defmethod GantryPosition-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:GantryPosition-val is deprecated.  Use tos_msgs-msg:GantryPosition instead.")
  (GantryPosition m))

(cl:ensure-generic-function 'GantryMove-val :lambda-list '(m))
(cl:defmethod GantryMove-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:GantryMove-val is deprecated.  Use tos_msgs-msg:GantryMove instead.")
  (GantryMove m))

(cl:ensure-generic-function 'TrolleyPosition-val :lambda-list '(m))
(cl:defmethod TrolleyPosition-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:TrolleyPosition-val is deprecated.  Use tos_msgs-msg:TrolleyPosition instead.")
  (TrolleyPosition m))

(cl:ensure-generic-function 'HositPosition-val :lambda-list '(m))
(cl:defmethod HositPosition-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:HositPosition-val is deprecated.  Use tos_msgs-msg:HositPosition instead.")
  (HositPosition m))

(cl:ensure-generic-function 'SpreadLock-val :lambda-list '(m))
(cl:defmethod SpreadLock-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:SpreadLock-val is deprecated.  Use tos_msgs-msg:SpreadLock instead.")
  (SpreadLock m))

(cl:ensure-generic-function 'SpreadLoad-val :lambda-list '(m))
(cl:defmethod SpreadLoad-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:SpreadLoad-val is deprecated.  Use tos_msgs-msg:SpreadLoad instead.")
  (SpreadLoad m))

(cl:ensure-generic-function 'SpreadWorkType-val :lambda-list '(m))
(cl:defmethod SpreadWorkType-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:SpreadWorkType-val is deprecated.  Use tos_msgs-msg:SpreadWorkType instead.")
  (SpreadWorkType m))

(cl:ensure-generic-function 'VasStatus-val :lambda-list '(m))
(cl:defmethod VasStatus-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:VasStatus-val is deprecated.  Use tos_msgs-msg:VasStatus instead.")
  (VasStatus m))

(cl:ensure-generic-function 'TruckLoad-val :lambda-list '(m))
(cl:defmethod TruckLoad-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:TruckLoad-val is deprecated.  Use tos_msgs-msg:TruckLoad instead.")
  (TruckLoad m))

(cl:ensure-generic-function 'TruckInPosition-val :lambda-list '(m))
(cl:defmethod TruckInPosition-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:TruckInPosition-val is deprecated.  Use tos_msgs-msg:TruckInPosition instead.")
  (TruckInPosition m))

(cl:ensure-generic-function 'SpreadOnChassis-val :lambda-list '(m))
(cl:defmethod SpreadOnChassis-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:SpreadOnChassis-val is deprecated.  Use tos_msgs-msg:SpreadOnChassis instead.")
  (SpreadOnChassis m))

(cl:ensure-generic-function 'TruckLeave-val :lambda-list '(m))
(cl:defmethod TruckLeave-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:TruckLeave-val is deprecated.  Use tos_msgs-msg:TruckLeave instead.")
  (TruckLeave m))

(cl:ensure-generic-function 'Distance-val :lambda-list '(m))
(cl:defmethod Distance-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:Distance-val is deprecated.  Use tos_msgs-msg:Distance instead.")
  (Distance m))

(cl:ensure-generic-function 'send_packet_id-val :lambda-list '(m))
(cl:defmethod send_packet_id-val ((m <YardCraneStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-msg:send_packet_id-val is deprecated.  Use tos_msgs-msg:send_packet_id instead.")
  (send_packet_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <YardCraneStatus>) ostream)
  "Serializes a message object of type '<YardCraneStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'WorkOrder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'WorkOrder))
  (cl:let* ((signed (cl:slot-value msg 'CraneNBR)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'TruckNBR))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'TruckNBR))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'Time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'Time))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'GantryPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GantryMove)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'TrolleyPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'HositPosition))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SpreadLock)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'SpreadLoad))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'SpreadWorkType)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VasStatus)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TruckLoad)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TruckInPosition)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SpreadOnChassis)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TruckLeave)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'Distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'send_packet_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <YardCraneStatus>) istream)
  "Deserializes a message object of type '<YardCraneStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'WorkOrder) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'WorkOrder) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'CraneNBR) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'TruckNBR) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'TruckNBR) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Time) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'Time) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'GantryPosition) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GantryMove)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'TrolleyPosition) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'HositPosition) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SpreadLock)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'SpreadLoad) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'SpreadWorkType) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'VasStatus)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TruckLoad)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TruckInPosition)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'SpreadOnChassis)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'TruckLeave)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'send_packet_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<YardCraneStatus>)))
  "Returns string type for a message object of type '<YardCraneStatus>"
  "tos_msgs/YardCraneStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'YardCraneStatus)))
  "Returns string type for a message object of type 'YardCraneStatus"
  "tos_msgs/YardCraneStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<YardCraneStatus>)))
  "Returns md5sum for a message object of type '<YardCraneStatus>"
  "6bc9a1eb677c70a420a1ae553255debf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'YardCraneStatus)))
  "Returns md5sum for a message object of type 'YardCraneStatus"
  "6bc9a1eb677c70a420a1ae553255debf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<YardCraneStatus>)))
  "Returns full string definition for message of type '<YardCraneStatus>"
  (cl:format cl:nil "Header header~%~%string WorkOrder~%int32 CraneNBR~%string TruckNBR~%string Time~%float64 GantryPosition~%uint8 GantryMove~%float64 TrolleyPosition~%float64 HositPosition~%uint8 SpreadLock~%float64 SpreadLoad~%int32 SpreadWorkType~%uint8 VasStatus~%uint8 TruckLoad~%uint8 TruckInPosition~%uint8 SpreadOnChassis~%uint8 TruckLeave~%int32 Distance~%~%int32 send_packet_id~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'YardCraneStatus)))
  "Returns full string definition for message of type 'YardCraneStatus"
  (cl:format cl:nil "Header header~%~%string WorkOrder~%int32 CraneNBR~%string TruckNBR~%string Time~%float64 GantryPosition~%uint8 GantryMove~%float64 TrolleyPosition~%float64 HositPosition~%uint8 SpreadLock~%float64 SpreadLoad~%int32 SpreadWorkType~%uint8 VasStatus~%uint8 TruckLoad~%uint8 TruckInPosition~%uint8 SpreadOnChassis~%uint8 TruckLeave~%int32 Distance~%~%int32 send_packet_id~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <YardCraneStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'WorkOrder))
     4
     4 (cl:length (cl:slot-value msg 'TruckNBR))
     4 (cl:length (cl:slot-value msg 'Time))
     8
     1
     8
     8
     1
     8
     4
     1
     1
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <YardCraneStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'YardCraneStatus
    (cl:cons ':header (header msg))
    (cl:cons ':WorkOrder (WorkOrder msg))
    (cl:cons ':CraneNBR (CraneNBR msg))
    (cl:cons ':TruckNBR (TruckNBR msg))
    (cl:cons ':Time (Time msg))
    (cl:cons ':GantryPosition (GantryPosition msg))
    (cl:cons ':GantryMove (GantryMove msg))
    (cl:cons ':TrolleyPosition (TrolleyPosition msg))
    (cl:cons ':HositPosition (HositPosition msg))
    (cl:cons ':SpreadLock (SpreadLock msg))
    (cl:cons ':SpreadLoad (SpreadLoad msg))
    (cl:cons ':SpreadWorkType (SpreadWorkType msg))
    (cl:cons ':VasStatus (VasStatus msg))
    (cl:cons ':TruckLoad (TruckLoad msg))
    (cl:cons ':TruckInPosition (TruckInPosition msg))
    (cl:cons ':SpreadOnChassis (SpreadOnChassis msg))
    (cl:cons ':TruckLeave (TruckLeave msg))
    (cl:cons ':Distance (Distance msg))
    (cl:cons ':send_packet_id (send_packet_id msg))
))
