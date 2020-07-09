;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::ShadowTarget)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'ShadowTarget (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::SHADOWTARGET")
  (make-package "TOS_MSGS::SHADOWTARGET"))
(unless (find-package "TOS_MSGS::SHADOWTARGETREQUEST")
  (make-package "TOS_MSGS::SHADOWTARGETREQUEST"))
(unless (find-package "TOS_MSGS::SHADOWTARGETRESPONSE")
  (make-package "TOS_MSGS::SHADOWTARGETRESPONSE"))

(in-package "ROS")





(defclass tos_msgs::ShadowTargetRequest
  :super ros::object
  :slots (_truck_target ))

(defmethod tos_msgs::ShadowTargetRequest
  (:init
   (&key
    ((:truck_target __truck_target) (instance tos_msgs::TruckTarget :init))
    )
   (send-super :init)
   (setq _truck_target __truck_target)
   self)
  (:truck_target
   (&rest __truck_target)
   (if (keywordp (car __truck_target))
       (send* _truck_target __truck_target)
     (progn
       (if __truck_target (setq _truck_target (car __truck_target)))
       _truck_target)))
  (:serialization-length
   ()
   (+
    ;; tos_msgs/TruckTarget _truck_target
    (send _truck_target :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; tos_msgs/TruckTarget _truck_target
       (send _truck_target :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; tos_msgs/TruckTarget _truck_target
     (send _truck_target :deserialize buf ptr-) (incf ptr- (send _truck_target :serialization-length))
   ;;
   self)
  )

(defclass tos_msgs::ShadowTargetResponse
  :super ros::object
  :slots (_status ))

(defmethod tos_msgs::ShadowTargetResponse
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

(defclass tos_msgs::ShadowTarget
  :super ros::object
  :slots ())

(setf (get tos_msgs::ShadowTarget :md5sum-) "c8f1f473ae1dd2b6970b5ebd559b96a3")
(setf (get tos_msgs::ShadowTarget :datatype-) "tos_msgs/ShadowTarget")
(setf (get tos_msgs::ShadowTarget :request) tos_msgs::ShadowTargetRequest)
(setf (get tos_msgs::ShadowTarget :response) tos_msgs::ShadowTargetResponse)

(defmethod tos_msgs::ShadowTargetRequest
  (:response () (instance tos_msgs::ShadowTargetResponse :init)))

(setf (get tos_msgs::ShadowTargetRequest :md5sum-) "c8f1f473ae1dd2b6970b5ebd559b96a3")
(setf (get tos_msgs::ShadowTargetRequest :datatype-) "tos_msgs/ShadowTargetRequest")
(setf (get tos_msgs::ShadowTargetRequest :definition-)
      "TruckTarget truck_target


================================================================================
MSG: tos_msgs/TruckTarget
# command type
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
---

uint8 status

")

(setf (get tos_msgs::ShadowTargetResponse :md5sum-) "c8f1f473ae1dd2b6970b5ebd559b96a3")
(setf (get tos_msgs::ShadowTargetResponse :datatype-) "tos_msgs/ShadowTargetResponse")
(setf (get tos_msgs::ShadowTargetResponse :definition-)
      "TruckTarget truck_target


================================================================================
MSG: tos_msgs/TruckTarget
# command type
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
---

uint8 status

")



(provide :tos_msgs/ShadowTarget "c8f1f473ae1dd2b6970b5ebd559b96a3")


