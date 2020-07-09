;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSCmdAlert)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSCmdAlert (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSCMDALERT")
  (make-package "ADS_MSGS::ADSCMDALERT"))

(in-package "ROS")
;;//! \htmlinclude ADSCmdAlert.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*NONE*" (find-package "ADS_MSGS::ADSCMDALERT"))
(shadow '*NONE* (find-package "ADS_MSGS::ADSCMDALERT"))
(defconstant ads_msgs::ADSCmdAlert::*NONE* 0)
(intern "*ALIGNING*" (find-package "ADS_MSGS::ADSCMDALERT"))
(shadow '*ALIGNING* (find-package "ADS_MSGS::ADSCMDALERT"))
(defconstant ads_msgs::ADSCmdAlert::*ALIGNING* 1)
(defclass ads_msgs::ADSCmdAlert
  :super ros::object
  :slots (_header _code ))

(defmethod ads_msgs::ADSCmdAlert
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:code __code) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _code (round __code))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:code
   (&optional __code)
   (if __code (setq _code __code)) _code)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _code
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _code
       (write-byte _code s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _code
     (setq _code (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ads_msgs::ADSCmdAlert :md5sum-) "f598337d84289df261d60f9a2aa46008")
(setf (get ads_msgs::ADSCmdAlert :datatype-) "ads_msgs/ADSCmdAlert")
(setf (get ads_msgs::ADSCmdAlert :definition-)
      "uint8 NONE = 0
uint8 ALIGNING = 1

Header header

uint8 code

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

")



(provide :ads_msgs/ADSCmdAlert "f598337d84289df261d60f9a2aa46008")


