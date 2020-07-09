;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TruckArrived)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TruckArrived (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TRUCKARRIVED")
  (make-package "TOS_MSGS::TRUCKARRIVED"))

(in-package "ROS")
;;//! \htmlinclude TruckArrived.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::TruckArrived
  :super ros::object
  :slots (_header _chid _arrived _task_key _send_packet_id ))

(defmethod tos_msgs::TruckArrived
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:chid __chid) "")
    ((:arrived __arrived) nil)
    ((:task_key __task_key) 0)
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _chid (string __chid))
   (setq _arrived __arrived)
   (setq _task_key (round __task_key))
   (setq _send_packet_id (round __send_packet_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:chid
   (&optional __chid)
   (if __chid (setq _chid __chid)) _chid)
  (:arrived
   (&optional __arrived)
   (if __arrived (setq _arrived __arrived)) _arrived)
  (:task_key
   (&optional __task_key)
   (if __task_key (setq _task_key __task_key)) _task_key)
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _chid
    4 (length _chid)
    ;; bool _arrived
    1
    ;; uint32 _task_key
    4
    ;; int32 _send_packet_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _chid
       (write-long (length _chid) s) (princ _chid s)
     ;; bool _arrived
       (if _arrived (write-byte -1 s) (write-byte 0 s))
     ;; uint32 _task_key
       (write-long _task_key s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _chid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _arrived
     (setq _arrived (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint32 _task_key
     (setq _task_key (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::TruckArrived :md5sum-) "b64e38fecffb9b2e3ac7616cb715411c")
(setf (get tos_msgs::TruckArrived :datatype-) "tos_msgs/TruckArrived")
(setf (get tos_msgs::TruckArrived :definition-)
      "Header header
string chid
bool arrived

# task key (task_id)
uint32 task_key

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



(provide :tos_msgs/TruckArrived "b64e38fecffb9b2e3ac7616cb715411c")


