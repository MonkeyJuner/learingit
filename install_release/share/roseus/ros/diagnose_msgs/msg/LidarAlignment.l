;; Auto-generated. Do not edit!


(when (boundp 'diagnose_msgs::LidarAlignment)
  (if (not (find-package "DIAGNOSE_MSGS"))
    (make-package "DIAGNOSE_MSGS"))
  (shadow 'LidarAlignment (find-package "DIAGNOSE_MSGS")))
(unless (find-package "DIAGNOSE_MSGS::LIDARALIGNMENT")
  (make-package "DIAGNOSE_MSGS::LIDARALIGNMENT"))

(in-package "ROS")
;;//! \htmlinclude LidarAlignment.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass diagnose_msgs::LidarAlignment
  :super ros::object
  :slots (_header _id _distance_shift _distance_vertical _distance_shift_filtered _distance_vertical_filtered _angle _point _angle_filtered ))

(defmethod diagnose_msgs::LidarAlignment
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:distance_shift __distance_shift) 0.0)
    ((:distance_vertical __distance_vertical) 0.0)
    ((:distance_shift_filtered __distance_shift_filtered) 0.0)
    ((:distance_vertical_filtered __distance_vertical_filtered) 0.0)
    ((:angle __angle) 0.0)
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:angle_filtered __angle_filtered) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _distance_shift (float __distance_shift))
   (setq _distance_vertical (float __distance_vertical))
   (setq _distance_shift_filtered (float __distance_shift_filtered))
   (setq _distance_vertical_filtered (float __distance_vertical_filtered))
   (setq _angle (float __angle))
   (setq _point __point)
   (setq _angle_filtered (float __angle_filtered))
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
  (:distance_shift
   (&optional __distance_shift)
   (if __distance_shift (setq _distance_shift __distance_shift)) _distance_shift)
  (:distance_vertical
   (&optional __distance_vertical)
   (if __distance_vertical (setq _distance_vertical __distance_vertical)) _distance_vertical)
  (:distance_shift_filtered
   (&optional __distance_shift_filtered)
   (if __distance_shift_filtered (setq _distance_shift_filtered __distance_shift_filtered)) _distance_shift_filtered)
  (:distance_vertical_filtered
   (&optional __distance_vertical_filtered)
   (if __distance_vertical_filtered (setq _distance_vertical_filtered __distance_vertical_filtered)) _distance_vertical_filtered)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:angle_filtered
   (&optional __angle_filtered)
   (if __angle_filtered (setq _angle_filtered __angle_filtered)) _angle_filtered)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _id
    4
    ;; float64 _distance_shift
    8
    ;; float64 _distance_vertical
    8
    ;; float64 _distance_shift_filtered
    8
    ;; float64 _distance_vertical_filtered
    8
    ;; float64 _angle
    8
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; float64 _angle_filtered
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _id
       (write-long _id s)
     ;; float64 _distance_shift
       (sys::poke _distance_shift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_vertical
       (sys::poke _distance_vertical (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_shift_filtered
       (sys::poke _distance_shift_filtered (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_vertical_filtered
       (sys::poke _distance_vertical_filtered (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; float64 _angle_filtered
       (sys::poke _angle_filtered (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance_shift
     (setq _distance_shift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_vertical
     (setq _distance_vertical (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_shift_filtered
     (setq _distance_shift_filtered (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_vertical_filtered
     (setq _distance_vertical_filtered (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float64 _angle_filtered
     (setq _angle_filtered (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get diagnose_msgs::LidarAlignment :md5sum-) "b83f6001c67821e47ec7547857d8ac4f")
(setf (get diagnose_msgs::LidarAlignment :datatype-) "diagnose_msgs/LidarAlignment")
(setf (get diagnose_msgs::LidarAlignment :definition-)
      "Header header

int32 id

float64 distance_shift
float64 distance_vertical
float64 distance_shift_filtered
float64 distance_vertical_filtered

float64 angle
geometry_msgs/Point point
float64 angle_filtered


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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :diagnose_msgs/LidarAlignment "b83f6001c67821e47ec7547857d8ac4f")


