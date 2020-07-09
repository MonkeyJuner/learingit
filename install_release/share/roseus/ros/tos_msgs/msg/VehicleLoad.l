;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::VehicleLoad)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'VehicleLoad (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::VEHICLELOAD")
  (make-package "TOS_MSGS::VEHICLELOAD"))

(in-package "ROS")
;;//! \htmlinclude VehicleLoad.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LOAD_EMPTY*" (find-package "TOS_MSGS::VEHICLELOAD"))
(shadow '*LOAD_EMPTY* (find-package "TOS_MSGS::VEHICLELOAD"))
(defconstant tos_msgs::VehicleLoad::*LOAD_EMPTY* 0)
(intern "*LOAD_LADEN*" (find-package "TOS_MSGS::VEHICLELOAD"))
(shadow '*LOAD_LADEN* (find-package "TOS_MSGS::VEHICLELOAD"))
(defconstant tos_msgs::VehicleLoad::*LOAD_LADEN* 1)
(intern "*LOAD_UNKNOWN*" (find-package "TOS_MSGS::VEHICLELOAD"))
(shadow '*LOAD_UNKNOWN* (find-package "TOS_MSGS::VEHICLELOAD"))
(defconstant tos_msgs::VehicleLoad::*LOAD_UNKNOWN* 2)
(defclass tos_msgs::VehicleLoad
  :super ros::object
  :slots (_header _load_type _weight _size _send_packet_id ))

(defmethod tos_msgs::VehicleLoad
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:load_type __load_type) 0)
    ((:weight __weight) 0.0)
    ((:size __size) 0)
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _load_type (round __load_type))
   (setq _weight (float __weight))
   (setq _size (round __size))
   (setq _send_packet_id (round __send_packet_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:load_type
   (&optional __load_type)
   (if __load_type (setq _load_type __load_type)) _load_type)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _load_type
    1
    ;; float64 _weight
    8
    ;; int32 _size
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
     ;; uint8 _load_type
       (write-byte _load_type s)
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _size
       (write-long _size s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _load_type
     (setq _load_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::VehicleLoad :md5sum-) "0b898a0b089ad602fc5aa489d1583fd7")
(setf (get tos_msgs::VehicleLoad :datatype-) "tos_msgs/VehicleLoad")
(setf (get tos_msgs::VehicleLoad :definition-)
      "# LOAD TYPE
uint8 LOAD_EMPTY = 0
uint8 LOAD_LADEN = 1
uint8 LOAD_UNKNOWN = 2

Header header

uint8 load_type
float64 weight
int32 size
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



(provide :tos_msgs/VehicleLoad "0b898a0b089ad602fc5aa489d1583fd7")


