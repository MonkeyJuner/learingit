;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::Map)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'Map (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MAP")
  (make-package "HADMAP_MSGS::MAP"))

(in-package "ROS")
;;//! \htmlinclude Map.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hadmap_msgs::Map
  :super ros::object
  :slots (_header _sections _task_id ))

(defmethod hadmap_msgs::Map
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:sections __sections) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::Section :init) r)) r))
    ((:task_id __task_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _sections __sections)
   (setq _task_id (round __task_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:sections
   (&rest __sections)
   (if (keywordp (car __sections))
       (send* _sections __sections)
     (progn
       (if __sections (setq _sections (car __sections)))
       _sections)))
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hadmap_msgs/Section[] _sections
    (apply #'+ (send-all _sections :serialization-length)) 4
    ;; uint32 _task_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hadmap_msgs/Section[] _sections
     (write-long (length _sections) s)
     (dolist (elem _sections)
       (send elem :serialize s)
       )
     ;; uint32 _task_id
       (write-long _task_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hadmap_msgs/Section[] _sections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _sections (let (r) (dotimes (i n) (push (instance hadmap_msgs::Section :init) r)) r))
     (dolist (elem- _sections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hadmap_msgs::Map :md5sum-) "a662a7aab241551bdda9dfc4dc1570e1")
(setf (get hadmap_msgs::Map :datatype-) "hadmap_msgs/Map")
(setf (get hadmap_msgs::Map :definition-)
      "Header header
Section[] sections
uint32 task_id

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
MSG: hadmap_msgs/Section
uint8 TYPE_NORMAL = 0
uint8 TYPE_CROSS_BEFORE = 1
uint8 TYPE_CROSS_AFTER = 2
uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3

int32 id
Lane[] lanes
int32[] predecessors
int32[] successors
uint8 type # 

float64[] stop_distances

================================================================================
MSG: hadmap_msgs/Lane
int32 id

Point pt_start
Point pt_end

int32[] predecessors
int32[] successors

Point[] pts_center
Point[] pts_left
Point[] pts_right

float64[] len_integral

float64 speed_limit

## not used
uint8 line_left_type
uint8 line_right_type

## dynamic
int32 resign_id
float32 residual_len

================================================================================
MSG: hadmap_msgs/Point
int32 id

geometry_msgs/Point point

## not used

float32 heading
float64 delta_s
uint8 property

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :hadmap_msgs/Map "a662a7aab241551bdda9dfc4dc1570e1")


