;; Auto-generated. Do not edit!


(when (boundp 'visual_msgs::Path)
  (if (not (find-package "VISUAL_MSGS"))
    (make-package "VISUAL_MSGS"))
  (shadow 'Path (find-package "VISUAL_MSGS")))
(unless (find-package "VISUAL_MSGS::PATH")
  (make-package "VISUAL_MSGS::PATH"))

(in-package "ROS")
;;//! \htmlinclude Path.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visual_msgs::Path
  :super ros::object
  :slots (_header _rt_path _opt_path ))

(defmethod visual_msgs::Path
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:rt_path __rt_path) (instance visual_msgs::PathPoints :init))
    ((:opt_path __opt_path) (let (r) (dotimes (i 0) (push (instance visual_msgs::PathPoints :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _rt_path __rt_path)
   (setq _opt_path __opt_path)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:rt_path
   (&rest __rt_path)
   (if (keywordp (car __rt_path))
       (send* _rt_path __rt_path)
     (progn
       (if __rt_path (setq _rt_path (car __rt_path)))
       _rt_path)))
  (:opt_path
   (&rest __opt_path)
   (if (keywordp (car __opt_path))
       (send* _opt_path __opt_path)
     (progn
       (if __opt_path (setq _opt_path (car __opt_path)))
       _opt_path)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; visual_msgs/PathPoints _rt_path
    (send _rt_path :serialization-length)
    ;; visual_msgs/PathPoints[] _opt_path
    (apply #'+ (send-all _opt_path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; visual_msgs/PathPoints _rt_path
       (send _rt_path :serialize s)
     ;; visual_msgs/PathPoints[] _opt_path
     (write-long (length _opt_path) s)
     (dolist (elem _opt_path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; visual_msgs/PathPoints _rt_path
     (send _rt_path :deserialize buf ptr-) (incf ptr- (send _rt_path :serialization-length))
   ;; visual_msgs/PathPoints[] _opt_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _opt_path (let (r) (dotimes (i n) (push (instance visual_msgs::PathPoints :init) r)) r))
     (dolist (elem- _opt_path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get visual_msgs::Path :md5sum-) "28f1175a0bf886f2cad2ad7ff1882850")
(setf (get visual_msgs::Path :datatype-) "visual_msgs/Path")
(setf (get visual_msgs::Path :definition-)
      "Header header

# cur path in vehicle coord
visual_msgs/PathPoints rt_path

# opt path in vehicle coord
visual_msgs/PathPoints[] opt_path
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
MSG: visual_msgs/PathPoints
visual_msgs/PathPoint[] pts
================================================================================
MSG: visual_msgs/PathPoint
# coordinates in [m]
float64 x
float64 y
float64 z
")



(provide :visual_msgs/Path "28f1175a0bf886f2cad2ad7ff1882850")


