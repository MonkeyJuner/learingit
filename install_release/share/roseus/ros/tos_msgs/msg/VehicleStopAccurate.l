;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::VehicleStopAccurate)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'VehicleStopAccurate (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::VEHICLESTOPACCURATE")
  (make-package "TOS_MSGS::VEHICLESTOPACCURATE"))

(in-package "ROS")
;;//! \htmlinclude VehicleStopAccurate.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*STOP_UNKNOWN*" (find-package "TOS_MSGS::VEHICLESTOPACCURATE"))
(shadow '*STOP_UNKNOWN* (find-package "TOS_MSGS::VEHICLESTOPACCURATE"))
(defconstant tos_msgs::VehicleStopAccurate::*STOP_UNKNOWN* 0)
(intern "*STOP_FOR_MAP*" (find-package "TOS_MSGS::VEHICLESTOPACCURATE"))
(shadow '*STOP_FOR_MAP* (find-package "TOS_MSGS::VEHICLESTOPACCURATE"))
(defconstant tos_msgs::VehicleStopAccurate::*STOP_FOR_MAP* 1)
(intern "*STOP_FOR_TAG*" (find-package "TOS_MSGS::VEHICLESTOPACCURATE"))
(shadow '*STOP_FOR_TAG* (find-package "TOS_MSGS::VEHICLESTOPACCURATE"))
(defconstant tos_msgs::VehicleStopAccurate::*STOP_FOR_TAG* 2)
(intern "*STOP_FOR_PLC*" (find-package "TOS_MSGS::VEHICLESTOPACCURATE"))
(shadow '*STOP_FOR_PLC* (find-package "TOS_MSGS::VEHICLESTOPACCURATE"))
(defconstant tos_msgs::VehicleStopAccurate::*STOP_FOR_PLC* 3)
(defclass tos_msgs::VehicleStopAccurate
  :super ros::object
  :slots (_header _task_id _chid _stop_for _send_packet_id _stop_tag_id _stop_tag_type _stop_offset ))

(defmethod tos_msgs::VehicleStopAccurate
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_id __task_id) 0)
    ((:chid __chid) "")
    ((:stop_for __stop_for) 0)
    ((:send_packet_id __send_packet_id) 0)
    ((:stop_tag_id __stop_tag_id) 0)
    ((:stop_tag_type __stop_tag_type) 0)
    ((:stop_offset __stop_offset) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_id (round __task_id))
   (setq _chid (string __chid))
   (setq _stop_for (round __stop_for))
   (setq _send_packet_id (round __send_packet_id))
   (setq _stop_tag_id (round __stop_tag_id))
   (setq _stop_tag_type (round __stop_tag_type))
   (setq _stop_offset (float __stop_offset))
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
  (:chid
   (&optional __chid)
   (if __chid (setq _chid __chid)) _chid)
  (:stop_for
   (&optional __stop_for)
   (if __stop_for (setq _stop_for __stop_for)) _stop_for)
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:stop_tag_id
   (&optional __stop_tag_id)
   (if __stop_tag_id (setq _stop_tag_id __stop_tag_id)) _stop_tag_id)
  (:stop_tag_type
   (&optional __stop_tag_type)
   (if __stop_tag_type (setq _stop_tag_type __stop_tag_type)) _stop_tag_type)
  (:stop_offset
   (&optional __stop_offset)
   (if __stop_offset (setq _stop_offset __stop_offset)) _stop_offset)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _task_id
    4
    ;; string _chid
    4 (length _chid)
    ;; uint8 _stop_for
    1
    ;; int32 _send_packet_id
    4
    ;; int32 _stop_tag_id
    4
    ;; uint8 _stop_tag_type
    1
    ;; float64 _stop_offset
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; string _chid
       (write-long (length _chid) s) (princ _chid s)
     ;; uint8 _stop_for
       (write-byte _stop_for s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;; int32 _stop_tag_id
       (write-long _stop_tag_id s)
     ;; uint8 _stop_tag_type
       (write-byte _stop_tag_type s)
     ;; float64 _stop_offset
       (sys::poke _stop_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _chid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _stop_for
     (setq _stop_for (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _stop_tag_id
     (setq _stop_tag_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _stop_tag_type
     (setq _stop_tag_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _stop_offset
     (setq _stop_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tos_msgs::VehicleStopAccurate :md5sum-) "e35e264833827db6110049455f7aabe3")
(setf (get tos_msgs::VehicleStopAccurate :datatype-) "tos_msgs/VehicleStopAccurate")
(setf (get tos_msgs::VehicleStopAccurate :definition-)
      "uint8 STOP_UNKNOWN = 0
uint8 STOP_FOR_MAP = 1
uint8 STOP_FOR_TAG = 2
uint8 STOP_FOR_PLC = 3

Header header
uint32 task_id
string chid
uint8 stop_for
int32 send_packet_id
int32 stop_tag_id
uint8 stop_tag_type
float64 stop_offset

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



(provide :tos_msgs/VehicleStopAccurate "e35e264833827db6110049455f7aabe3")


