;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSCommandStatus)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSCommandStatus (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSCOMMANDSTATUS")
  (make-package "ADS_MSGS::ADSCOMMANDSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ADSCommandStatus.msg.html


(intern "*STATUS_EXECUTING*" (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(shadow '*STATUS_EXECUTING* (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(defconstant ads_msgs::ADSCommandStatus::*STATUS_EXECUTING* 0)
(intern "*STATUS_DONE*" (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(shadow '*STATUS_DONE* (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(defconstant ads_msgs::ADSCommandStatus::*STATUS_DONE* 1)
(intern "*STATUS_ERROR*" (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(shadow '*STATUS_ERROR* (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(defconstant ads_msgs::ADSCommandStatus::*STATUS_ERROR* 2)
(intern "*STATUS_UNVALID*" (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(shadow '*STATUS_UNVALID* (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(defconstant ads_msgs::ADSCommandStatus::*STATUS_UNVALID* 3)
(intern "*ERROR_TIMEOUT*" (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(shadow '*ERROR_TIMEOUT* (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(defconstant ads_msgs::ADSCommandStatus::*ERROR_TIMEOUT* 1)
(intern "*ERROR_REJECT*" (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(shadow '*ERROR_REJECT* (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(defconstant ads_msgs::ADSCommandStatus::*ERROR_REJECT* 2)
(intern "*ERROR_FAIL*" (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(shadow '*ERROR_FAIL* (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(defconstant ads_msgs::ADSCommandStatus::*ERROR_FAIL* 3)
(intern "*ERROR_REPEAT*" (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(shadow '*ERROR_REPEAT* (find-package "ADS_MSGS::ADSCOMMANDSTATUS"))
(defconstant ads_msgs::ADSCommandStatus::*ERROR_REPEAT* 4)
(defclass ads_msgs::ADSCommandStatus
  :super ros::object
  :slots (_id _status _err_codes ))

(defmethod ads_msgs::ADSCommandStatus
  (:init
   (&key
    ((:id __id) 0)
    ((:status __status) 0)
    ((:err_codes __err_codes) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _status (round __status))
   (setq _err_codes __err_codes)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:err_codes
   (&optional __err_codes)
   (if __err_codes (setq _err_codes __err_codes)) _err_codes)
  (:serialization-length
   ()
   (+
    ;; uint32 _id
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
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8[] _err_codes
     (write-long (length _err_codes) s)
     (princ _err_codes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _err_codes
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _err_codes (make-array n :element-type :char))
     (replace _err_codes buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get ads_msgs::ADSCommandStatus :md5sum-) "571b463eb8d21aab448911c4506ca3cc")
(setf (get ads_msgs::ADSCommandStatus :datatype-) "ads_msgs/ADSCommandStatus")
(setf (get ads_msgs::ADSCommandStatus :definition-)
      "# 状态-执行中
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



(provide :ads_msgs/ADSCommandStatus "571b463eb8d21aab448911c4506ca3cc")


