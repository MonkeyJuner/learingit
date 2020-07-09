;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TruckCommand)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TruckCommand (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TRUCKCOMMAND")
  (make-package "TOS_MSGS::TRUCKCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude TruckCommand.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*CONFIRM*" (find-package "TOS_MSGS::TRUCKCOMMAND"))
(shadow '*CONFIRM* (find-package "TOS_MSGS::TRUCKCOMMAND"))
(defconstant tos_msgs::TruckCommand::*CONFIRM* 1)
(intern "*REFRESH*" (find-package "TOS_MSGS::TRUCKCOMMAND"))
(shadow '*REFRESH* (find-package "TOS_MSGS::TRUCKCOMMAND"))
(defconstant tos_msgs::TruckCommand::*REFRESH* 2)
(defclass tos_msgs::TruckCommand
  :super ros::object
  :slots (_header _task_id _confirm_type _cheid _send_packet_id ))

(defmethod tos_msgs::TruckCommand
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_id __task_id) 0)
    ((:confirm_type __confirm_type) 0)
    ((:cheid __cheid) "")
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_id (round __task_id))
   (setq _confirm_type (round __confirm_type))
   (setq _cheid (string __cheid))
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
  (:confirm_type
   (&optional __confirm_type)
   (if __confirm_type (setq _confirm_type __confirm_type)) _confirm_type)
  (:cheid
   (&optional __cheid)
   (if __cheid (setq _cheid __cheid)) _cheid)
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
    ;; uint8 _confirm_type
    1
    ;; string _cheid
    4 (length _cheid)
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
     ;; uint8 _confirm_type
       (write-byte _confirm_type s)
     ;; string _cheid
       (write-long (length _cheid) s) (princ _cheid s)
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
   ;; uint8 _confirm_type
     (setq _confirm_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _cheid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cheid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::TruckCommand :md5sum-) "a146c4c4d7747195ef6beffa8f9470bb")
(setf (get tos_msgs::TruckCommand :datatype-) "tos_msgs/TruckCommand")
(setf (get tos_msgs::TruckCommand :definition-)
      "# confirm type
uint8 CONFIRM         = 1
uint8 REFRESH         = 2

Header header

# task id
uint32 task_id

uint8 confirm_type


# for test
string cheid
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



(provide :tos_msgs/TruckCommand "a146c4c4d7747195ef6beffa8f9470bb")


