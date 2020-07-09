;; Auto-generated. Do not edit!


(when (boundp 'pnc_msgs::Calibrate)
  (if (not (find-package "PNC_MSGS"))
    (make-package "PNC_MSGS"))
  (shadow 'Calibrate (find-package "PNC_MSGS")))
(unless (find-package "PNC_MSGS::CALIBRATE")
  (make-package "PNC_MSGS::CALIBRATE"))

(in-package "ROS")
;;//! \htmlinclude Calibrate.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pnc_msgs::Calibrate
  :super ros::object
  :slots (_header _id _count _longitude_dist _lateral_dist _longitude_thr _lateral_thr ))

(defmethod pnc_msgs::Calibrate
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:count __count) 0)
    ((:longitude_dist __longitude_dist) 0.0)
    ((:lateral_dist __lateral_dist) 0.0)
    ((:longitude_thr __longitude_thr) 0.0)
    ((:lateral_thr __lateral_thr) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _count (round __count))
   (setq _longitude_dist (float __longitude_dist))
   (setq _lateral_dist (float __lateral_dist))
   (setq _longitude_thr (float __longitude_thr))
   (setq _lateral_thr (float __lateral_thr))
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
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:longitude_dist
   (&optional __longitude_dist)
   (if __longitude_dist (setq _longitude_dist __longitude_dist)) _longitude_dist)
  (:lateral_dist
   (&optional __lateral_dist)
   (if __lateral_dist (setq _lateral_dist __lateral_dist)) _lateral_dist)
  (:longitude_thr
   (&optional __longitude_thr)
   (if __longitude_thr (setq _longitude_thr __longitude_thr)) _longitude_thr)
  (:lateral_thr
   (&optional __lateral_thr)
   (if __lateral_thr (setq _lateral_thr __lateral_thr)) _lateral_thr)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint32 _count
    4
    ;; float64 _longitude_dist
    8
    ;; float64 _lateral_dist
    8
    ;; float64 _longitude_thr
    8
    ;; float64 _lateral_thr
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
     ;; uint32 _count
       (write-long _count s)
     ;; float64 _longitude_dist
       (sys::poke _longitude_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lateral_dist
       (sys::poke _lateral_dist (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude_thr
       (sys::poke _longitude_thr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _lateral_thr
       (sys::poke _lateral_thr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _longitude_dist
     (setq _longitude_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lateral_dist
     (setq _lateral_dist (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude_thr
     (setq _longitude_thr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _lateral_thr
     (setq _lateral_thr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pnc_msgs::Calibrate :md5sum-) "ae168eb424739dfee5633c98c176c140")
(setf (get pnc_msgs::Calibrate :datatype-) "pnc_msgs/Calibrate")
(setf (get pnc_msgs::Calibrate :definition-)
      "Header header

uint32 id

uint32 count

# measure by m, longitudinal distance from target position
float64 longitude_dist

# meausre by m, lateral distance from target position
float64 lateral_dist

float64 longitude_thr

float64 lateral_thr

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



(provide :pnc_msgs/Calibrate "ae168eb424739dfee5633c98c176c140")


