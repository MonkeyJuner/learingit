;; Auto-generated. Do not edit!


(when (boundp 'visual_msgs::PathPoints)
  (if (not (find-package "VISUAL_MSGS"))
    (make-package "VISUAL_MSGS"))
  (shadow 'PathPoints (find-package "VISUAL_MSGS")))
(unless (find-package "VISUAL_MSGS::PATHPOINTS")
  (make-package "VISUAL_MSGS::PATHPOINTS"))

(in-package "ROS")
;;//! \htmlinclude PathPoints.msg.html


(defclass visual_msgs::PathPoints
  :super ros::object
  :slots (_pts ))

(defmethod visual_msgs::PathPoints
  (:init
   (&key
    ((:pts __pts) (let (r) (dotimes (i 0) (push (instance visual_msgs::PathPoint :init) r)) r))
    )
   (send-super :init)
   (setq _pts __pts)
   self)
  (:pts
   (&rest __pts)
   (if (keywordp (car __pts))
       (send* _pts __pts)
     (progn
       (if __pts (setq _pts (car __pts)))
       _pts)))
  (:serialization-length
   ()
   (+
    ;; visual_msgs/PathPoint[] _pts
    (apply #'+ (send-all _pts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; visual_msgs/PathPoint[] _pts
     (write-long (length _pts) s)
     (dolist (elem _pts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; visual_msgs/PathPoint[] _pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts (let (r) (dotimes (i n) (push (instance visual_msgs::PathPoint :init) r)) r))
     (dolist (elem- _pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get visual_msgs::PathPoints :md5sum-) "01429fadba51614891b44c6668b252ba")
(setf (get visual_msgs::PathPoints :datatype-) "visual_msgs/PathPoints")
(setf (get visual_msgs::PathPoints :definition-)
      "visual_msgs/PathPoint[] pts
================================================================================
MSG: visual_msgs/PathPoint
# coordinates in [m]
float64 x
float64 y
float64 z
")



(provide :visual_msgs/PathPoints "01429fadba51614891b44c6668b252ba")


