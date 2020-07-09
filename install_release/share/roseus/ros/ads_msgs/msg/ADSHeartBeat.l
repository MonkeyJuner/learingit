;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSHeartBeat)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSHeartBeat (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSHEARTBEAT")
  (make-package "ADS_MSGS::ADSHEARTBEAT"))

(in-package "ROS")
;;//! \htmlinclude ADSHeartBeat.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ads_msgs::ADSHeartBeat
  :super ros::object
  :slots (_header _lock_status _driving_status _command_status ))

(defmethod ads_msgs::ADSHeartBeat
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lock_status __lock_status) (instance ads_msgs::ADSLockStatus :init))
    ((:driving_status __driving_status) (instance ads_msgs::ADSDrivingStatus :init))
    ((:command_status __command_status) (instance ads_msgs::ADSCommandStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lock_status __lock_status)
   (setq _driving_status __driving_status)
   (setq _command_status __command_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lock_status
   (&rest __lock_status)
   (if (keywordp (car __lock_status))
       (send* _lock_status __lock_status)
     (progn
       (if __lock_status (setq _lock_status (car __lock_status)))
       _lock_status)))
  (:driving_status
   (&rest __driving_status)
   (if (keywordp (car __driving_status))
       (send* _driving_status __driving_status)
     (progn
       (if __driving_status (setq _driving_status (car __driving_status)))
       _driving_status)))
  (:command_status
   (&rest __command_status)
   (if (keywordp (car __command_status))
       (send* _command_status __command_status)
     (progn
       (if __command_status (setq _command_status (car __command_status)))
       _command_status)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; ads_msgs/ADSLockStatus _lock_status
    (send _lock_status :serialization-length)
    ;; ads_msgs/ADSDrivingStatus _driving_status
    (send _driving_status :serialization-length)
    ;; ads_msgs/ADSCommandStatus _command_status
    (send _command_status :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; ads_msgs/ADSLockStatus _lock_status
       (send _lock_status :serialize s)
     ;; ads_msgs/ADSDrivingStatus _driving_status
       (send _driving_status :serialize s)
     ;; ads_msgs/ADSCommandStatus _command_status
       (send _command_status :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; ads_msgs/ADSLockStatus _lock_status
     (send _lock_status :deserialize buf ptr-) (incf ptr- (send _lock_status :serialization-length))
   ;; ads_msgs/ADSDrivingStatus _driving_status
     (send _driving_status :deserialize buf ptr-) (incf ptr- (send _driving_status :serialization-length))
   ;; ads_msgs/ADSCommandStatus _command_status
     (send _command_status :deserialize buf ptr-) (incf ptr- (send _command_status :serialization-length))
   ;;
   self)
  )

(setf (get ads_msgs::ADSHeartBeat :md5sum-) "4a20797a7f321095ed8bcf7768c64a33")
(setf (get ads_msgs::ADSHeartBeat :datatype-) "ads_msgs/ADSHeartBeat")
(setf (get ads_msgs::ADSHeartBeat :definition-)
      "Header header
# 车体状态
ADSLockStatus lock_status
# 行驶状态
ADSDrivingStatus driving_status
# 命令状态
ADSCommandStatus command_status
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: ads_msgs/ADSLockStatus
# 状态-空闲
uint8 STATUS_LOCK = 0
# 状态-就绪
uint8 STATUS_UNLOCK = 1
# 状态-无效
uint8 STATUS_UNVALID = 2

# 车体状态
uint8 status

# 错误码
uint8[] err_codes
================================================================================
MSG: ads_msgs/ADSDrivingStatus
# 状态-等待目标
uint8 STATUS_WAIT_TARGET = 0
# 状态-等待启动
uint8 STATUS_WAIT_START = 1
# 状态-驶向终点
uint8 STATUS_TRAVEL = 2
# 状态-到达终点
uint8 STATUS_ARRIVED = 3
# 状态-错误
uint8 STATUS_ERROR = 4
# 状态-无效
uint8 STATUS_UNVALID = 5

# 错误-未处于自动驾驶状态
uint8 ERROR_AUTO_OFF = 0
# 错误-硬件锁定
uint8 ERROR_HARDWARE_LOCK = 1
# 错误-定位或底盘失效
uint8 ERROR_VEHICLE = 2
# 错误-地图
uint8 ERROR_MAP = 3
# 错误-雷达
uint8 ERROR_LADAR = 4
# 错误-长时间无法到达终点
uint8 ERROR_CANNOT_ARRIVE = 5

# 任务ID
uint32 task_id

# 行驶状态
uint8 status

# 错误码
uint8[] err_codes
================================================================================
MSG: ads_msgs/ADSCommandStatus
# 状态-执行中
uint8 STATUS_EXECUTING = 0
# 状态-已完毕
uint8 STATUS_DONE = 1
# 状态-错误
uint8 STATUS_ERROR = 2
# 状态-无效
uint8 STATUS_UNVALID = 3

# 错误-执行命令超时
uint8 ERROR_TIMEOUT = 1
# 错误-当不允许执行该命令
uint8 ERROR_REJECT = 2
# 错误-命令执行结果不符合预期
uint8 ERROR_FAIL = 3
# 错误-重复命令
uint8 ERROR_REPEAT = 4

# 命令唯一标识
uint32 id

# 命令状态
uint8 status

# 错误码
uint8[] err_codes
")



(provide :ads_msgs/ADSHeartBeat "4a20797a7f321095ed8bcf7768c64a33")


