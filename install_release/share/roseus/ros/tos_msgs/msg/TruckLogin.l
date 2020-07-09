;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TruckLogin)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TruckLogin (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TRUCKLOGIN")
  (make-package "TOS_MSGS::TRUCKLOGIN"))

(in-package "ROS")
;;//! \htmlinclude TruckLogin.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*TRUNK_UNREGISTER*" (find-package "TOS_MSGS::TRUCKLOGIN"))
(shadow '*TRUNK_UNREGISTER* (find-package "TOS_MSGS::TRUCKLOGIN"))
(defconstant tos_msgs::TruckLogin::*TRUNK_UNREGISTER* 0)
(intern "*TRUNK_REGISTER*" (find-package "TOS_MSGS::TRUCKLOGIN"))
(shadow '*TRUNK_REGISTER* (find-package "TOS_MSGS::TRUCKLOGIN"))
(defconstant tos_msgs::TruckLogin::*TRUNK_REGISTER* 1)
(defclass tos_msgs::TruckLogin
  :super ros::object
  :slots (_header _cheid _usr_name _register_type _send_packet_id ))

(defmethod tos_msgs::TruckLogin
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cheid __cheid) "")
    ((:usr_name __usr_name) "")
    ((:register_type __register_type) 0)
    ((:send_packet_id __send_packet_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _cheid (string __cheid))
   (setq _usr_name (string __usr_name))
   (setq _register_type (round __register_type))
   (setq _send_packet_id (round __send_packet_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cheid
   (&optional __cheid)
   (if __cheid (setq _cheid __cheid)) _cheid)
  (:usr_name
   (&optional __usr_name)
   (if __usr_name (setq _usr_name __usr_name)) _usr_name)
  (:register_type
   (&optional __register_type)
   (if __register_type (setq _register_type __register_type)) _register_type)
  (:send_packet_id
   (&optional __send_packet_id)
   (if __send_packet_id (setq _send_packet_id __send_packet_id)) _send_packet_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _cheid
    4 (length _cheid)
    ;; string _usr_name
    4 (length _usr_name)
    ;; uint8 _register_type
    1
    ;; int32 _send_packet_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _cheid
       (write-long (length _cheid) s) (princ _cheid s)
     ;; string _usr_name
       (write-long (length _usr_name) s) (princ _usr_name s)
     ;; uint8 _register_type
       (write-byte _register_type s)
     ;; int32 _send_packet_id
       (write-long _send_packet_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _cheid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cheid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _usr_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _usr_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _register_type
     (setq _register_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _send_packet_id
     (setq _send_packet_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get tos_msgs::TruckLogin :md5sum-) "ae364b6ad1460c8b838375d9b99a1ccb")
(setf (get tos_msgs::TruckLogin :datatype-) "tos_msgs/TruckLogin")
(setf (get tos_msgs::TruckLogin :definition-)
      "# truck register
uint8 TRUNK_UNREGISTER         = 0
uint8 TRUNK_REGISTER           = 1

Header header
string cheid
string usr_name
uint8 register_type

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



(provide :tos_msgs/TruckLogin "ae364b6ad1460c8b838375d9b99a1ccb")


