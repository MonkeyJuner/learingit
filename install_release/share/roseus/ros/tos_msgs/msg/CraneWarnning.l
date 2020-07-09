;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::CraneWarnning)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'CraneWarnning (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::CRANEWARNNING")
  (make-package "TOS_MSGS::CRANEWARNNING"))

(in-package "ROS")
;;//! \htmlinclude CraneWarnning.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::CraneWarnning
  :super ros::object
  :slots (_header _certainty _distance_vertical _distance_lateral ))

(defmethod tos_msgs::CraneWarnning
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:certainty __certainty) 0.0)
    ((:distance_vertical __distance_vertical) 0.0)
    ((:distance_lateral __distance_lateral) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _certainty (float __certainty))
   (setq _distance_vertical (float __distance_vertical))
   (setq _distance_lateral (float __distance_lateral))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:certainty
   (&optional __certainty)
   (if __certainty (setq _certainty __certainty)) _certainty)
  (:distance_vertical
   (&optional __distance_vertical)
   (if __distance_vertical (setq _distance_vertical __distance_vertical)) _distance_vertical)
  (:distance_lateral
   (&optional __distance_lateral)
   (if __distance_lateral (setq _distance_lateral __distance_lateral)) _distance_lateral)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _certainty
    8
    ;; float64 _distance_vertical
    8
    ;; float64 _distance_lateral
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _certainty
       (sys::poke _certainty (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_vertical
       (sys::poke _distance_vertical (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_lateral
       (sys::poke _distance_lateral (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _certainty
     (setq _certainty (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_vertical
     (setq _distance_vertical (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_lateral
     (setq _distance_lateral (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get tos_msgs::CraneWarnning :md5sum-) "c24f3c5e54e151e721b842164d45ab26")
(setf (get tos_msgs::CraneWarnning :datatype-) "tos_msgs/CraneWarnning")
(setf (get tos_msgs::CraneWarnning :definition-)
      "Header header

# probability
float64 certainty #0 ~ 100

#distance
float64 distance_vertical #meter
float64 distance_lateral  #meter


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



(provide :tos_msgs/CraneWarnning "c24f3c5e54e151e721b842164d45ab26")


