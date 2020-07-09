;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::StopInfo)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'StopInfo (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::STOPINFO")
  (make-package "TOS_MSGS::STOPINFO"))

(in-package "ROS")
;;//! \htmlinclude StopInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_ON_APPEAR*" (find-package "TOS_MSGS::STOPINFO"))
(shadow '*TYPE_ON_APPEAR* (find-package "TOS_MSGS::STOPINFO"))
(defconstant tos_msgs::StopInfo::*TYPE_ON_APPEAR* 0)
(intern "*TYPE_ON_DISAPPEAR*" (find-package "TOS_MSGS::STOPINFO"))
(shadow '*TYPE_ON_DISAPPEAR* (find-package "TOS_MSGS::STOPINFO"))
(defconstant tos_msgs::StopInfo::*TYPE_ON_DISAPPEAR* 1)
(defclass tos_msgs::StopInfo
  :super ros::object
  :slots (_header _task_id _distance_shift _angle _distance_vertical _type _send_packet_id ))

(defmethod tos_msgs::StopInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_id __task_id) 0)
    ((:distance_shift __distance_shift) 0.0)
    ((:angle __angle) 0.0)
    ((:distance_vertical __distance_vertical) 0.0)
    ((:type __type) 0)
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_id (round __task_id))
   (setq _distance_shift (float __distance_shift))
   (setq _angle (float __angle))
   (setq _distance_vertical (float __distance_vertical))
   (setq _type (round __type))
   (setq _send_packet_id (round __send_packet_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:distance_shift
   (&optional __distance_shift)
   (if __distance_shift (setq _distance_shift __distance_shift)) _distance_shift)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:distance_vertical
   (&optional __distance_vertical)
   (if __distance_vertical (setq _distance_vertical __distance_vertical)) _distance_vertical)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _task_id
    4
    ;; float64 _distance_shift
    8
    ;; float64 _angle
    8
    ;; float64 _distance_vertical
    8
    ;; uint8 _type
    1
    ;; int32 _send_packet_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; float64 _distance_shift
       (sys::poke _distance_shift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_vertical
       (sys::poke _distance_vertical (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _type
       (write-byte _type s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance_shift
     (setq _distance_shift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_vertical
     (setq _distance_vertical (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::StopInfo :md5sum-) "23894fbeb72a2b6ebf5fd68cae374ee5")
(setf (get tos_msgs::StopInfo :datatype-) "tos_msgs/StopInfo")
(setf (get tos_msgs::StopInfo :definition-)
      "uint8 TYPE_ON_APPEAR = 0
uint8 TYPE_ON_DISAPPEAR = 1


Header header
uint32 task_id

# distance, [0, unlimit]
float64 distance_shift

float64 angle # rad
float64 distance_vertical

# type
uint8 type

# for test
int32 send_packet_id

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



(provide :tos_msgs/StopInfo "23894fbeb72a2b6ebf5fd68cae374ee5")


