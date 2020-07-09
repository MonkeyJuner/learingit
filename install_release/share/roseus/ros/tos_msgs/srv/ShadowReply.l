;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::ShadowReply)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'ShadowReply (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::SHADOWREPLY")
  (make-package "TOS_MSGS::SHADOWREPLY"))
(unless (find-package "TOS_MSGS::SHADOWREPLYREQUEST")
  (make-package "TOS_MSGS::SHADOWREPLYREQUEST"))
(unless (find-package "TOS_MSGS::SHADOWREPLYRESPONSE")
  (make-package "TOS_MSGS::SHADOWREPLYRESPONSE"))

(in-package "ROS")





(defclass tos_msgs::ShadowReplyRequest
  :super ros::object
  :slots (_truck_command ))

(defmethod tos_msgs::ShadowReplyRequest
  (:init
   (&key
    ((:truck_command __truck_command) (instance tos_msgs::TruckCommand :init))
    )
   (send-super :init)
   (setq _truck_command __truck_command)
   self)
  (:truck_command
   (&rest __truck_command)
   (if (keywordp (car __truck_command))
       (send* _truck_command __truck_command)
     (progn
       (if __truck_command (setq _truck_command (car __truck_command)))
       _truck_command)))
  (:serialization-length
   ()
   (+
    ;; tos_msgs/TruckCommand _truck_command
    (send _truck_command :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tos_msgs/TruckCommand _truck_command
       (send _truck_command :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tos_msgs/TruckCommand _truck_command
     (send _truck_command :deserialize buf ptr-) (incf ptr- (send _truck_command :serialization-length))
   ;;
   self)
  )

(defclass tos_msgs::ShadowReplyResponse
  :super ros::object
  :slots (_status ))

(defmethod tos_msgs::ShadowReplyResponse
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass tos_msgs::ShadowReply
  :super ros::object
  :slots ())

(setf (get tos_msgs::ShadowReply :md5sum-) "a1ee2e3e7e332f4cc76fbd43af36a624")
(setf (get tos_msgs::ShadowReply :datatype-) "tos_msgs/ShadowReply")
(setf (get tos_msgs::ShadowReply :request) tos_msgs::ShadowReplyRequest)
(setf (get tos_msgs::ShadowReply :response) tos_msgs::ShadowReplyResponse)

(defmethod tos_msgs::ShadowReplyRequest
  (:response () (instance tos_msgs::ShadowReplyResponse :init)))

(setf (get tos_msgs::ShadowReplyRequest :md5sum-) "a1ee2e3e7e332f4cc76fbd43af36a624")
(setf (get tos_msgs::ShadowReplyRequest :datatype-) "tos_msgs/ShadowReplyRequest")
(setf (get tos_msgs::ShadowReplyRequest :definition-)
      "TruckCommand truck_command


================================================================================
MSG: tos_msgs/TruckCommand
# confirm type
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
---

uint8 status

")

(setf (get tos_msgs::ShadowReplyResponse :md5sum-) "a1ee2e3e7e332f4cc76fbd43af36a624")
(setf (get tos_msgs::ShadowReplyResponse :datatype-) "tos_msgs/ShadowReplyResponse")
(setf (get tos_msgs::ShadowReplyResponse :definition-)
      "TruckCommand truck_command


================================================================================
MSG: tos_msgs/TruckCommand
# confirm type
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
---

uint8 status

")



(provide :tos_msgs/ShadowReply "a1ee2e3e7e332f4cc76fbd43af36a624")


