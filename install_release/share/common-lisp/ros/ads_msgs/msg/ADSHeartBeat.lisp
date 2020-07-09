; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSHeartBeat.msg.html

(cl:defclass <ADSHeartBeat> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (lock_status
    :reader lock_status
    :initarg :lock_status
    :type ads_msgs-msg:ADSLockStatus
    :initform (cl:make-instance 'ads_msgs-msg:ADSLockStatus))
   (driving_status
    :reader driving_status
    :initarg :driving_status
    :type ads_msgs-msg:ADSDrivingStatus
    :initform (cl:make-instance 'ads_msgs-msg:ADSDrivingStatus))
   (command_status
    :reader command_status
    :initarg :command_status
    :type ads_msgs-msg:ADSCommandStatus
    :initform (cl:make-instance 'ads_msgs-msg:ADSCommandStatus)))
)

(cl:defclass ADSHeartBeat (<ADSHeartBeat>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSHeartBeat>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSHeartBeat)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSHeartBeat> is deprecated: use ads_msgs-msg:ADSHeartBeat instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADSHeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:header-val is deprecated.  Use ads_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'lock_status-val :lambda-list '(m))
(cl:defmethod lock_status-val ((m <ADSHeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:lock_status-val is deprecated.  Use ads_msgs-msg:lock_status instead.")
  (lock_status m))

(cl:ensure-generic-function 'driving_status-val :lambda-list '(m))
(cl:defmethod driving_status-val ((m <ADSHeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:driving_status-val is deprecated.  Use ads_msgs-msg:driving_status instead.")
  (driving_status m))

(cl:ensure-generic-function 'command_status-val :lambda-list '(m))
(cl:defmethod command_status-val ((m <ADSHeartBeat>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:command_status-val is deprecated.  Use ads_msgs-msg:command_status instead.")
  (command_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSHeartBeat>) ostream)
  "Serializes a message object of type '<ADSHeartBeat>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lock_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'driving_status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'command_status) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSHeartBeat>) istream)
  "Deserializes a message object of type '<ADSHeartBeat>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lock_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'driving_status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'command_status) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSHeartBeat>)))
  "Returns string type for a message object of type '<ADSHeartBeat>"
  "ads_msgs/ADSHeartBeat")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSHeartBeat)))
  "Returns string type for a message object of type 'ADSHeartBeat"
  "ads_msgs/ADSHeartBeat")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSHeartBeat>)))
  "Returns md5sum for a message object of type '<ADSHeartBeat>"
  "4a20797a7f321095ed8bcf7768c64a33")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSHeartBeat)))
  "Returns md5sum for a message object of type 'ADSHeartBeat"
  "4a20797a7f321095ed8bcf7768c64a33")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSHeartBeat>)))
  "Returns full string definition for message of type '<ADSHeartBeat>"
  (cl:format cl:nil "Header header~%# 车体状态~%ADSLockStatus lock_status~%# 行驶状态~%ADSDrivingStatus driving_status~%# 命令状态~%ADSCommandStatus command_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ads_msgs/ADSLockStatus~%# 状态-空闲~%uint8 STATUS_LOCK = 0~%# 状态-就绪~%uint8 STATUS_UNLOCK = 1~%# 状态-无效~%uint8 STATUS_UNVALID = 2~%~%# 车体状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%================================================================================~%MSG: ads_msgs/ADSDrivingStatus~%# 状态-等待目标~%uint8 STATUS_WAIT_TARGET = 0~%# 状态-等待启动~%uint8 STATUS_WAIT_START = 1~%# 状态-驶向终点~%uint8 STATUS_TRAVEL = 2~%# 状态-到达终点~%uint8 STATUS_ARRIVED = 3~%# 状态-错误~%uint8 STATUS_ERROR = 4~%# 状态-无效~%uint8 STATUS_UNVALID = 5~%~%# 错误-未处于自动驾驶状态~%uint8 ERROR_AUTO_OFF = 0~%# 错误-硬件锁定~%uint8 ERROR_HARDWARE_LOCK = 1~%# 错误-定位或底盘失效~%uint8 ERROR_VEHICLE = 2~%# 错误-地图~%uint8 ERROR_MAP = 3~%# 错误-雷达~%uint8 ERROR_LADAR = 4~%# 错误-长时间无法到达终点~%uint8 ERROR_CANNOT_ARRIVE = 5~%~%# 任务ID~%uint32 task_id~%~%# 行驶状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%================================================================================~%MSG: ads_msgs/ADSCommandStatus~%# 状态-执行中~%uint8 STATUS_EXECUTING = 0~%# 状态-已完毕~%uint8 STATUS_DONE = 1~%# 状态-错误~%uint8 STATUS_ERROR = 2~%# 状态-无效~%uint8 STATUS_UNVALID = 3~%~%# 错误-执行命令超时~%uint8 ERROR_TIMEOUT = 1~%# 错误-当不允许执行该命令~%uint8 ERROR_REJECT = 2~%# 错误-命令执行结果不符合预期~%uint8 ERROR_FAIL = 3~%# 错误-重复命令~%uint8 ERROR_REPEAT = 4~%~%# 命令唯一标识~%uint32 id~%~%# 命令状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSHeartBeat)))
  "Returns full string definition for message of type 'ADSHeartBeat"
  (cl:format cl:nil "Header header~%# 车体状态~%ADSLockStatus lock_status~%# 行驶状态~%ADSDrivingStatus driving_status~%# 命令状态~%ADSCommandStatus command_status~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: ads_msgs/ADSLockStatus~%# 状态-空闲~%uint8 STATUS_LOCK = 0~%# 状态-就绪~%uint8 STATUS_UNLOCK = 1~%# 状态-无效~%uint8 STATUS_UNVALID = 2~%~%# 车体状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%================================================================================~%MSG: ads_msgs/ADSDrivingStatus~%# 状态-等待目标~%uint8 STATUS_WAIT_TARGET = 0~%# 状态-等待启动~%uint8 STATUS_WAIT_START = 1~%# 状态-驶向终点~%uint8 STATUS_TRAVEL = 2~%# 状态-到达终点~%uint8 STATUS_ARRIVED = 3~%# 状态-错误~%uint8 STATUS_ERROR = 4~%# 状态-无效~%uint8 STATUS_UNVALID = 5~%~%# 错误-未处于自动驾驶状态~%uint8 ERROR_AUTO_OFF = 0~%# 错误-硬件锁定~%uint8 ERROR_HARDWARE_LOCK = 1~%# 错误-定位或底盘失效~%uint8 ERROR_VEHICLE = 2~%# 错误-地图~%uint8 ERROR_MAP = 3~%# 错误-雷达~%uint8 ERROR_LADAR = 4~%# 错误-长时间无法到达终点~%uint8 ERROR_CANNOT_ARRIVE = 5~%~%# 任务ID~%uint32 task_id~%~%# 行驶状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%================================================================================~%MSG: ads_msgs/ADSCommandStatus~%# 状态-执行中~%uint8 STATUS_EXECUTING = 0~%# 状态-已完毕~%uint8 STATUS_DONE = 1~%# 状态-错误~%uint8 STATUS_ERROR = 2~%# 状态-无效~%uint8 STATUS_UNVALID = 3~%~%# 错误-执行命令超时~%uint8 ERROR_TIMEOUT = 1~%# 错误-当不允许执行该命令~%uint8 ERROR_REJECT = 2~%# 错误-命令执行结果不符合预期~%uint8 ERROR_FAIL = 3~%# 错误-重复命令~%uint8 ERROR_REPEAT = 4~%~%# 命令唯一标识~%uint32 id~%~%# 命令状态~%uint8 status~%~%# 错误码~%uint8[] err_codes~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSHeartBeat>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lock_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'driving_status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'command_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSHeartBeat>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSHeartBeat
    (cl:cons ':header (header msg))
    (cl:cons ':lock_status (lock_status msg))
    (cl:cons ':driving_status (driving_status msg))
    (cl:cons ':command_status (command_status msg))
))
