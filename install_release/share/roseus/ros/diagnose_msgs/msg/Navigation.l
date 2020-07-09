;; Auto-generated. Do not edit!


(when (boundp 'diagnose_msgs::Navigation)
  (if (not (find-package "DIAGNOSE_MSGS"))
    (make-package "DIAGNOSE_MSGS"))
  (shadow 'Navigation (find-package "DIAGNOSE_MSGS")))
(unless (find-package "DIAGNOSE_MSGS::NAVIGATION")
  (make-package "DIAGNOSE_MSGS::NAVIGATION"))

(in-package "ROS")
;;//! \htmlinclude Navigation.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass diagnose_msgs::Navigation
  :super ros::object
  :slots (_header _gnss_x _gnss_y _imu_theta _imu_a _imu_omega _wheelspeed_v _wheelspeed_omega _x _y _v _theta _a _omega ))

(defmethod diagnose_msgs::Navigation
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:gnss_x __gnss_x) 0.0)
    ((:gnss_y __gnss_y) 0.0)
    ((:imu_theta __imu_theta) 0.0)
    ((:imu_a __imu_a) 0.0)
    ((:imu_omega __imu_omega) 0.0)
    ((:wheelspeed_v __wheelspeed_v) 0.0)
    ((:wheelspeed_omega __wheelspeed_omega) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:v __v) 0.0)
    ((:theta __theta) 0.0)
    ((:a __a) 0.0)
    ((:omega __omega) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _gnss_x (float __gnss_x))
   (setq _gnss_y (float __gnss_y))
   (setq _imu_theta (float __imu_theta))
   (setq _imu_a (float __imu_a))
   (setq _imu_omega (float __imu_omega))
   (setq _wheelspeed_v (float __wheelspeed_v))
   (setq _wheelspeed_omega (float __wheelspeed_omega))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _v (float __v))
   (setq _theta (float __theta))
   (setq _a (float __a))
   (setq _omega (float __omega))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:gnss_x
   (&optional __gnss_x)
   (if __gnss_x (setq _gnss_x __gnss_x)) _gnss_x)
  (:gnss_y
   (&optional __gnss_y)
   (if __gnss_y (setq _gnss_y __gnss_y)) _gnss_y)
  (:imu_theta
   (&optional __imu_theta)
   (if __imu_theta (setq _imu_theta __imu_theta)) _imu_theta)
  (:imu_a
   (&optional __imu_a)
   (if __imu_a (setq _imu_a __imu_a)) _imu_a)
  (:imu_omega
   (&optional __imu_omega)
   (if __imu_omega (setq _imu_omega __imu_omega)) _imu_omega)
  (:wheelspeed_v
   (&optional __wheelspeed_v)
   (if __wheelspeed_v (setq _wheelspeed_v __wheelspeed_v)) _wheelspeed_v)
  (:wheelspeed_omega
   (&optional __wheelspeed_omega)
   (if __wheelspeed_omega (setq _wheelspeed_omega __wheelspeed_omega)) _wheelspeed_omega)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:omega
   (&optional __omega)
   (if __omega (setq _omega __omega)) _omega)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _gnss_x
    8
    ;; float64 _gnss_y
    8
    ;; float64 _imu_theta
    8
    ;; float64 _imu_a
    8
    ;; float64 _imu_omega
    8
    ;; float64 _wheelspeed_v
    8
    ;; float64 _wheelspeed_omega
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _v
    8
    ;; float64 _theta
    8
    ;; float64 _a
    8
    ;; float64 _omega
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _gnss_x
       (sys::poke _gnss_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gnss_y
       (sys::poke _gnss_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_theta
       (sys::poke _imu_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_a
       (sys::poke _imu_a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _imu_omega
       (sys::poke _imu_omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wheelspeed_v
       (sys::poke _wheelspeed_v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _wheelspeed_omega
       (sys::poke _wheelspeed_omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _omega
       (sys::poke _omega (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _gnss_x
     (setq _gnss_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gnss_y
     (setq _gnss_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_theta
     (setq _imu_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_a
     (setq _imu_a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _imu_omega
     (setq _imu_omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wheelspeed_v
     (setq _wheelspeed_v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _wheelspeed_omega
     (setq _wheelspeed_omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _omega
     (setq _omega (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get diagnose_msgs::Navigation :md5sum-) "0fb34337e19289fd70c07df0de03b71c")
(setf (get diagnose_msgs::Navigation :datatype-) "diagnose_msgs/Navigation")
(setf (get diagnose_msgs::Navigation :definition-)
      "Header header

## original data
float64 gnss_x
float64 gnss_y
float64 imu_theta
float64 imu_a
float64 imu_omega
float64 wheelspeed_v
float64 wheelspeed_omega

## after process
float64 x
float64 y
float64 v
float64 theta
float64 a
float64 omega

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



(provide :diagnose_msgs/Navigation "0fb34337e19289fd70c07df0de03b71c")


