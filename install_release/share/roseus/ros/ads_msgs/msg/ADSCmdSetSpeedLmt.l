;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSCmdSetSpeedLmt)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSCmdSetSpeedLmt (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSCMDSETSPEEDLMT")
  (make-package "ADS_MSGS::ADSCMDSETSPEEDLMT"))

(in-package "ROS")
;;//! \htmlinclude ADSCmdSetSpeedLmt.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ads_msgs::ADSCmdSetSpeedLmt
  :super ros::object
  :slots (_header _id _upper_velocity_km_h _upper_velocity_m_s ))

(defmethod ads_msgs::ADSCmdSetSpeedLmt
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:upper_velocity_km_h __upper_velocity_km_h) 0.0)
    ((:upper_velocity_m_s __upper_velocity_m_s) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _upper_velocity_km_h (float __upper_velocity_km_h))
   (setq _upper_velocity_m_s (float __upper_velocity_m_s))
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
  (:upper_velocity_km_h
   (&optional __upper_velocity_km_h)
   (if __upper_velocity_km_h (setq _upper_velocity_km_h __upper_velocity_km_h)) _upper_velocity_km_h)
  (:upper_velocity_m_s
   (&optional __upper_velocity_m_s)
   (if __upper_velocity_m_s (setq _upper_velocity_m_s __upper_velocity_m_s)) _upper_velocity_m_s)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; float64 _upper_velocity_km_h
    8
    ;; float64 _upper_velocity_m_s
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
     ;; float64 _upper_velocity_km_h
       (sys::poke _upper_velocity_km_h (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _upper_velocity_m_s
       (sys::poke _upper_velocity_m_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _upper_velocity_km_h
     (setq _upper_velocity_km_h (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _upper_velocity_m_s
     (setq _upper_velocity_m_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get ads_msgs::ADSCmdSetSpeedLmt :md5sum-) "81b7ed48bbe46c268791addb9f4a6381")
(setf (get ads_msgs::ADSCmdSetSpeedLmt :datatype-) "ads_msgs/ADSCmdSetSpeedLmt")
(setf (get ads_msgs::ADSCmdSetSpeedLmt :definition-)
      "Header header

uint32 id

float64 upper_velocity_km_h

float64 upper_velocity_m_s

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



(provide :ads_msgs/ADSCmdSetSpeedLmt "81b7ed48bbe46c268791addb9f4a6381")


