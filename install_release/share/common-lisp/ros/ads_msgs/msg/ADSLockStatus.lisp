; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSLockStatus.msg.html

(cl:defclass <ADSLockStatus> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (err_codes
    :reader err_codes
    :initarg :err_codes
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass ADSLockStatus (<ADSLockStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSLockStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSLockStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSLockStatus> is deprecated: use ads_msgs-msg:ADSLockStatus instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ADSLockStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:status-val is deprecated.  Use ads_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'err_codes-val :lambda-list '(m))
(cl:defmethod err_codes-val ((m <ADSLockStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:err_codes-val is deprecated.  Use ads_msgs-msg:err_codes instead.")
  (err_codes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ADSLockStatus>)))
    "Constants for message type '<ADSLockStatus>"
  '((:STATUS_LOCK . 0)
    (:STATUS_UNLOCK . 1)
    (:STATUS_UNVALID . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ADSLockStatus)))
    "Constants for message type 'ADSLockStatus"
  '((:STATUS_LOCK . 0)
    (:STATUS_UNLOCK . 1)
    (:STATUS_UNVALID . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSLockStatus>) ostream)
  "Serializes a message object of type '<ADSLockStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'err_codes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'err_codes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSLockStatus>) istream)
  "Deserializes a message object of type '<ADSLockStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'err_codes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'err_codes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSLockStatus>)))
  "Returns string type for a message object of type '<ADSLockStatus>"
  "ads_msgs/ADSLockStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSLockStatus)))
  "Returns string type for a message object of type 'ADSLockStatus"
  "ads_msgs/ADSLockStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSLockStatus>)))
  "Returns md5sum for a message object of type '<ADSLockStatus>"
  "aa3a62c65c48957c8ab93c0fdb1a7cb4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSLockStatus)))
  "Returns md5sum for a message object of type 'ADSLockStatus"
  "aa3a62c65c48957c8ab93c0fdb1a7cb4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSLockStatus>)))
  "Returns full string definition for message of type '<ADSLockStatus>"
  (cl:format cl:nil "# 状态-空闲~%uint8 STATUS_LOCK = 0~%# 状态-就绪~%uint8 STATUS_UNLOCK = 1~%# 状态-无效~%uint8 STATUS_UNVALID = 2~%~%# 车体状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSLockStatus)))
  "Returns full string definition for message of type 'ADSLockStatus"
  (cl:format cl:nil "# 状态-空闲~%uint8 STATUS_LOCK = 0~%# 状态-就绪~%uint8 STATUS_UNLOCK = 1~%# 状态-无效~%uint8 STATUS_UNVALID = 2~%~%# 车体状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSLockStatus>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'err_codes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSLockStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSLockStatus
    (cl:cons ':status (status msg))
    (cl:cons ':err_codes (err_codes msg))
))
