;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::WorkDisplay)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'WorkDisplay (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::WORKDISPLAY")
  (make-package "TOS_MSGS::WORKDISPLAY"))

(in-package "ROS")
;;//! \htmlinclude WorkDisplay.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass tos_msgs::WorkDisplay
  :super ros::object
  :slots (_header _cheid _task_id _fsm_state ))

(defmethod tos_msgs::WorkDisplay
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cheid __cheid) "")
    ((:task_id __task_id) 0)
    ((:fsm_state __fsm_state) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _cheid (string __cheid))
   (setq _task_id (round __task_id))
   (setq _fsm_state (string __fsm_state))
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
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:fsm_state
   (&optional __fsm_state)
   (if __fsm_state (setq _fsm_state __fsm_state)) _fsm_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _cheid
    4 (length _cheid)
    ;; uint32 _task_id
    4
    ;; string _fsm_state
    4 (length _fsm_state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _cheid
       (write-long (length _cheid) s) (princ _cheid s)
     ;; uint32 _task_id
       (write-long _task_id s)
     ;; string _fsm_state
       (write-long (length _fsm_state) s) (princ _fsm_state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _cheid
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cheid (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _fsm_state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _fsm_state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tos_msgs::WorkDisplay :md5sum-) "d618f559e2d43aff5d2195dc0060744a")
(setf (get tos_msgs::WorkDisplay :datatype-) "tos_msgs/WorkDisplay")
(setf (get tos_msgs::WorkDisplay :definition-)
      "Header header

# truck id
string cheid

# task id
uint32 task_id

# alignment status
string fsm_state


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



(provide :tos_msgs/WorkDisplay "d618f559e2d43aff5d2195dc0060744a")


