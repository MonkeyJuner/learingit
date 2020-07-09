;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::LocalMapSection)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'LocalMapSection (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::LOCALMAPSECTION")
  (make-package "HADMAP_MSGS::LOCALMAPSECTION"))

(in-package "ROS")
;;//! \htmlinclude LocalMapSection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hadmap_msgs::LocalMapSection
  :super ros::object
  :slots (_header _lanes ))

(defmethod hadmap_msgs::LocalMapSection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::LocalMapLane :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lanes __lanes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hadmap_msgs/LocalMapLane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hadmap_msgs/LocalMapLane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hadmap_msgs/LocalMapLane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance hadmap_msgs::LocalMapLane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hadmap_msgs::LocalMapSection :md5sum-) "2e2581a2675681ccfe2f2c202442f570")
(setf (get hadmap_msgs::LocalMapSection :datatype-) "hadmap_msgs/LocalMapSection")
(setf (get hadmap_msgs::LocalMapSection :definition-)
      "Header header
LocalMapLane[] lanes



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
MSG: hadmap_msgs/LocalMapLane
# lane id
int32 id
# residual length
float32 residual_len

float32 stopline_distance
geometry_msgs/Point stopline

# central planning points
LocalMapPoint[] center
# left boundary
LocalMapPoint[] left
# right boundary
LocalMapPoint[] right



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: hadmap_msgs/LocalMapPoint
uint8 TYPE_CROSS = 0
uint8 TYPE_NOT_CROSS = 1

# lane point localization
geometry_msgs/Point point
# heading angle
float32 heading
# now: cross or not
uint8 type
# speed limit
float32 speed_limit

")



(provide :hadmap_msgs/LocalMapSection "2e2581a2675681ccfe2f2c202442f570")


