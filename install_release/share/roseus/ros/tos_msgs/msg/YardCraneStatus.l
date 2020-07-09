;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::YardCraneStatus)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'YardCraneStatus (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::YARDCRANESTATUS")
  (make-package "TOS_MSGS::YARDCRANESTATUS"))

(in-package "ROS")
;;//! \htmlinclude YardCraneStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::YardCraneStatus
  :super ros::object
  :slots (_header _WorkOrder _CraneNBR _TruckNBR _Time _GantryPosition _GantryMove _TrolleyPosition _HositPosition _SpreadLock _SpreadLoad _SpreadWorkType _VasStatus _TruckLoad _TruckInPosition _SpreadOnChassis _TruckLeave _Distance _send_packet_id ))

(defmethod tos_msgs::YardCraneStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:WorkOrder __WorkOrder) "")
    ((:CraneNBR __CraneNBR) 0)
    ((:TruckNBR __TruckNBR) "")
    ((:Time __Time) "")
    ((:GantryPosition __GantryPosition) 0.0)
    ((:GantryMove __GantryMove) 0)
    ((:TrolleyPosition __TrolleyPosition) 0.0)
    ((:HositPosition __HositPosition) 0.0)
    ((:SpreadLock __SpreadLock) 0)
    ((:SpreadLoad __SpreadLoad) 0.0)
    ((:SpreadWorkType __SpreadWorkType) 0)
    ((:VasStatus __VasStatus) 0)
    ((:TruckLoad __TruckLoad) 0)
    ((:TruckInPosition __TruckInPosition) 0)
    ((:SpreadOnChassis __SpreadOnChassis) 0)
    ((:TruckLeave __TruckLeave) 0)
    ((:Distance __Distance) 0)
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _WorkOrder (string __WorkOrder))
   (setq _CraneNBR (round __CraneNBR))
   (setq _TruckNBR (string __TruckNBR))
   (setq _Time (string __Time))
   (setq _GantryPosition (float __GantryPosition))
   (setq _GantryMove (round __GantryMove))
   (setq _TrolleyPosition (float __TrolleyPosition))
   (setq _HositPosition (float __HositPosition))
   (setq _SpreadLock (round __SpreadLock))
   (setq _SpreadLoad (float __SpreadLoad))
   (setq _SpreadWorkType (round __SpreadWorkType))
   (setq _VasStatus (round __VasStatus))
   (setq _TruckLoad (round __TruckLoad))
   (setq _TruckInPosition (round __TruckInPosition))
   (setq _SpreadOnChassis (round __SpreadOnChassis))
   (setq _TruckLeave (round __TruckLeave))
   (setq _Distance (round __Distance))
   (setq _send_packet_id (round __send_packet_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:WorkOrder
   (&optional __WorkOrder)
   (if __WorkOrder (setq _WorkOrder __WorkOrder)) _WorkOrder)
  (:CraneNBR
   (&optional __CraneNBR)
   (if __CraneNBR (setq _CraneNBR __CraneNBR)) _CraneNBR)
  (:TruckNBR
   (&optional __TruckNBR)
   (if __TruckNBR (setq _TruckNBR __TruckNBR)) _TruckNBR)
  (:Time
   (&optional __Time)
   (if __Time (setq _Time __Time)) _Time)
  (:GantryPosition
   (&optional __GantryPosition)
   (if __GantryPosition (setq _GantryPosition __GantryPosition)) _GantryPosition)
  (:GantryMove
   (&optional __GantryMove)
   (if __GantryMove (setq _GantryMove __GantryMove)) _GantryMove)
  (:TrolleyPosition
   (&optional __TrolleyPosition)
   (if __TrolleyPosition (setq _TrolleyPosition __TrolleyPosition)) _TrolleyPosition)
  (:HositPosition
   (&optional __HositPosition)
   (if __HositPosition (setq _HositPosition __HositPosition)) _HositPosition)
  (:SpreadLock
   (&optional __SpreadLock)
   (if __SpreadLock (setq _SpreadLock __SpreadLock)) _SpreadLock)
  (:SpreadLoad
   (&optional __SpreadLoad)
   (if __SpreadLoad (setq _SpreadLoad __SpreadLoad)) _SpreadLoad)
  (:SpreadWorkType
   (&optional __SpreadWorkType)
   (if __SpreadWorkType (setq _SpreadWorkType __SpreadWorkType)) _SpreadWorkType)
  (:VasStatus
   (&optional __VasStatus)
   (if __VasStatus (setq _VasStatus __VasStatus)) _VasStatus)
  (:TruckLoad
   (&optional __TruckLoad)
   (if __TruckLoad (setq _TruckLoad __TruckLoad)) _TruckLoad)
  (:TruckInPosition
   (&optional __TruckInPosition)
   (if __TruckInPosition (setq _TruckInPosition __TruckInPosition)) _TruckInPosition)
  (:SpreadOnChassis
   (&optional __SpreadOnChassis)
   (if __SpreadOnChassis (setq _SpreadOnChassis __SpreadOnChassis)) _SpreadOnChassis)
  (:TruckLeave
   (&optional __TruckLeave)
   (if __TruckLeave (setq _TruckLeave __TruckLeave)) _TruckLeave)
  (:Distance
   (&optional __Distance)
   (if __Distance (setq _Distance __Distance)) _Distance)
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _WorkOrder
    4 (length _WorkOrder)
    ;; int32 _CraneNBR
    4
    ;; string _TruckNBR
    4 (length _TruckNBR)
    ;; string _Time
    4 (length _Time)
    ;; float64 _GantryPosition
    8
    ;; uint8 _GantryMove
    1
    ;; float64 _TrolleyPosition
    8
    ;; float64 _HositPosition
    8
    ;; uint8 _SpreadLock
    1
    ;; float64 _SpreadLoad
    8
    ;; int32 _SpreadWorkType
    4
    ;; uint8 _VasStatus
    1
    ;; uint8 _TruckLoad
    1
    ;; uint8 _TruckInPosition
    1
    ;; uint8 _SpreadOnChassis
    1
    ;; uint8 _TruckLeave
    1
    ;; int32 _Distance
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
     ;; string _WorkOrder
       (write-long (length _WorkOrder) s) (princ _WorkOrder s)
     ;; int32 _CraneNBR
       (write-long _CraneNBR s)
     ;; string _TruckNBR
       (write-long (length _TruckNBR) s) (princ _TruckNBR s)
     ;; string _Time
       (write-long (length _Time) s) (princ _Time s)
     ;; float64 _GantryPosition
       (sys::poke _GantryPosition (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _GantryMove
       (write-byte _GantryMove s)
     ;; float64 _TrolleyPosition
       (sys::poke _TrolleyPosition (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _HositPosition
       (sys::poke _HositPosition (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _SpreadLock
       (write-byte _SpreadLock s)
     ;; float64 _SpreadLoad
       (sys::poke _SpreadLoad (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _SpreadWorkType
       (write-long _SpreadWorkType s)
     ;; uint8 _VasStatus
       (write-byte _VasStatus s)
     ;; uint8 _TruckLoad
       (write-byte _TruckLoad s)
     ;; uint8 _TruckInPosition
       (write-byte _TruckInPosition s)
     ;; uint8 _SpreadOnChassis
       (write-byte _SpreadOnChassis s)
     ;; uint8 _TruckLeave
       (write-byte _TruckLeave s)
     ;; int32 _Distance
       (write-long _Distance s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _WorkOrder
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _WorkOrder (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _CraneNBR
     (setq _CraneNBR (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _TruckNBR
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _TruckNBR (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _Time
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Time (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _GantryPosition
     (setq _GantryPosition (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _GantryMove
     (setq _GantryMove (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _TrolleyPosition
     (setq _TrolleyPosition (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _HositPosition
     (setq _HositPosition (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _SpreadLock
     (setq _SpreadLock (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _SpreadLoad
     (setq _SpreadLoad (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _SpreadWorkType
     (setq _SpreadWorkType (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _VasStatus
     (setq _VasStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _TruckLoad
     (setq _TruckLoad (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _TruckInPosition
     (setq _TruckInPosition (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _SpreadOnChassis
     (setq _SpreadOnChassis (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _TruckLeave
     (setq _TruckLeave (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _Distance
     (setq _Distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::YardCraneStatus :md5sum-) "6bc9a1eb677c70a420a1ae553255debf")
(setf (get tos_msgs::YardCraneStatus :datatype-) "tos_msgs/YardCraneStatus")
(setf (get tos_msgs::YardCraneStatus :definition-)
      "Header header

string WorkOrder
int32 CraneNBR
string TruckNBR
string Time
float64 GantryPosition
uint8 GantryMove
float64 TrolleyPosition
float64 HositPosition
uint8 SpreadLock
float64 SpreadLoad
int32 SpreadWorkType
uint8 VasStatus
uint8 TruckLoad
uint8 TruckInPosition
uint8 SpreadOnChassis
uint8 TruckLeave
int32 Distance

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



(provide :tos_msgs/YardCraneStatus "6bc9a1eb677c70a420a1ae553255debf")


