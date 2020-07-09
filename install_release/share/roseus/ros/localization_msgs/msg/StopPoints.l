;; Auto-generated. Do not edit!


(when (boundp 'localization_msgs::StopPoints)
  (if (not (find-package "LOCALIZATION_MSGS"))
    (make-package "LOCALIZATION_MSGS"))
  (shadow 'StopPoints (find-package "LOCALIZATION_MSGS")))
(unless (find-package "LOCALIZATION_MSGS::STOPPOINTS")
  (make-package "LOCALIZATION_MSGS::STOPPOINTS"))

(in-package "ROS")
;;//! \htmlinclude StopPoints.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass localization_msgs::StopPoints
  :super ros::object
  :slots (_header _stop_points ))

(defmethod localization_msgs::StopPoints
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stop_points __stop_points) (let (r) (dotimes (i 0) (push (instance localization_msgs::StopPoint :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _stop_points __stop_points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stop_points
   (&rest __stop_points)
   (if (keywordp (car __stop_points))
       (send* _stop_points __stop_points)
     (progn
       (if __stop_points (setq _stop_points (car __stop_points)))
       _stop_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; localization_msgs/StopPoint[] _stop_points
    (apply #'+ (send-all _stop_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; localization_msgs/StopPoint[] _stop_points
     (write-long (length _stop_points) s)
     (dolist (elem _stop_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; localization_msgs/StopPoint[] _stop_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_points (let (r) (dotimes (i n) (push (instance localization_msgs::StopPoint :init) r)) r))
     (dolist (elem- _stop_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get localization_msgs::StopPoints :md5sum-) "b5b863ed8d0741cd8d4dd19ce2273dbb")
(setf (get localization_msgs::StopPoints :datatype-) "localization_msgs/StopPoints")
(setf (get localization_msgs::StopPoints :definition-)
      "Header header
StopPoint[] stop_points

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
MSG: localization_msgs/StopPoint
# main key
int32 id

# distance, [0, unlimit]
float64 distance_shift


float64 angle # rad
float64 distance_vertical



uint8 TYPE_CRANE = 0
uint8 TYPE_YARD = 1
uint8 TYPE_OTHER = 2

# type
uint8 type

# decelerate flag
bool decelerate # true



")



(provide :localization_msgs/StopPoints "b5b863ed8d0741cd8d4dd19ce2273dbb")


