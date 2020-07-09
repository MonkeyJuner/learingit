;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSDrivingStatus)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSDrivingStatus (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSDRIVINGSTATUS")
  (make-package "ADS_MSGS::ADSDRIVINGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ADSDrivingStatus.msg.html


(intern "*STATUS_WAIT_TARGET*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*STATUS_WAIT_TARGET* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*STATUS_WAIT_TARGET* 0)
(intern "*STATUS_WAIT_START*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*STATUS_WAIT_START* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*STATUS_WAIT_START* 1)
(intern "*STATUS_TRAVEL*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*STATUS_TRAVEL* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*STATUS_TRAVEL* 2)
(intern "*STATUS_ARRIVED*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*STATUS_ARRIVED* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*STATUS_ARRIVED* 3)
(intern "*STATUS_ERROR*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*STATUS_ERROR* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*STATUS_ERROR* 4)
(intern "*STATUS_UNVALID*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*STATUS_UNVALID* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*STATUS_UNVALID* 5)
(intern "*ERROR_AUTO_OFF*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*ERROR_AUTO_OFF* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*ERROR_AUTO_OFF* 0)
(intern "*ERROR_HARDWARE_LOCK*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*ERROR_HARDWARE_LOCK* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*ERROR_HARDWARE_LOCK* 1)
(intern "*ERROR_VEHICLE*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*ERROR_VEHICLE* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*ERROR_VEHICLE* 2)
(intern "*ERROR_MAP*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*ERROR_MAP* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*ERROR_MAP* 3)
(intern "*ERROR_LADAR*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*ERROR_LADAR* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*ERROR_LADAR* 4)
(intern "*ERROR_CANNOT_ARRIVE*" (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(shadow '*ERROR_CANNOT_ARRIVE* (find-package "ADS_MSGS::ADSDRIVINGSTATUS"))
(defconstant ads_msgs::ADSDrivingStatus::*ERROR_CANNOT_ARRIVE* 5)
(defclass ads_msgs::ADSDrivingStatus
  :super ros::object
  :slots (_task_id _status _err_codes ))

(defmethod ads_msgs::ADSDrivingStatus
  (:init
   (&key
    ((:task_id __task_id) 0)
    ((:status __status) 0)
    ((:err_codes __err_codes) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _task_id (round __task_id))
   (setq _status (round __status))
   (setq _err_codes __err_codes)
   self)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:err_codes
   (&optional __err_codes)
   (if __err_codes (setq _err_codes __err_codes)) _err_codes)
  (:serialization-length
   ()
   (+
    ;; uint32 _task_id
    4
    ;; uint8 _status
    1
    ;; uint8[] _err_codes
    (* 1    (length _err_codes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8[] _err_codes
     (write-long (length _err_codes) s)
     (princ _err_codes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _err_codes
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _err_codes (make-array n :element-type :char))
     (replace _err_codes buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get ads_msgs::ADSDrivingStatus :md5sum-) "d820d95d8e174cb96103f731f03f3fd9")
(setf (get ads_msgs::ADSDrivingStatus :datatype-) "ads_msgs/ADSDrivingStatus")
(setf (get ads_msgs::ADSDrivingStatus :definition-)
      "# 状态-等待目标
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
")



(provide :ads_msgs/ADSDrivingStatus "d820d95d8e174cb96103f731f03f3fd9")


