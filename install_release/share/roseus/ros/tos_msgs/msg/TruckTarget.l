;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TruckTarget)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TruckTarget (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TRUCKTARGET")
  (make-package "TOS_MSGS::TRUCKTARGET"))

(in-package "ROS")
;;//! \htmlinclude TruckTarget.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*START_FROM*" (find-package "TOS_MSGS::TRUCKTARGET"))
(shadow '*START_FROM* (find-package "TOS_MSGS::TRUCKTARGET"))
(defconstant tos_msgs::TruckTarget::*START_FROM* 0)
(intern "*ARRIVE_AT*" (find-package "TOS_MSGS::TRUCKTARGET"))
(shadow '*ARRIVE_AT* (find-package "TOS_MSGS::TRUCKTARGET"))
(defconstant tos_msgs::TruckTarget::*ARRIVE_AT* 1)
(intern "*LOAD*" (find-package "TOS_MSGS::TRUCKTARGET"))
(shadow '*LOAD* (find-package "TOS_MSGS::TRUCKTARGET"))
(defconstant tos_msgs::TruckTarget::*LOAD* 0)
(intern "*UNLOAD*" (find-package "TOS_MSGS::TRUCKTARGET"))
(shadow '*UNLOAD* (find-package "TOS_MSGS::TRUCKTARGET"))
(defconstant tos_msgs::TruckTarget::*UNLOAD* 1)
(defclass tos_msgs::TruckTarget
  :super ros::object
  :slots (_header _cheid _task_id _sub_task_id _targets _display_msg _operate_type _command_type _send_packet_id ))

(defmethod tos_msgs::TruckTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cheid __cheid) "")
    ((:task_id __task_id) 0)
    ((:sub_task_id __sub_task_id) 0)
    ((:targets __targets) (let (r) (dotimes (i 0) (push (instance tos_msgs::TargetInfo :init) r)) r))
    ((:display_msg __display_msg) "")
    ((:operate_type __operate_type) 0)
    ((:command_type __command_type) 0)
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cheid (string __cheid))
   (setq _task_id (round __task_id))
   (setq _sub_task_id (round __sub_task_id))
   (setq _targets __targets)
   (setq _display_msg (string __display_msg))
   (setq _operate_type (round __operate_type))
   (setq _command_type (round __command_type))
   (setq _send_packet_id (round __send_packet_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cheid
   (&optional __cheid)
   (if __cheid (setq _cheid __cheid)) _cheid)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:sub_task_id
   (&optional __sub_task_id)
   (if __sub_task_id (setq _sub_task_id __sub_task_id)) _sub_task_id)
  (:targets
   (&rest __targets)
   (if (keywordp (car __targets))
       (send* _targets __targets)
     (progn
       (if __targets (setq _targets (car __targets)))
       _targets)))
  (:display_msg
   (&optional __display_msg)
   (if __display_msg (setq _display_msg __display_msg)) _display_msg)
  (:operate_type
   (&optional __operate_type)
   (if __operate_type (setq _operate_type __operate_type)) _operate_type)
  (:command_type
   (&optional __command_type)
   (if __command_type (setq _command_type __command_type)) _command_type)
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _cheid
    4 (length _cheid)
    ;; uint32 _task_id
    4
    ;; uint16 _sub_task_id
    2
    ;; tos_msgs/TargetInfo[] _targets
    (apply #'+ (send-all _targets :serialization-length)) 4
    ;; string _display_msg
    4 (length _display_msg)
    ;; uint8 _operate_type
    1
    ;; uint8 _command_type
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
     ;; string _cheid
       (write-long (length _cheid) s) (princ _cheid s)
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; uint16 _sub_task_id
       (write-word _sub_task_id s)
     ;; tos_msgs/TargetInfo[] _targets
     (write-long (length _targets) s)
     (dolist (elem _targets)
       (send elem :serialize s)
       )
     ;; string _display_msg
       (write-long (length _display_msg) s) (princ _display_msg s)
     ;; uint8 _operate_type
       (write-byte _operate_type s)
     ;; uint8 _command_type
       (write-byte _command_type s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _cheid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cheid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _sub_task_id
     (setq _sub_task_id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; tos_msgs/TargetInfo[] _targets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _targets (let (r) (dotimes (i n) (push (instance tos_msgs::TargetInfo :init) r)) r))
     (dolist (elem- _targets)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _display_msg
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _display_msg (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _operate_type
     (setq _operate_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _command_type
     (setq _command_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::TruckTarget :md5sum-) "f554a84fb3643ba35c52d9e4368a490a")
(setf (get tos_msgs::TruckTarget :datatype-) "tos_msgs/TruckTarget")
(setf (get tos_msgs::TruckTarget :definition-)
      "# command type
uint8 START_FROM      = 0
uint8 ARRIVE_AT       = 1

# operate type
uint8 LOAD	= 0
uint8 UNLOAD	= 1


Header header

# truck id
string cheid

# task id
uint32 task_id
uint16 sub_task_id

# taget info
TargetInfo[] targets

# display message
string display_msg

# operate
uint8 operate_type

# for test
uint8 command_type
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

================================================================================
MSG: tos_msgs/TargetInfo
# target type
uint8 NORMAL_YARD_CRANE         = 0
uint8 AUTOMATIC_YARD_CRANE      = 1
uint8 GANTRY_CRANE      	= 2
uint8 TRANSFER_ZONE      	= 3

# target
uint8 target_type

# target info
string section
string bay
string transfer_zone

string gantry_crane_id
string lane_id

# container
Container container

# move stage
string move_stage

# for test
string ppos

================================================================================
MSG: tos_msgs/Container
string container_id
uint8 container_size
int32 container_weight
uint8 container_pos 

")



(provide :tos_msgs/TruckTarget "f554a84fb3643ba35c52d9e4368a490a")


