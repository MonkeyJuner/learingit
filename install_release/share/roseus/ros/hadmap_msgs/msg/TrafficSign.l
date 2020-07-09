;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::TrafficSign)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'TrafficSign (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::TRAFFICSIGN")
  (make-package "HADMAP_MSGS::TRAFFICSIGN"))

(in-package "ROS")
;;//! \htmlinclude TrafficSign.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_STRAIGHT*" (find-package "HADMAP_MSGS::TRAFFICSIGN"))
(shadow '*TYPE_STRAIGHT* (find-package "HADMAP_MSGS::TRAFFICSIGN"))
(defconstant hadmap_msgs::TrafficSign::*TYPE_STRAIGHT* 0)
(intern "*TYPE_UTURN*" (find-package "HADMAP_MSGS::TRAFFICSIGN"))
(shadow '*TYPE_UTURN* (find-package "HADMAP_MSGS::TRAFFICSIGN"))
(defconstant hadmap_msgs::TrafficSign::*TYPE_UTURN* 1)
(intern "*TYPE_CROSS*" (find-package "HADMAP_MSGS::TRAFFICSIGN"))
(shadow '*TYPE_CROSS* (find-package "HADMAP_MSGS::TRAFFICSIGN"))
(defconstant hadmap_msgs::TrafficSign::*TYPE_CROSS* 2)
(defclass hadmap_msgs::TrafficSign
  :super ros::object
  :slots (_header _speed_limit _type _detect_tail _next_speed_limit _dist_to_sign ))

(defmethod hadmap_msgs::TrafficSign
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:speed_limit __speed_limit) 0.0)
    ((:type __type) 0)
    ((:detect_tail __detect_tail) nil)
    ((:next_speed_limit __next_speed_limit) 0.0)
    ((:dist_to_sign __dist_to_sign) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _speed_limit (float __speed_limit))
   (setq _type (round __type))
   (setq _detect_tail __detect_tail)
   (setq _next_speed_limit (float __next_speed_limit))
   (setq _dist_to_sign (float __dist_to_sign))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:detect_tail
   (&optional __detect_tail)
   (if __detect_tail (setq _detect_tail __detect_tail)) _detect_tail)
  (:next_speed_limit
   (&optional __next_speed_limit)
   (if __next_speed_limit (setq _next_speed_limit __next_speed_limit)) _next_speed_limit)
  (:dist_to_sign
   (&optional __dist_to_sign)
   (if __dist_to_sign (setq _dist_to_sign __dist_to_sign)) _dist_to_sign)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _speed_limit
    4
    ;; uint8 _type
    1
    ;; bool _detect_tail
    1
    ;; float32 _next_speed_limit
    4
    ;; float64 _dist_to_sign
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _type
       (write-byte _type s)
     ;; bool _detect_tail
       (if _detect_tail (write-byte -1 s) (write-byte 0 s))
     ;; float32 _next_speed_limit
       (sys::poke _next_speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _dist_to_sign
       (sys::poke _dist_to_sign (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _detect_tail
     (setq _detect_tail (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _next_speed_limit
     (setq _next_speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _dist_to_sign
     (setq _dist_to_sign (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hadmap_msgs::TrafficSign :md5sum-) "51f7d15dd95740b39027418e40bee19d")
(setf (get hadmap_msgs::TrafficSign :datatype-) "hadmap_msgs/TrafficSign")
(setf (get hadmap_msgs::TrafficSign :definition-)
      "uint8 TYPE_STRAIGHT = 0
uint8 TYPE_UTURN = 1
uint8 TYPE_CROSS = 2

Header header

float32 speed_limit
uint8 type

bool detect_tail

float32 next_speed_limit
float64 dist_to_sign
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



(provide :hadmap_msgs/TrafficSign "51f7d15dd95740b39027418e40bee19d")


