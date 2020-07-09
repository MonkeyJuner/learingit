;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSCmdSetWeight)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSCmdSetWeight (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSCMDSETWEIGHT")
  (make-package "ADS_MSGS::ADSCMDSETWEIGHT"))

(in-package "ROS")
;;//! \htmlinclude ADSCmdSetWeight.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*LOAD_EMPTY*" (find-package "ADS_MSGS::ADSCMDSETWEIGHT"))
(shadow '*LOAD_EMPTY* (find-package "ADS_MSGS::ADSCMDSETWEIGHT"))
(defconstant ads_msgs::ADSCmdSetWeight::*LOAD_EMPTY* 0)
(intern "*LOAD_LADEN*" (find-package "ADS_MSGS::ADSCMDSETWEIGHT"))
(shadow '*LOAD_LADEN* (find-package "ADS_MSGS::ADSCMDSETWEIGHT"))
(defconstant ads_msgs::ADSCmdSetWeight::*LOAD_LADEN* 1)
(intern "*LOAD_UNKNOWN*" (find-package "ADS_MSGS::ADSCMDSETWEIGHT"))
(shadow '*LOAD_UNKNOWN* (find-package "ADS_MSGS::ADSCMDSETWEIGHT"))
(defconstant ads_msgs::ADSCmdSetWeight::*LOAD_UNKNOWN* 2)
(defclass ads_msgs::ADSCmdSetWeight
  :super ros::object
  :slots (_header _id _load_type _weight _size ))

(defmethod ads_msgs::ADSCmdSetWeight
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:load_type __load_type) 0)
    ((:weight __weight) 0.0)
    ((:size __size) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _load_type (round __load_type))
   (setq _weight (float __weight))
   (setq _size (round __size))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:load_type
   (&optional __load_type)
   (if __load_type (setq _load_type __load_type)) _load_type)
  (:weight
   (&optional __weight)
   (if __weight (setq _weight __weight)) _weight)
  (:size
   (&optional __size)
   (if __size (setq _size __size)) _size)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint8 _load_type
    1
    ;; float64 _weight
    8
    ;; int32 _size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint8 _load_type
       (write-byte _load_type s)
     ;; float64 _weight
       (sys::poke _weight (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _size
       (write-long _size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _load_type
     (setq _load_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _weight
     (setq _weight (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _size
     (setq _size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ads_msgs::ADSCmdSetWeight :md5sum-) "49220643e18e21c9db9f9232984660cf")
(setf (get ads_msgs::ADSCmdSetWeight :datatype-) "ads_msgs/ADSCmdSetWeight")
(setf (get ads_msgs::ADSCmdSetWeight :definition-)
      "# LOAD TYPE
uint8 LOAD_EMPTY = 0
uint8 LOAD_LADEN = 1
uint8 LOAD_UNKNOWN = 2

Header header

uint32 id

uint8 load_type
float64 weight
int32 size

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



(provide :ads_msgs/ADSCmdSetWeight "49220643e18e21c9db9f9232984660cf")


