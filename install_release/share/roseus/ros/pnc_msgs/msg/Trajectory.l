;; Auto-generated. Do not edit!


(when (boundp 'pnc_msgs::Trajectory)
  (if (not (find-package "PNC_MSGS"))
    (make-package "PNC_MSGS"))
  (shadow 'Trajectory (find-package "PNC_MSGS")))
(unless (find-package "PNC_MSGS::TRAJECTORY")
  (make-package "PNC_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html


(defclass pnc_msgs::Trajectory
  :super ros::object
  :slots (_total_traj_length _total_traj_time _trajectory_pts ))

(defmethod pnc_msgs::Trajectory
  (:init
   (&key
    ((:total_traj_length __total_traj_length) 0.0)
    ((:total_traj_time __total_traj_time) 0.0)
    ((:trajectory_pts __trajectory_pts) (let (r) (dotimes (i 0) (push (instance pnc_msgs::TrajectoryPoint :init) r)) r))
    )
   (send-super :init)
   (setq _total_traj_length (float __total_traj_length))
   (setq _total_traj_time (float __total_traj_time))
   (setq _trajectory_pts __trajectory_pts)
   self)
  (:total_traj_length
   (&optional __total_traj_length)
   (if __total_traj_length (setq _total_traj_length __total_traj_length)) _total_traj_length)
  (:total_traj_time
   (&optional __total_traj_time)
   (if __total_traj_time (setq _total_traj_time __total_traj_time)) _total_traj_time)
  (:trajectory_pts
   (&rest __trajectory_pts)
   (if (keywordp (car __trajectory_pts))
       (send* _trajectory_pts __trajectory_pts)
     (progn
       (if __trajectory_pts (setq _trajectory_pts (car __trajectory_pts)))
       _trajectory_pts)))
  (:serialization-length
   ()
   (+
    ;; float64 _total_traj_length
    8
    ;; float64 _total_traj_time
    8
    ;; pnc_msgs/TrajectoryPoint[] _trajectory_pts
    (apply #'+ (send-all _trajectory_pts :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _total_traj_length
       (sys::poke _total_traj_length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _total_traj_time
       (sys::poke _total_traj_time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; pnc_msgs/TrajectoryPoint[] _trajectory_pts
     (write-long (length _trajectory_pts) s)
     (dolist (elem _trajectory_pts)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _total_traj_length
     (setq _total_traj_length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _total_traj_time
     (setq _total_traj_time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; pnc_msgs/TrajectoryPoint[] _trajectory_pts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _trajectory_pts (let (r) (dotimes (i n) (push (instance pnc_msgs::TrajectoryPoint :init) r)) r))
     (dolist (elem- _trajectory_pts)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get pnc_msgs::Trajectory :md5sum-) "a1572326f09d8f47407c20282d7259e3")
(setf (get pnc_msgs::Trajectory :datatype-) "pnc_msgs/Trajectory")
(setf (get pnc_msgs::Trajectory :definition-)
      "# total traj length in [m]
float64 total_traj_length

# total traj time in [s]
float64 total_traj_time

pnc_msgs/TrajectoryPoint[] trajectory_pts
================================================================================
MSG: pnc_msgs/TrajectoryPoint
# path data
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



(provide :pnc_msgs/Trajectory "a1572326f09d8f47407c20282d7259e3")


