;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::VehicleTarget)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'VehicleTarget (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::VEHICLETARGET")
  (make-package "TOS_MSGS::VEHICLETARGET"))

(in-package "ROS")
;;//! \htmlinclude VehicleTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TAG_ON_ANQIAO*" (find-package "TOS_MSGS::VEHICLETARGET"))
(shadow '*TAG_ON_ANQIAO* (find-package "TOS_MSGS::VEHICLETARGET"))
(defconstant tos_msgs::VehicleTarget::*TAG_ON_ANQIAO* 1)
(intern "*TAG_ON_CHANGQIAO*" (find-package "TOS_MSGS::VEHICLETARGET"))
(shadow '*TAG_ON_CHANGQIAO* (find-package "TOS_MSGS::VEHICLETARGET"))
(defconstant tos_msgs::VehicleTarget::*TAG_ON_CHANGQIAO* 2)
(intern "*VESSEL_ORIENTATION_FORWARD*" (find-package "TOS_MSGS::VEHICLETARGET"))
(shadow '*VESSEL_ORIENTATION_FORWARD* (find-package "TOS_MSGS::VEHICLETARGET"))
(defconstant tos_msgs::VehicleTarget::*VESSEL_ORIENTATION_FORWARD* 0)
(intern "*VESSEL_ORIENTATION_BACKWARD*" (find-package "TOS_MSGS::VEHICLETARGET"))
(shadow '*VESSEL_ORIENTATION_BACKWARD* (find-package "TOS_MSGS::VEHICLETARGET"))
(defconstant tos_msgs::VehicleTarget::*VESSEL_ORIENTATION_BACKWARD* 1)
(defclass tos_msgs::VehicleTarget
  :super ros::object
  :slots (_header _task_id _send_packet_id _chid _stop_point _stop_tag_id _stop_tag_type _brake_distance _hadmap_stop_shift _tag_stop_shift _lane_id _brake_tag_id_forward _brake_distance_forward _brake_tag_id_backward _brake_distance_backward _vessel_orientation ))

(defmethod tos_msgs::VehicleTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:task_id __task_id) 0)
    ((:send_packet_id __send_packet_id) 0)
    ((:chid __chid) "")
    ((:stop_point __stop_point) (instance geometry_msgs::Point :init))
    ((:stop_tag_id __stop_tag_id) 0)
    ((:stop_tag_type __stop_tag_type) 0)
    ((:brake_distance __brake_distance) 0.0)
    ((:hadmap_stop_shift __hadmap_stop_shift) 0.0)
    ((:tag_stop_shift __tag_stop_shift) 0.0)
    ((:lane_id __lane_id) "")
    ((:brake_tag_id_forward __brake_tag_id_forward) 0)
    ((:brake_distance_forward __brake_distance_forward) 0.0)
    ((:brake_tag_id_backward __brake_tag_id_backward) 0)
    ((:brake_distance_backward __brake_distance_backward) 0.0)
    ((:vessel_orientation __vessel_orientation) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _task_id (round __task_id))
   (setq _send_packet_id (round __send_packet_id))
   (setq _chid (string __chid))
   (setq _stop_point __stop_point)
   (setq _stop_tag_id (round __stop_tag_id))
   (setq _stop_tag_type (round __stop_tag_type))
   (setq _brake_distance (float __brake_distance))
   (setq _hadmap_stop_shift (float __hadmap_stop_shift))
   (setq _tag_stop_shift (float __tag_stop_shift))
   (setq _lane_id (string __lane_id))
   (setq _brake_tag_id_forward (round __brake_tag_id_forward))
   (setq _brake_distance_forward (float __brake_distance_forward))
   (setq _brake_tag_id_backward (round __brake_tag_id_backward))
   (setq _brake_distance_backward (float __brake_distance_backward))
   (setq _vessel_orientation (round __vessel_orientation))
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
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:chid
   (&optional __chid)
   (if __chid (setq _chid __chid)) _chid)
  (:stop_point
   (&rest __stop_point)
   (if (keywordp (car __stop_point))
       (send* _stop_point __stop_point)
     (progn
       (if __stop_point (setq _stop_point (car __stop_point)))
       _stop_point)))
  (:stop_tag_id
   (&optional __stop_tag_id)
   (if __stop_tag_id (setq _stop_tag_id __stop_tag_id)) _stop_tag_id)
  (:stop_tag_type
   (&optional __stop_tag_type)
   (if __stop_tag_type (setq _stop_tag_type __stop_tag_type)) _stop_tag_type)
  (:brake_distance
   (&optional __brake_distance)
   (if __brake_distance (setq _brake_distance __brake_distance)) _brake_distance)
  (:hadmap_stop_shift
   (&optional __hadmap_stop_shift)
   (if __hadmap_stop_shift (setq _hadmap_stop_shift __hadmap_stop_shift)) _hadmap_stop_shift)
  (:tag_stop_shift
   (&optional __tag_stop_shift)
   (if __tag_stop_shift (setq _tag_stop_shift __tag_stop_shift)) _tag_stop_shift)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:brake_tag_id_forward
   (&optional __brake_tag_id_forward)
   (if __brake_tag_id_forward (setq _brake_tag_id_forward __brake_tag_id_forward)) _brake_tag_id_forward)
  (:brake_distance_forward
   (&optional __brake_distance_forward)
   (if __brake_distance_forward (setq _brake_distance_forward __brake_distance_forward)) _brake_distance_forward)
  (:brake_tag_id_backward
   (&optional __brake_tag_id_backward)
   (if __brake_tag_id_backward (setq _brake_tag_id_backward __brake_tag_id_backward)) _brake_tag_id_backward)
  (:brake_distance_backward
   (&optional __brake_distance_backward)
   (if __brake_distance_backward (setq _brake_distance_backward __brake_distance_backward)) _brake_distance_backward)
  (:vessel_orientation
   (&optional __vessel_orientation)
   (if __vessel_orientation (setq _vessel_orientation __vessel_orientation)) _vessel_orientation)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _task_id
    4
    ;; int32 _send_packet_id
    4
    ;; string _chid
    4 (length _chid)
    ;; geometry_msgs/Point _stop_point
    (send _stop_point :serialization-length)
    ;; int32 _stop_tag_id
    4
    ;; uint8 _stop_tag_type
    1
    ;; float64 _brake_distance
    8
    ;; float64 _hadmap_stop_shift
    8
    ;; float64 _tag_stop_shift
    8
    ;; string _lane_id
    4 (length _lane_id)
    ;; uint8 _brake_tag_id_forward
    1
    ;; float64 _brake_distance_forward
    8
    ;; uint8 _brake_tag_id_backward
    1
    ;; float64 _brake_distance_backward
    8
    ;; uint8 _vessel_orientation
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;; string _chid
       (write-long (length _chid) s) (princ _chid s)
     ;; geometry_msgs/Point _stop_point
       (send _stop_point :serialize s)
     ;; int32 _stop_tag_id
       (write-long _stop_tag_id s)
     ;; uint8 _stop_tag_type
       (write-byte _stop_tag_type s)
     ;; float64 _brake_distance
       (sys::poke _brake_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _hadmap_stop_shift
       (sys::poke _hadmap_stop_shift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tag_stop_shift
       (sys::poke _tag_stop_shift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; string _lane_id
       (write-long (length _lane_id) s) (princ _lane_id s)
     ;; uint8 _brake_tag_id_forward
       (write-byte _brake_tag_id_forward s)
     ;; float64 _brake_distance_forward
       (sys::poke _brake_distance_forward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _brake_tag_id_backward
       (write-byte _brake_tag_id_backward s)
     ;; float64 _brake_distance_backward
       (sys::poke _brake_distance_backward (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _vessel_orientation
       (write-byte _vessel_orientation s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _chid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Point _stop_point
     (send _stop_point :deserialize buf ptr-) (incf ptr- (send _stop_point :serialization-length))
   ;; int32 _stop_tag_id
     (setq _stop_tag_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _stop_tag_type
     (setq _stop_tag_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _brake_distance
     (setq _brake_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _hadmap_stop_shift
     (setq _hadmap_stop_shift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tag_stop_shift
     (setq _tag_stop_shift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; string _lane_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lane_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _brake_tag_id_forward
     (setq _brake_tag_id_forward (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _brake_distance_forward
     (setq _brake_distance_forward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _brake_tag_id_backward
     (setq _brake_tag_id_backward (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _brake_distance_backward
     (setq _brake_distance_backward (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _vessel_orientation
     (setq _vessel_orientation (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tos_msgs::VehicleTarget :md5sum-) "71267172c38fac2a6326d1c7bdcba91e")
(setf (get tos_msgs::VehicleTarget :datatype-) "tos_msgs/VehicleTarget")
(setf (get tos_msgs::VehicleTarget :definition-)
      "uint8 TAG_ON_ANQIAO = 1
uint8 TAG_ON_CHANGQIAO = 2

uint8 VESSEL_ORIENTATION_FORWARD = 0
uint8 VESSEL_ORIENTATION_BACKWARD = 1

Header header
uint32 task_id
int32 send_packet_id
string chid
geometry_msgs/Point stop_point
int32 stop_tag_id
uint8 stop_tag_type
float64 brake_distance
float64 hadmap_stop_shift
float64 tag_stop_shift
string lane_id

uint8 brake_tag_id_forward
float64 brake_distance_forward

uint8 brake_tag_id_backward
float64 brake_distance_backward

uint8 vessel_orientation



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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :tos_msgs/VehicleTarget "71267172c38fac2a6326d1c7bdcba91e")


