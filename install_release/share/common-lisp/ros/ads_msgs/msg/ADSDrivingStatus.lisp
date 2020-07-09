; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSDrivingStatus.msg.html

(cl:defclass <ADSDrivingStatus> (roslisp-msg-protocol:ros-message)
  ((task_id
    :reader task_id
    :initarg :task_id
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

(cl:defclass ADSDrivingStatus (<ADSDrivingStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSDrivingStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSDrivingStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSDrivingStatus> is deprecated: use ads_msgs-msg:ADSDrivingStatus instead.")))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <ADSDrivingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:task_id-val is deprecated.  Use ads_msgs-msg:task_id instead.")
  (task_id m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ADSDrivingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:status-val is deprecated.  Use ads_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'err_codes-val :lambda-list '(m))
(cl:defmethod err_codes-val ((m <ADSDrivingStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:err_codes-val is deprecated.  Use ads_msgs-msg:err_codes instead.")
  (err_codes m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ADSDrivingStatus>)))
    "Constants for message type '<ADSDrivingStatus>"
  '((:STATUS_WAIT_TARGET . 0)
    (:STATUS_WAIT_START . 1)
    (:STATUS_TRAVEL . 2)
    (:STATUS_ARRIVED . 3)
    (:STATUS_ERROR . 4)
    (:STATUS_UNVALID . 5)
    (:ERROR_AUTO_OFF . 0)
    (:ERROR_HARDWARE_LOCK . 1)
    (:ERROR_VEHICLE . 2)
    (:ERROR_MAP . 3)
    (:ERROR_LADAR . 4)
    (:ERROR_CANNOT_ARRIVE . 5))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ADSDrivingStatus)))
    "Constants for message type 'ADSDrivingStatus"
  '((:STATUS_WAIT_TARGET . 0)
    (:STATUS_WAIT_START . 1)
    (:STATUS_TRAVEL . 2)
    (:STATUS_ARRIVED . 3)
    (:STATUS_ERROR . 4)
    (:STATUS_UNVALID . 5)
    (:ERROR_AUTO_OFF . 0)
    (:ERROR_HARDWARE_LOCK . 1)
    (:ERROR_VEHICLE . 2)
    (:ERROR_MAP . 3)
    (:ERROR_LADAR . 4)
    (:ERROR_CANNOT_ARRIVE . 5))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSDrivingStatus>) ostream)
  "Serializes a message object of type '<ADSDrivingStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'err_codes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'err_codes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSDrivingStatus>) istream)
  "Deserializes a message object of type '<ADSDrivingStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSDrivingStatus>)))
  "Returns string type for a message object of type '<ADSDrivingStatus>"
  "ads_msgs/ADSDrivingStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSDrivingStatus)))
  "Returns string type for a message object of type 'ADSDrivingStatus"
  "ads_msgs/ADSDrivingStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSDrivingStatus>)))
  "Returns md5sum for a message object of type '<ADSDrivingStatus>"
  "d820d95d8e174cb96103f731f03f3fd9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSDrivingStatus)))
  "Returns md5sum for a message object of type 'ADSDrivingStatus"
  "d820d95d8e174cb96103f731f03f3fd9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSDrivingStatus>)))
  "Returns full string definition for message of type '<ADSDrivingStatus>"
  (cl:format cl:nil "# 状态-等待目标~%uint8 STATUS_WAIT_TARGET = 0~%# 状态-等待启动~%uint8 STATUS_WAIT_START = 1~%# 状态-驶向终点~%uint8 STATUS_TRAVEL = 2~%# 状态-到达终点~%uint8 STATUS_ARRIVED = 3~%# 状态-错误~%uint8 STATUS_ERROR = 4~%# 状态-无效~%uint8 STATUS_UNVALID = 5~%~%# 错误-未处于自动驾驶状态~%uint8 ERROR_AUTO_OFF = 0~%# 错误-硬件锁定~%uint8 ERROR_HARDWARE_LOCK = 1~%# 错误-定位或底盘失效~%uint8 ERROR_VEHICLE = 2~%# 错误-地图~%uint8 ERROR_MAP = 3~%# 错误-雷达~%uint8 ERROR_LADAR = 4~%# 错误-长时间无法到达终点~%uint8 ERROR_CANNOT_ARRIVE = 5~%~%# 任务ID~%uint32 task_id~%~%# 行驶状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSDrivingStatus)))
  "Returns full string definition for message of type 'ADSDrivingStatus"
  (cl:format cl:nil "# 状态-等待目标~%uint8 STATUS_WAIT_TARGET = 0~%# 状态-等待启动~%uint8 STATUS_WAIT_START = 1~%# 状态-驶向终点~%uint8 STATUS_TRAVEL = 2~%# 状态-到达终点~%uint8 STATUS_ARRIVED = 3~%# 状态-错误~%uint8 STATUS_ERROR = 4~%# 状态-无效~%uint8 STATUS_UNVALID = 5~%~%# 错误-未处于自动驾驶状态~%uint8 ERROR_AUTO_OFF = 0~%# 错误-硬件锁定~%uint8 ERROR_HARDWARE_LOCK = 1~%# 错误-定位或底盘失效~%uint8 ERROR_VEHICLE = 2~%# 错误-地图~%uint8 ERROR_MAP = 3~%# 错误-雷达~%uint8 ERROR_LADAR = 4~%# 错误-长时间无法到达终点~%uint8 ERROR_CANNOT_ARRIVE = 5~%~%# 任务ID~%uint32 task_id~%~%# 行驶状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSDrivingStatus>))
  (cl:+ 0
     4
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'err_codes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSDrivingStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSDrivingStatus
    (cl:cons ':task_id (task_id msg))
    (cl:cons ':status (status msg))
    (cl:cons ':err_codes (err_codes msg))
))
