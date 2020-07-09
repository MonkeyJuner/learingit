;; Auto-generated. Do not edit!


(when (boundp 'pnc_msgs::TrajectoryPoint)
  (if (not (find-package "PNC_MSGS"))
    (make-package "PNC_MSGS"))
  (shadow 'TrajectoryPoint (find-package "PNC_MSGS")))
(unless (find-package "PNC_MSGS::TRAJECTORYPOINT")
  (make-package "PNC_MSGS::TRAJECTORYPOINT"))

(in-package "ROS")
;;//! \htmlinclude TrajectoryPoint.msg.html


(defclass pnc_msgs::TrajectoryPoint
  :super ros::object
  :slots (_path_point _v _a _relative_time ))

(defmethod pnc_msgs::TrajectoryPoint
  (:init
   (&key
    ((:path_point __path_point) (instance pnc_msgs::PathPoint :init))
    ((:v __v) 0.0)
    ((:a __a) 0.0)
    ((:relative_time __relative_time) 0.0)
    )
   (send-super :init)
   (setq _path_point __path_point)
   (setq _v (float __v))
   (setq _a (float __a))
   (setq _relative_time (float __relative_time))
   self)
  (:path_point
   (&rest __path_point)
   (if (keywordp (car __path_point))
       (send* _path_point __path_point)
     (progn
       (if __path_point (setq _path_point (car __path_point)))
       _path_point)))
  (:v
   (&optional __v)
   (if __v (setq _v __v)) _v)
  (:a
   (&optional __a)
   (if __a (setq _a __a)) _a)
  (:relative_time
   (&optional __relative_time)
   (if __relative_time (setq _relative_time __relative_time)) _relative_time)
  (:serialization-length
   ()
   (+
    ;; pnc_msgs/PathPoint _path_point
    (send _path_point :serialization-length)
    ;; float64 _v
    8
    ;; float64 _a
    8
    ;; float64 _relative_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pnc_msgs/PathPoint _path_point
       (send _path_point :serialize s)
     ;; float64 _v
       (sys::poke _v (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _a
       (sys::poke _a (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _relative_time
       (sys::poke _relative_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pnc_msgs/PathPoint _path_point
     (send _path_point :deserialize buf ptr-) (incf ptr- (send _path_point :serialization-length))
   ;; float64 _v
     (setq _v (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _a
     (setq _a (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _relative_time
     (setq _relative_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pnc_msgs::TrajectoryPoint :md5sum-) "4a43a3290619888e9cb73555dd15375b")
(setf (get pnc_msgs::TrajectoryPoint :datatype-) "pnc_msgs/TrajectoryPoint")
(setf (get pnc_msgs::TrajectoryPoint :definition-)
      "# path data
PathPoint path_point

# linear velocity in [m/s]
float64 v
# linear acceleration in [m/s^2]
float64 a
# relative time from beginning of the trajectory in [s]
float64 relative_time
================================================================================
MSG: pnc_msgs/PathPoint
# coordinates in [m]
float64 x
float64 y
float64 z

# accumulated distance from beginning of the path in [m]
float64 s

# direction on the x-y plane in [0 ~ 2π]
float64 theta

# curvature on the x-y planning
float64 kappa

# derivative of kappa w.r.t s.
float64 dkappa

# derivative of derivative of kappa w.r.t s.
float64 ddkappa
")



(provide :pnc_msgs/TrajectoryPoint "4a43a3290619888e9cb73555dd15375b")


