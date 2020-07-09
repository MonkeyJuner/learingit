;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSLockStatus)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSLockStatus (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSLOCKSTATUS")
  (make-package "ADS_MSGS::ADSLOCKSTATUS"))

(in-package "ROS")
;;//! \htmlinclude ADSLockStatus.msg.html


(intern "*STATUS_LOCK*" (find-package "ADS_MSGS::ADSLOCKSTATUS"))
(shadow '*STATUS_LOCK* (find-package "ADS_MSGS::ADSLOCKSTATUS"))
(defconstant ads_msgs::ADSLockStatus::*STATUS_LOCK* 0)
(intern "*STATUS_UNLOCK*" (find-package "ADS_MSGS::ADSLOCKSTATUS"))
(shadow '*STATUS_UNLOCK* (find-package "ADS_MSGS::ADSLOCKSTATUS"))
(defconstant ads_msgs::ADSLockStatus::*STATUS_UNLOCK* 1)
(intern "*STATUS_UNVALID*" (find-package "ADS_MSGS::ADSLOCKSTATUS"))
(shadow '*STATUS_UNVALID* (find-package "ADS_MSGS::ADSLOCKSTATUS"))
(defconstant ads_msgs::ADSLockStatus::*STATUS_UNVALID* 2)
(defclass ads_msgs::ADSLockStatus
  :super ros::object
  :slots (_status _err_codes ))

(defmethod ads_msgs::ADSLockStatus
  (:init
   (&key
    ((:status __status) 0)
    ((:err_codes __err_codes) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _err_codes __err_codes)
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:err_codes
   (&optional __err_codes)
   (if __err_codes (setq _err_codes __err_codes)) _err_codes)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; uint8[] _err_codes
    (* 1    (length _err_codes)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; uint8[] _err_codes
     (write-long (length _err_codes) s)
     (princ _err_codes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8[] _err_codes
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _err_codes (make-array n :element-type :char))
     (replace _err_codes buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(setf (get ads_msgs::ADSLockStatus :md5sum-) "aa3a62c65c48957c8ab93c0fdb1a7cb4")
(setf (get ads_msgs::ADSLockStatus :datatype-) "ads_msgs/ADSLockStatus")
(setf (get ads_msgs::ADSLockStatus :definition-)
      "# 状态-空闲
uint8 STATUS_LOCK = 0
# 状态-就绪
uint8 STATUS_UNLOCK = 1
# 状态-无效
uint8 STATUS_UNVALID = 2

# 车体状态
uint8 status

# 错误码
uint8[] err_codes
")



(provide :ads_msgs/ADSLockStatus "aa3a62c65c48957c8ab93c0fdb1a7cb4")


