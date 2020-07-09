;; Auto-generated. Do not edit!


(when (boundp 'ads_msgs::ADSCmdSetTarget)
  (if (not (find-package "ADS_MSGS"))
    (make-package "ADS_MSGS"))
  (shadow 'ADSCmdSetTarget (find-package "ADS_MSGS")))
(unless (find-package "ADS_MSGS::ADSCMDSETTARGET")
  (make-package "ADS_MSGS::ADSCMDSETTARGET"))

(in-package "ROS")
;;//! \htmlinclude ADSCmdSetTarget.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass ads_msgs::ADSCmdSetTarget
  :super ros::object
  :slots (_header _id _task_id _stop_point ))

(defmethod ads_msgs::ADSCmdSetTarget
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:task_id __task_id) 0)
    ((:stop_point __stop_point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _task_id (round __task_id))
   (setq _stop_point __stop_point)
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
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:stop_point
   (&rest __stop_point)
   (if (keywordp (car __stop_point))
       (send* _stop_point __stop_point)
     (progn
       (if __stop_point (setq _stop_point (car __stop_point)))
       _stop_point)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _id
    4
    ;; uint32 _task_id
    4
    ;; geometry_msgs/Point _stop_point
    (send _stop_point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; geometry_msgs/Point _stop_point
       (send _stop_point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _stop_point
     (send _stop_point :deserialize buf ptr-) (incf ptr- (send _stop_point :serialization-length))
   ;;
   self)
  )

(setf (get ads_msgs::ADSCmdSetTarget :md5sum-) "ef04ad969fa33b2a76b6bde3230a3b53")
(setf (get ads_msgs::ADSCmdSetTarget :datatype-) "ads_msgs/ADSCmdSetTarget")
(setf (get ads_msgs::ADSCmdSetTarget :definition-)
      "Header header
uint32 id
uint32 task_id
geometry_msgs/Point stop_point



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



(provide :ads_msgs/ADSCmdSetTarget "ef04ad969fa33b2a76b6bde3230a3b53")


