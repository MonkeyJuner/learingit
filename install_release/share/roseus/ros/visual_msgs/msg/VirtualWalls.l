;; Auto-generated. Do not edit!


(when (boundp 'visual_msgs::VirtualWalls)
  (if (not (find-package "VISUAL_MSGS"))
    (make-package "VISUAL_MSGS"))
  (shadow 'VirtualWalls (find-package "VISUAL_MSGS")))
(unless (find-package "VISUAL_MSGS::VIRTUALWALLS")
  (make-package "VISUAL_MSGS::VIRTUALWALLS"))

(in-package "ROS")
;;//! \htmlinclude VirtualWalls.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass visual_msgs::VirtualWalls
  :super ros::object
  :slots (_header _walls ))

(defmethod visual_msgs::VirtualWalls
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:walls __walls) (let (r) (dotimes (i 0) (push (instance visual_msgs::VirtualWall :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _walls __walls)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:walls
   (&rest __walls)
   (if (keywordp (car __walls))
       (send* _walls __walls)
     (progn
       (if __walls (setq _walls (car __walls)))
       _walls)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; visual_msgs/VirtualWall[] _walls
    (apply #'+ (send-all _walls :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; visual_msgs/VirtualWall[] _walls
     (write-long (length _walls) s)
     (dolist (elem _walls)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; visual_msgs/VirtualWall[] _walls
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _walls (let (r) (dotimes (i n) (push (instance visual_msgs::VirtualWall :init) r)) r))
     (dolist (elem- _walls)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get visual_msgs::VirtualWalls :md5sum-) "eeccf1d1abd9782305d24f6691c59a03")
(setf (get visual_msgs::VirtualWalls :datatype-) "visual_msgs/VirtualWalls")
(setf (get visual_msgs::VirtualWalls :definition-)
      "Header header

visual_msgs/VirtualWall[] walls

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
MSG: visual_msgs/VirtualWall
uint8 UNCLASSIFIED          = 0
uint8 STOP_SIGN_ABSOLUTE    = 1
uint8 STOP_SIGN_RELATIVE    = 2
uint8 OBJECT                = 3
uint8 OBJECT_VIRTUAL        = 4
uint8 OBJECT_CLOSE          = 5
uint8 OGM                   = 6
uint8 HMAP_SPEED_LIMIT      = 7
uint8 CURV_SPEED_LIMIT      = 8
uint8 LONGITUDE_CMD         = 9

uint8   type
uint32  id
float64 distance
float64 speed

float64 x           # Optional
float64 y           # Optional
float64 z           # Optional
float64 heading     # Optional



")



(provide :visual_msgs/VirtualWalls "eeccf1d1abd9782305d24f6691c59a03")


