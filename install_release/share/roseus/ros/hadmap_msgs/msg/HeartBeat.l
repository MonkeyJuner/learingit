;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::HeartBeat)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'HeartBeat (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::HEARTBEAT")
  (make-package "HADMAP_MSGS::HEARTBEAT"))

(in-package "ROS")
;;//! \htmlinclude HeartBeat.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hadmap_msgs::HeartBeat
  :super ros::object
  :slots (_header _is_in_map ))

(defmethod hadmap_msgs::HeartBeat
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:is_in_map __is_in_map) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _is_in_map __is_in_map)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:is_in_map
   (&optional __is_in_map)
   (if __is_in_map (setq _is_in_map __is_in_map)) _is_in_map)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _is_in_map
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _is_in_map
       (if _is_in_map (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _is_in_map
     (setq _is_in_map (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hadmap_msgs::HeartBeat :md5sum-) "8b0cf2981c193c5945dad67297c6287d")
(setf (get hadmap_msgs::HeartBeat :datatype-) "hadmap_msgs/HeartBeat")
(setf (get hadmap_msgs::HeartBeat :definition-)
      "Header header
bool is_in_map
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



(provide :hadmap_msgs/HeartBeat "8b0cf2981c193c5945dad67297c6287d")


