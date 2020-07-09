;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::HeartBeat)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'HeartBeat (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::HEARTBEAT")
  (make-package "TOS_MSGS::HEARTBEAT"))

(in-package "ROS")
;;//! \htmlinclude HeartBeat.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::HeartBeat
  :super ros::object
  :slots (_header _chid _send_packet_id ))

(defmethod tos_msgs::HeartBeat
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:chid __chid) "")
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _chid (string __chid))
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
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::HeartBeat :md5sum-) "8d8c1d205c3a88ab24b1e24bfe8dd4e2")
(setf (get tos_msgs::HeartBeat :datatype-) "tos_msgs/HeartBeat")
(setf (get tos_msgs::HeartBeat :definition-)
      "Header header
string chid
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



(provide :tos_msgs/HeartBeat "8d8c1d205c3a88ab24b1e24bfe8dd4e2")


