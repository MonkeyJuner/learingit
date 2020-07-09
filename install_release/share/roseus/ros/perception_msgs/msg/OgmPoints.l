;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::OgmPoints)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'OgmPoints (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OGMPOINTS")
  (make-package "PERCEPTION_MSGS::OGMPOINTS"))

(in-package "ROS")
;;//! \htmlinclude OgmPoints.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::OgmPoints
  :super ros::object
  :slots (_header _points ))

(defmethod perception_msgs::OgmPoints
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance perception_msgs::OgmPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; perception_msgs/OgmPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; perception_msgs/OgmPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; perception_msgs/OgmPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance perception_msgs::OgmPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::OgmPoints :md5sum-) "f72422605ff4c7042260548b2a848caa")
(setf (get perception_msgs::OgmPoints :datatype-) "perception_msgs/OgmPoints")
(setf (get perception_msgs::OgmPoints :definition-)
      "Header header

OgmPoint[] points

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
MSG: perception_msgs/OgmPoint
uint8 UNCLASSIFIED = 0
uint8 UNKNOWN_SMALL = 1
uint8 UNKNOWN_BIG = 2
uint8 PEDESTRIAN = 3
uint8 BIKE = 4
uint8 CAR = 5
uint8 TRUCK = 6

float64 x
float64 y
float64 z
float64 p
uint8 type


")



(provide :perception_msgs/OgmPoints "f72422605ff4c7042260548b2a848caa")


