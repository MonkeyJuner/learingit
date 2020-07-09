; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSCommandStatus.msg.html

(cl:defclass <ADSCommandStatus> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (status
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

(cl:defclass ADSCommandStatus (<ADSCommandStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSCommandStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSCommandStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSCommandStatus> is deprecated: use ads_msgs-msg:ADSCommandStatus instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ADSCommandStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:id-val is deprecated.  Use ads_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ADSCommandStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:status-val is deprecated.  Use ads_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'err_codes-val :lambda-list '(m))
(cl:defmethod err_codes-val ((m <ADSCommandStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:err_codes-val is deprecated.  Use ads_msgs-msg:err_codes instead.")
  (err_codes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ADSCommandStatus>)))
    "Constants for message type '<ADSCommandStatus>"
  '((:STATUS_EXECUTING . 0)
    (:STATUS_DONE . 1)
    (:STATUS_ERROR . 2)
    (:STATUS_UNVALID . 3)
    (:ERROR_TIMEOUT . 1)
    (:ERROR_REJECT . 2)
    (:ERROR_FAIL . 3)
    (:ERROR_REPEAT . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ADSCommandStatus)))
    "Constants for message type 'ADSCommandStatus"
  '((:STATUS_EXECUTING . 0)
    (:STATUS_DONE . 1)
    (:STATUS_ERROR . 2)
    (:STATUS_UNVALID . 3)
    (:ERROR_TIMEOUT . 1)
    (:ERROR_REJECT . 2)
    (:ERROR_FAIL . 3)
    (:ERROR_REPEAT . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSCommandStatus>) ostream)
  "Serializes a message object of type '<ADSCommandStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'err_codes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'err_codes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSCommandStatus>) istream)
  "Deserializes a message object of type '<ADSCommandStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSCommandStatus>)))
  "Returns string type for a message object of type '<ADSCommandStatus>"
  "ads_msgs/ADSCommandStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSCommandStatus)))
  "Returns string type for a message object of type 'ADSCommandStatus"
  "ads_msgs/ADSCommandStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSCommandStatus>)))
  "Returns md5sum for a message object of type '<ADSCommandStatus>"
  "571b463eb8d21aab448911c4506ca3cc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSCommandStatus)))
  "Returns md5sum for a message object of type 'ADSCommandStatus"
  "571b463eb8d21aab448911c4506ca3cc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSCommandStatus>)))
  "Returns full string definition for message of type '<ADSCommandStatus>"
  (cl:format cl:nil "# 状态-执行中~%uint8 STATUS_EXECUTING = 0~%# 状态-已完毕~%uint8 STATUS_DONE = 1~%# 状态-错误~%uint8 STATUS_ERROR = 2~%# 状态-无效~%uint8 STATUS_UNVALID = 3~%~%# 错误-执行命令超时~%uint8 ERROR_TIMEOUT = 1~%# 错误-当不允许执行该命令~%uint8 ERROR_REJECT = 2~%# 错误-命令执行结果不符合预期~%uint8 ERROR_FAIL = 3~%# 错误-重复命令~%uint8 ERROR_REPEAT = 4~%~%# 命令唯一标识~%uint32 id~%~%# 命令状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSCommandStatus)))
  "Returns full string definition for message of type 'ADSCommandStatus"
  (cl:format cl:nil "# 状态-执行中~%uint8 STATUS_EXECUTING = 0~%# 状态-已完毕~%uint8 STATUS_DONE = 1~%# 状态-错误~%uint8 STATUS_ERROR = 2~%# 状态-无效~%uint8 STATUS_UNVALID = 3~%~%# 错误-执行命令超时~%uint8 ERROR_TIMEOUT = 1~%# 错误-当不允许执行该命令~%uint8 ERROR_REJECT = 2~%# 错误-命令执行结果不符合预期~%uint8 ERROR_FAIL = 3~%# 错误-重复命令~%uint8 ERROR_REPEAT = 4~%~%# 命令唯一标识~%uint32 id~%~%# 命令状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSCommandStatus>))
  (cl:+ 0
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'err_codes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSCommandStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSCommandStatus
    (cl:cons ':id (id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':err_codes (err_codes msg))
))
