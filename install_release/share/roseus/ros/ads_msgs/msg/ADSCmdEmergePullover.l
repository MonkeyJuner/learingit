;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSCmdEmergePullover)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSCmdEmergePullover (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSCMDEMERGEPULLOVER")
  (make-package "ADS_MSGS::ADSCMDEMERGEPULLOVER"))

(in-package "ROS")
;;//! \htmlinclude ADSCmdEmergePullover.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ads_msgs::ADSCmdEmergePullover
  :super ros::object
  :slots (_header _id ))

(defmethod ads_msgs::ADSCmdEmergePullover
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ads_msgs::ADSCmdEmergePullover :md5sum-) "057dd8251e7cb69192b3590359a014ce")
(setf (get ads_msgs::ADSCmdEmergePullover :datatype-) "ads_msgs/ADSCmdEmergePullover")
(setf (get ads_msgs::ADSCmdEmergePullover :definition-)
      "Header header

uint32 id

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



(provide :ads_msgs/ADSCmdEmergePullover "057dd8251e7cb69192b3590359a014ce")


