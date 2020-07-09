;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::LocalMapLane)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'LocalMapLane (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::LOCALMAPLANE")
  (make-package "HADMAP_MSGS::LOCALMAPLANE"))

(in-package "ROS")
;;//! \htmlinclude LocalMapLane.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hadmap_msgs::LocalMapLane
  :super ros::object
  :slots (_id _residual_len _stopline_distance _stopline _center _left _right ))

(defmethod hadmap_msgs::LocalMapLane
  (:init
   (&key
    ((:id __id) 0)
    ((:residual_len __residual_len) 0.0)
    ((:stopline_distance __stopline_distance) 0.0)
    ((:stopline __stopline) (instance geometry_msgs::Point :init))
    ((:center __center) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::LocalMapPoint :init) r)) r))
    ((:left __left) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::LocalMapPoint :init) r)) r))
    ((:right __right) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::LocalMapPoint :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _residual_len (float __residual_len))
   (setq _stopline_distance (float __stopline_distance))
   (setq _stopline __stopline)
   (setq _center __center)
   (setq _left __left)
   (setq _right __right)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:residual_len
   (&optional __residual_len)
   (if __residual_len (setq _residual_len __residual_len)) _residual_len)
  (:stopline_distance
   (&optional __stopline_distance)
   (if __stopline_distance (setq _stopline_distance __stopline_distance)) _stopline_distance)
  (:stopline
   (&rest __stopline)
   (if (keywordp (car __stopline))
       (send* _stopline __stopline)
     (progn
       (if __stopline (setq _stopline (car __stopline)))
       _stopline)))
  (:center
   (&rest __center)
   (if (keywordp (car __center))
       (send* _center __center)
     (progn
       (if __center (setq _center (car __center)))
       _center)))
  (:left
   (&rest __left)
   (if (keywordp (car __left))
       (send* _left __left)
     (progn
       (if __left (setq _left (car __left)))
       _left)))
  (:right
   (&rest __right)
   (if (keywordp (car __right))
       (send* _right __right)
     (progn
       (if __right (setq _right (car __right)))
       _right)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float32 _residual_len
    4
    ;; float32 _stopline_distance
    4
    ;; geometry_msgs/Point _stopline
    (send _stopline :serialization-length)
    ;; hadmap_msgs/LocalMapPoint[] _center
    (apply #'+ (send-all _center :serialization-length)) 4
    ;; hadmap_msgs/LocalMapPoint[] _left
    (apply #'+ (send-all _left :serialization-length)) 4
    ;; hadmap_msgs/LocalMapPoint[] _right
    (apply #'+ (send-all _right :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float32 _residual_len
       (sys::poke _residual_len (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _stopline_distance
       (sys::poke _stopline_distance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _stopline
       (send _stopline :serialize s)
     ;; hadmap_msgs/LocalMapPoint[] _center
     (write-long (length _center) s)
     (dolist (elem _center)
       (send elem :serialize s)
       )
     ;; hadmap_msgs/LocalMapPoint[] _left
     (write-long (length _left) s)
     (dolist (elem _left)
       (send elem :serialize s)
       )
     ;; hadmap_msgs/LocalMapPoint[] _right
     (write-long (length _right) s)
     (dolist (elem _right)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _residual_len
     (setq _residual_len (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _stopline_distance
     (setq _stopline_distance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _stopline
     (send _stopline :deserialize buf ptr-) (incf ptr- (send _stopline :serialization-length))
   ;; hadmap_msgs/LocalMapPoint[] _center
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _center (let (r) (dotimes (i n) (push (instance hadmap_msgs::LocalMapPoint :init) r)) r))
     (dolist (elem- _center)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; hadmap_msgs/LocalMapPoint[] _left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _left (let (r) (dotimes (i n) (push (instance hadmap_msgs::LocalMapPoint :init) r)) r))
     (dolist (elem- _left)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; hadmap_msgs/LocalMapPoint[] _right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _right (let (r) (dotimes (i n) (push (instance hadmap_msgs::LocalMapPoint :init) r)) r))
     (dolist (elem- _right)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hadmap_msgs::LocalMapLane :md5sum-) "f3a9c307847eb3878abedcf1188d3601")
(setf (get hadmap_msgs::LocalMapLane :datatype-) "hadmap_msgs/LocalMapLane")
(setf (get hadmap_msgs::LocalMapLane :definition-)
      "# lane id
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



(provide :hadmap_msgs/LocalMapLane "f3a9c307847eb3878abedcf1188d3601")


