;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::Region)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'Region (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::REGION")
  (make-package "HADMAP_MSGS::REGION"))

(in-package "ROS")
;;//! \htmlinclude Region.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TYPE_NORMAL*" (find-package "HADMAP_MSGS::REGION"))
(shadow '*TYPE_NORMAL* (find-package "HADMAP_MSGS::REGION"))
(defconstant hadmap_msgs::Region::*TYPE_NORMAL* 0)
(intern "*TYPE_SEASIDE*" (find-package "HADMAP_MSGS::REGION"))
(shadow '*TYPE_SEASIDE* (find-package "HADMAP_MSGS::REGION"))
(defconstant hadmap_msgs::Region::*TYPE_SEASIDE* 1)
(intern "*TYPE_YARD*" (find-package "HADMAP_MSGS::REGION"))
(shadow '*TYPE_YARD* (find-package "HADMAP_MSGS::REGION"))
(defconstant hadmap_msgs::Region::*TYPE_YARD* 2)
(intern "*TYPE_NO_TURN*" (find-package "HADMAP_MSGS::REGION"))
(shadow '*TYPE_NO_TURN* (find-package "HADMAP_MSGS::REGION"))
(defconstant hadmap_msgs::Region::*TYPE_NO_TURN* 0)
(intern "*TYPE_LEFT_TURN*" (find-package "HADMAP_MSGS::REGION"))
(shadow '*TYPE_LEFT_TURN* (find-package "HADMAP_MSGS::REGION"))
(defconstant hadmap_msgs::Region::*TYPE_LEFT_TURN* 1)
(intern "*TYPE_RIGHT_TURN*" (find-package "HADMAP_MSGS::REGION"))
(shadow '*TYPE_RIGHT_TURN* (find-package "HADMAP_MSGS::REGION"))
(defconstant hadmap_msgs::Region::*TYPE_RIGHT_TURN* 2)
(intern "*TYPE_U_TURN*" (find-package "HADMAP_MSGS::REGION"))
(shadow '*TYPE_U_TURN* (find-package "HADMAP_MSGS::REGION"))
(defconstant hadmap_msgs::Region::*TYPE_U_TURN* 3)
(defclass hadmap_msgs::Region
  :super ros::object
  :slots (_header _type _turn_type _width_btw_barriers _is_lockzone_ahead ))

(defmethod hadmap_msgs::Region
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:type __type) 0)
    ((:turn_type __turn_type) 0)
    ((:width_btw_barriers __width_btw_barriers) 0.0)
    ((:is_lockzone_ahead __is_lockzone_ahead) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _type (round __type))
   (setq _turn_type (round __turn_type))
   (setq _width_btw_barriers (float __width_btw_barriers))
   (setq _is_lockzone_ahead __is_lockzone_ahead)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:turn_type
   (&optional __turn_type)
   (if __turn_type (setq _turn_type __turn_type)) _turn_type)
  (:width_btw_barriers
   (&optional __width_btw_barriers)
   (if __width_btw_barriers (setq _width_btw_barriers __width_btw_barriers)) _width_btw_barriers)
  (:is_lockzone_ahead
   (&optional __is_lockzone_ahead)
   (if __is_lockzone_ahead (setq _is_lockzone_ahead __is_lockzone_ahead)) _is_lockzone_ahead)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _type
    4
    ;; int32 _turn_type
    4
    ;; float32 _width_btw_barriers
    4
    ;; bool _is_lockzone_ahead
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _type
       (write-long _type s)
     ;; int32 _turn_type
       (write-long _turn_type s)
     ;; float32 _width_btw_barriers
       (sys::poke _width_btw_barriers (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _is_lockzone_ahead
       (if _is_lockzone_ahead (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _type
     (setq _type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _turn_type
     (setq _turn_type (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _width_btw_barriers
     (setq _width_btw_barriers (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _is_lockzone_ahead
     (setq _is_lockzone_ahead (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hadmap_msgs::Region :md5sum-) "88d27f36beb9074b467382db9b323a15")
(setf (get hadmap_msgs::Region :datatype-) "hadmap_msgs/Region")
(setf (get hadmap_msgs::Region :definition-)
      "uint8 TYPE_NORMAL = 0
uint8 TYPE_SEASIDE = 1
uint8 TYPE_YARD = 2

uint8 TYPE_NO_TURN = 0
uint8 TYPE_LEFT_TURN = 1
uint8 TYPE_RIGHT_TURN = 2
uint8 TYPE_U_TURN = 3

Header header
int32 type
int32 turn_type
float32 width_btw_barriers
bool is_lockzone_ahead

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



(provide :hadmap_msgs/Region "88d27f36beb9074b467382db9b323a15")


