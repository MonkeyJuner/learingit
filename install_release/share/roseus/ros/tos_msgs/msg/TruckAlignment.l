;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TruckAlignment)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TruckAlignment (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TRUCKALIGNMENT")
  (make-package "TOS_MSGS::TRUCKALIGNMENT"))

(in-package "ROS")
;;//! \htmlinclude TruckAlignment.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::TruckAlignment
  :super ros::object
  :slots (_header _TruckNBR _Stamp _WorkOder _CraneNBR _InPlace _Rest _TruckLeave _send_packet_id ))

(defmethod tos_msgs::TruckAlignment
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:TruckNBR __TruckNBR) "")
    ((:Stamp __Stamp) "")
    ((:WorkOder __WorkOder) "")
    ((:CraneNBR __CraneNBR) 0)
    ((:InPlace __InPlace) 0)
    ((:Rest __Rest) 0)
    ((:TruckLeave __TruckLeave) 0)
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _TruckNBR (string __TruckNBR))
   (setq _Stamp (string __Stamp))
   (setq _WorkOder (string __WorkOder))
   (setq _CraneNBR (round __CraneNBR))
   (setq _InPlace (round __InPlace))
   (setq _Rest (round __Rest))
   (setq _TruckLeave (round __TruckLeave))
   (setq _send_packet_id (round __send_packet_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:TruckNBR
   (&optional __TruckNBR)
   (if __TruckNBR (setq _TruckNBR __TruckNBR)) _TruckNBR)
  (:Stamp
   (&optional __Stamp)
   (if __Stamp (setq _Stamp __Stamp)) _Stamp)
  (:WorkOder
   (&optional __WorkOder)
   (if __WorkOder (setq _WorkOder __WorkOder)) _WorkOder)
  (:CraneNBR
   (&optional __CraneNBR)
   (if __CraneNBR (setq _CraneNBR __CraneNBR)) _CraneNBR)
  (:InPlace
   (&optional __InPlace)
   (if __InPlace (setq _InPlace __InPlace)) _InPlace)
  (:Rest
   (&optional __Rest)
   (if __Rest (setq _Rest __Rest)) _Rest)
  (:TruckLeave
   (&optional __TruckLeave)
   (if __TruckLeave (setq _TruckLeave __TruckLeave)) _TruckLeave)
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _TruckNBR
    4 (length _TruckNBR)
    ;; string _Stamp
    4 (length _Stamp)
    ;; string _WorkOder
    4 (length _WorkOder)
    ;; int32 _CraneNBR
    4
    ;; uint16 _InPlace
    2
    ;; uint16 _Rest
    2
    ;; uint16 _TruckLeave
    2
    ;; int32 _send_packet_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _TruckNBR
       (write-long (length _TruckNBR) s) (princ _TruckNBR s)
     ;; string _Stamp
       (write-long (length _Stamp) s) (princ _Stamp s)
     ;; string _WorkOder
       (write-long (length _WorkOder) s) (princ _WorkOder s)
     ;; int32 _CraneNBR
       (write-long _CraneNBR s)
     ;; uint16 _InPlace
       (write-word _InPlace s)
     ;; uint16 _Rest
       (write-word _Rest s)
     ;; uint16 _TruckLeave
       (write-word _TruckLeave s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _TruckNBR
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _TruckNBR (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Stamp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Stamp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _WorkOder
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _WorkOder (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _CraneNBR
     (setq _CraneNBR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _InPlace
     (setq _InPlace (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _Rest
     (setq _Rest (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _TruckLeave
     (setq _TruckLeave (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::TruckAlignment :md5sum-) "65d8fffd5aa268d9cd99df47762be918")
(setf (get tos_msgs::TruckAlignment :datatype-) "tos_msgs/TruckAlignment")
(setf (get tos_msgs::TruckAlignment :definition-)
      "Header header

string TruckNBR
string Stamp
string WorkOder
int32 CraneNBR
uint16 InPlace
uint16 Rest
uint16 TruckLeave

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



(provide :tos_msgs/TruckAlignment "65d8fffd5aa268d9cd99df47762be918")


