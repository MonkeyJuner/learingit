;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSCmdGuideStop)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSCmdGuideStop (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSCMDGUIDESTOP")
  (make-package "ADS_MSGS::ADSCMDGUIDESTOP"))

(in-package "ROS")
;;//! \htmlinclude ADSCmdGuideStop.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ads_msgs::ADSCmdGuideStop
  :super ros::object
  :slots (_header _id _max_distance ))

(defmethod ads_msgs::ADSCmdGuideStop
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:max_distance __max_distance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _max_distance (float __max_distance))
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
  (:max_distance
   (&optional __max_distance)
   (if __max_distance (setq _max_distance __max_distance)) _max_distance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; float64 _max_distance
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
     ;; float64 _max_distance
       (sys::poke _max_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _max_distance
     (setq _max_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ads_msgs::ADSCmdGuideStop :md5sum-) "ca77bea5ffd1ee11552bf17cb7a684f7")
(setf (get ads_msgs::ADSCmdGuideStop :datatype-) "ads_msgs/ADSCmdGuideStop")
(setf (get ads_msgs::ADSCmdGuideStop :definition-)
      "Header header

uint32 id

float64 max_distance
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



(provide :ads_msgs/ADSCmdGuideStop "ca77bea5ffd1ee11552bf17cb7a684f7")


