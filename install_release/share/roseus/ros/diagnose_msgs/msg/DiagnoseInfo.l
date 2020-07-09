;; Auto-generated. Do not edit!


(when (boundp 'diagnose_msgs::DiagnoseInfo)
  (if (not (find-package "DIAGNOSE_MSGS"))
    (make-package "DIAGNOSE_MSGS"))
  (shadow 'DiagnoseInfo (find-package "DIAGNOSE_MSGS")))
(unless (find-package "DIAGNOSE_MSGS::DIAGNOSEINFO")
  (make-package "DIAGNOSE_MSGS::DIAGNOSEINFO"))

(in-package "ROS")
;;//! \htmlinclude DiagnoseInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass diagnose_msgs::DiagnoseInfo
  :super ros::object
  :slots (_header _info ))

(defmethod diagnose_msgs::DiagnoseInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:info __info) (let (r) (dotimes (i 0) (push (instance diagnose_msgs::KeyValue :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _info __info)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:info
   (&rest __info)
   (if (keywordp (car __info))
       (send* _info __info)
     (progn
       (if __info (setq _info (car __info)))
       _info)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; diagnose_msgs/KeyValue[] _info
    (apply #'+ (send-all _info :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; diagnose_msgs/KeyValue[] _info
     (write-long (length _info) s)
     (dolist (elem _info)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; diagnose_msgs/KeyValue[] _info
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _info (let (r) (dotimes (i n) (push (instance diagnose_msgs::KeyValue :init) r)) r))
     (dolist (elem- _info)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get diagnose_msgs::DiagnoseInfo :md5sum-) "ecf4f64dfac71777a8f1304607bbee65")
(setf (get diagnose_msgs::DiagnoseInfo :datatype-) "diagnose_msgs/DiagnoseInfo")
(setf (get diagnose_msgs::DiagnoseInfo :definition-)
      "Header header

KeyValue[] info

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
MSG: diagnose_msgs/KeyValue

string key
string value
")



(provide :diagnose_msgs/DiagnoseInfo "ecf4f64dfac71777a8f1304607bbee65")


