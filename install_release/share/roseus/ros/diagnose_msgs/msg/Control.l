;; Auto-generated. Do not edit!


(when (boundp 'diagnose_msgs::Control)
  (if (not (find-package "DIAGNOSE_MSGS"))
    (make-package "DIAGNOSE_MSGS"))
  (shadow 'Control (find-package "DIAGNOSE_MSGS")))
(unless (find-package "DIAGNOSE_MSGS::CONTROL")
  (make-package "DIAGNOSE_MSGS::CONTROL"))

(in-package "ROS")
;;//! \htmlinclude Control.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass diagnose_msgs::Control
  :super ros::object
  :slots (_header _pose _steering _heading_err _deviation_err _curv _threshold _throttle _brake _stanley_calc_info _longitude_calc_info ))

(defmethod diagnose_msgs::Control
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:pose __pose) (instance geometry_msgs::Transform :init))
    ((:steering __steering) 0.0)
    ((:heading_err __heading_err) 0.0)
    ((:deviation_err __deviation_err) 0.0)
    ((:curv __curv) 0.0)
    ((:threshold __threshold) 0.0)
    ((:throttle __throttle) 0.0)
    ((:brake __brake) 0.0)
    ((:stanley_calc_info __stanley_calc_info) "")
    ((:longitude_calc_info __longitude_calc_info) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _pose __pose)
   (setq _steering (float __steering))
   (setq _heading_err (float __heading_err))
   (setq _deviation_err (float __deviation_err))
   (setq _curv (float __curv))
   (setq _threshold (float __threshold))
   (setq _throttle (float __throttle))
   (setq _brake (float __brake))
   (setq _stanley_calc_info (string __stanley_calc_info))
   (setq _longitude_calc_info (string __longitude_calc_info))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:steering
   (&optional __steering)
   (if __steering (setq _steering __steering)) _steering)
  (:heading_err
   (&optional __heading_err)
   (if __heading_err (setq _heading_err __heading_err)) _heading_err)
  (:deviation_err
   (&optional __deviation_err)
   (if __deviation_err (setq _deviation_err __deviation_err)) _deviation_err)
  (:curv
   (&optional __curv)
   (if __curv (setq _curv __curv)) _curv)
  (:threshold
   (&optional __threshold)
   (if __threshold (setq _threshold __threshold)) _threshold)
  (:throttle
   (&optional __throttle)
   (if __throttle (setq _throttle __throttle)) _throttle)
  (:brake
   (&optional __brake)
   (if __brake (setq _brake __brake)) _brake)
  (:stanley_calc_info
   (&optional __stanley_calc_info)
   (if __stanley_calc_info (setq _stanley_calc_info __stanley_calc_info)) _stanley_calc_info)
  (:longitude_calc_info
   (&optional __longitude_calc_info)
   (if __longitude_calc_info (setq _longitude_calc_info __longitude_calc_info)) _longitude_calc_info)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Transform _pose
    (send _pose :serialization-length)
    ;; float64 _steering
    8
    ;; float64 _heading_err
    8
    ;; float64 _deviation_err
    8
    ;; float64 _curv
    8
    ;; float64 _threshold
    8
    ;; float64 _throttle
    8
    ;; float64 _brake
    8
    ;; string _stanley_calc_info
    4 (length _stanley_calc_info)
    ;; string _longitude_calc_info
    4 (length _longitude_calc_info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Transform _pose
       (send _pose :serialize s)
     ;; float64 _steering
       (sys::poke _steering (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading_err
       (sys::poke _heading_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _deviation_err
       (sys::poke _deviation_err (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _curv
       (sys::poke _curv (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _threshold
       (sys::poke _threshold (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _throttle
       (sys::poke _throttle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brake
       (sys::poke _brake (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _stanley_calc_info
       (write-long (length _stanley_calc_info) s) (princ _stanley_calc_info s)
     ;; string _longitude_calc_info
       (write-long (length _longitude_calc_info) s) (princ _longitude_calc_info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; geometry_msgs/Transform _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; float64 _steering
     (setq _steering (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading_err
     (setq _heading_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _deviation_err
     (setq _deviation_err (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _curv
     (setq _curv (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _threshold
     (setq _threshold (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _throttle
     (setq _throttle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brake
     (setq _brake (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _stanley_calc_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _stanley_calc_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _longitude_calc_info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _longitude_calc_info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get diagnose_msgs::Control :md5sum-) "07098fbba8cab2027cb5d1113b486a90")
(setf (get diagnose_msgs::Control :datatype-) "diagnose_msgs/Control")
(setf (get diagnose_msgs::Control :definition-)
      "Header header

geometry_msgs/Transform pose

float64 steering
float64 heading_err
float64 deviation_err
float64 curv
float64 threshold

float64 throttle
float64 brake

string stanley_calc_info
string longitude_calc_info
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
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :diagnose_msgs/Control "07098fbba8cab2027cb5d1113b486a90")


