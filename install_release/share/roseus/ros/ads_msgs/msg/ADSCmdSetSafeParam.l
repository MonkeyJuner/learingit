;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSCmdSetSafeParam)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSCmdSetSafeParam (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSCMDSETSAFEPARAM")
  (make-package "ADS_MSGS::ADSCMDSETSAFEPARAM"))

(in-package "ROS")
;;//! \htmlinclude ADSCmdSetSafeParam.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ads_msgs::ADSCmdSetSafeParam
  :super ros::object
  :slots (_header _id _safe_second _safe_distance ))

(defmethod ads_msgs::ADSCmdSetSafeParam
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:safe_second __safe_second) 0.0)
    ((:safe_distance __safe_distance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _safe_second (float __safe_second))
   (setq _safe_distance (float __safe_distance))
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
  (:safe_second
   (&optional __safe_second)
   (if __safe_second (setq _safe_second __safe_second)) _safe_second)
  (:safe_distance
   (&optional __safe_distance)
   (if __safe_distance (setq _safe_distance __safe_distance)) _safe_distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; float64 _safe_second
    8
    ;; float64 _safe_distance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; float64 _safe_second
       (sys::poke _safe_second (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _safe_distance
       (sys::poke _safe_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _safe_second
     (setq _safe_second (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _safe_distance
     (setq _safe_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ads_msgs::ADSCmdSetSafeParam :md5sum-) "861db45b0a43099456491e88ed389e30")
(setf (get ads_msgs::ADSCmdSetSafeParam :datatype-) "ads_msgs/ADSCmdSetSafeParam")
(setf (get ads_msgs::ADSCmdSetSafeParam :definition-)
      "Header header

uint32 id

float64 safe_second
float64 safe_distance

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



(provide :ads_msgs/ADSCmdSetSafeParam "861db45b0a43099456491e88ed389e30")


