;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TruckStop)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TruckStop (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TRUCKSTOP")
  (make-package "TOS_MSGS::TRUCKSTOP"))

(in-package "ROS")
;;//! \htmlinclude TruckStop.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TASK_ON_ANQIAO*" (find-package "TOS_MSGS::TRUCKSTOP"))
(shadow '*TASK_ON_ANQIAO* (find-package "TOS_MSGS::TRUCKSTOP"))
(defconstant tos_msgs::TruckStop::*TASK_ON_ANQIAO* 1)
(intern "*TASK_ON_CHANGQIAO*" (find-package "TOS_MSGS::TRUCKSTOP"))
(shadow '*TASK_ON_CHANGQIAO* (find-package "TOS_MSGS::TRUCKSTOP"))
(defconstant tos_msgs::TruckStop::*TASK_ON_CHANGQIAO* 2)
(intern "*TASK_ON_LOCK*" (find-package "TOS_MSGS::TRUCKSTOP"))
(shadow '*TASK_ON_LOCK* (find-package "TOS_MSGS::TRUCKSTOP"))
(defconstant tos_msgs::TruckStop::*TASK_ON_LOCK* 3)
(defclass tos_msgs::TruckStop
  :super ros::object
  :slots (_header _task_id _crane_id _task_type _container_pos _lane_id _send_packet_id ))

(defmethod tos_msgs::TruckStop
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_id __task_id) 0)
    ((:crane_id __crane_id) "")
    ((:task_type __task_type) 0)
    ((:container_pos __container_pos) 0)
    ((:lane_id __lane_id) 0)
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_id (round __task_id))
   (setq _crane_id (string __crane_id))
   (setq _task_type (round __task_type))
   (setq _container_pos (round __container_pos))
   (setq _lane_id (round __lane_id))
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
  (:crane_id
   (&optional __crane_id)
   (if __crane_id (setq _crane_id __crane_id)) _crane_id)
  (:task_type
   (&optional __task_type)
   (if __task_type (setq _task_type __task_type)) _task_type)
  (:container_pos
   (&optional __container_pos)
   (if __container_pos (setq _container_pos __container_pos)) _container_pos)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
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
    ;; string _crane_id
    4 (length _crane_id)
    ;; uint8 _task_type
    1
    ;; uint8 _container_pos
    1
    ;; uint8 _lane_id
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
     ;; string _crane_id
       (write-long (length _crane_id) s) (princ _crane_id s)
     ;; uint8 _task_type
       (write-byte _task_type s)
     ;; uint8 _container_pos
       (write-byte _container_pos s)
     ;; uint8 _lane_id
       (write-byte _lane_id s)
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
   ;; string _crane_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _crane_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _task_type
     (setq _task_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _container_pos
     (setq _container_pos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _lane_id
     (setq _lane_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::TruckStop :md5sum-) "dd175f6393a238545ac13b8f9d66acaf")
(setf (get tos_msgs::TruckStop :datatype-) "tos_msgs/TruckStop")
(setf (get tos_msgs::TruckStop :definition-)
      "uint8 TASK_ON_ANQIAO = 1
uint8 TASK_ON_CHANGQIAO = 2
uint8 TASK_ON_LOCK = 3

Header header
uint32 task_id

string crane_id
uint8 task_type
uint8 container_pos
uint8 lane_id

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



(provide :tos_msgs/TruckStop "dd175f6393a238545ac13b8f9d66acaf")


