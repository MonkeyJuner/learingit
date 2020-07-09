;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::Ack)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'Ack (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::ACK")
  (make-package "TOS_MSGS::ACK"))

(in-package "ROS")
;;//! \htmlinclude Ack.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::Ack
  :super ros::object
  :slots (_header _chid _recv_packet_id ))

(defmethod tos_msgs::Ack
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:chid __chid) "")
    ((:recv_packet_id __recv_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _chid (string __chid))
   (setq _recv_packet_id (round __recv_packet_id))
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
  (:recv_packet_id
   (&optional __recv_packet_id)
   (if __recv_packet_id (setq _recv_packet_id __recv_packet_id)) _recv_packet_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _chid
    4 (length _chid)
    ;; int32 _recv_packet_id
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
     ;; int32 _recv_packet_id
       (write-long _recv_packet_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _chid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _recv_packet_id
     (setq _recv_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::Ack :md5sum-) "13cde61edac7c6d8fd963194a4397a3e")
(setf (get tos_msgs::Ack :datatype-) "tos_msgs/Ack")
(setf (get tos_msgs::Ack :definition-)
      "Header header
string chid
int32 recv_packet_id



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



(provide :tos_msgs/Ack "13cde61edac7c6d8fd963194a4397a3e")


