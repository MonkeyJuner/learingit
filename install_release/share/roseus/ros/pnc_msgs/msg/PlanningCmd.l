;; Auto-generated. Do not edit!


(when (boundp 'pnc_msgs::PlanningCmd)
  (if (not (find-package "PNC_MSGS"))
    (make-package "PNC_MSGS"))
  (shadow 'PlanningCmd (find-package "PNC_MSGS")))
(unless (find-package "PNC_MSGS::PLANNINGCMD")
  (make-package "PNC_MSGS::PLANNINGCMD"))

(in-package "ROS")
;;//! \htmlinclude PlanningCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(intern "*MODE_AUTO*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*MODE_AUTO* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*MODE_AUTO* 0)
(intern "*MODE_LATERAL_CLOSED_LOOP*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*MODE_LATERAL_CLOSED_LOOP* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*MODE_LATERAL_CLOSED_LOOP* 1)
(intern "*MODE_SPEED_CLOSED_LOOP*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*MODE_SPEED_CLOSED_LOOP* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*MODE_SPEED_CLOSED_LOOP* 2)
(intern "*MODE_OPEN_LOOP*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*MODE_OPEN_LOOP* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*MODE_OPEN_LOOP* 3)
(intern "*LATERAL_KEEP_LANE*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*LATERAL_KEEP_LANE* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*LATERAL_KEEP_LANE* 0)
(intern "*LATERAL_CHG_TO_LEFT*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*LATERAL_CHG_TO_LEFT* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*LATERAL_CHG_TO_LEFT* 1)
(intern "*LATERAL_CHG_TO_RIGHT*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*LATERAL_CHG_TO_RIGHT* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*LATERAL_CHG_TO_RIGHT* 2)
(intern "*SPEED_PARK*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*SPEED_PARK* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*SPEED_PARK* 0)
(intern "*SPEED_FOLLOW*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*SPEED_FOLLOW* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*SPEED_FOLLOW* 1)
(intern "*SPEED_ESTOP*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*SPEED_ESTOP* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*SPEED_ESTOP* 2)
(intern "*SPEED_BRAKE*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*SPEED_BRAKE* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*SPEED_BRAKE* 3)
(intern "*DIR_STRAIGHT*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*DIR_STRAIGHT* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*DIR_STRAIGHT* 0)
(intern "*DIR_TURN_LEFT*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*DIR_TURN_LEFT* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*DIR_TURN_LEFT* 1)
(intern "*DIR_TURN_RIGHT*" (find-package "PNC_MSGS::PLANNINGCMD"))
(shadow '*DIR_TURN_RIGHT* (find-package "PNC_MSGS::PLANNINGCMD"))
(defconstant pnc_msgs::PlanningCmd::*DIR_TURN_RIGHT* 2)
(defclass pnc_msgs::PlanningCmd
  :super ros::object
  :slots (_header _mode _utm_traj _veh_traj _rt_speed _final_speed _final_distance _lateral_state _speed_state _stop_at_dest _turn_direction _task_id ))

(defmethod pnc_msgs::PlanningCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:mode __mode) 0)
    ((:utm_traj __utm_traj) (instance pnc_msgs::Trajectory :init))
    ((:veh_traj __veh_traj) (instance pnc_msgs::Trajectory :init))
    ((:rt_speed __rt_speed) 0.0)
    ((:final_speed __final_speed) 0.0)
    ((:final_distance __final_distance) 0.0)
    ((:lateral_state __lateral_state) 0)
    ((:speed_state __speed_state) 0)
    ((:stop_at_dest __stop_at_dest) nil)
    ((:turn_direction __turn_direction) 0)
    ((:task_id __task_id) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _mode (round __mode))
   (setq _utm_traj __utm_traj)
   (setq _veh_traj __veh_traj)
   (setq _rt_speed (float __rt_speed))
   (setq _final_speed (float __final_speed))
   (setq _final_distance (float __final_distance))
   (setq _lateral_state (round __lateral_state))
   (setq _speed_state (round __speed_state))
   (setq _stop_at_dest __stop_at_dest)
   (setq _turn_direction (round __turn_direction))
   (setq _task_id (round __task_id))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:utm_traj
   (&rest __utm_traj)
   (if (keywordp (car __utm_traj))
       (send* _utm_traj __utm_traj)
     (progn
       (if __utm_traj (setq _utm_traj (car __utm_traj)))
       _utm_traj)))
  (:veh_traj
   (&rest __veh_traj)
   (if (keywordp (car __veh_traj))
       (send* _veh_traj __veh_traj)
     (progn
       (if __veh_traj (setq _veh_traj (car __veh_traj)))
       _veh_traj)))
  (:rt_speed
   (&optional __rt_speed)
   (if __rt_speed (setq _rt_speed __rt_speed)) _rt_speed)
  (:final_speed
   (&optional __final_speed)
   (if __final_speed (setq _final_speed __final_speed)) _final_speed)
  (:final_distance
   (&optional __final_distance)
   (if __final_distance (setq _final_distance __final_distance)) _final_distance)
  (:lateral_state
   (&optional __lateral_state)
   (if __lateral_state (setq _lateral_state __lateral_state)) _lateral_state)
  (:speed_state
   (&optional __speed_state)
   (if __speed_state (setq _speed_state __speed_state)) _speed_state)
  (:stop_at_dest
   (&optional __stop_at_dest)
   (if __stop_at_dest (setq _stop_at_dest __stop_at_dest)) _stop_at_dest)
  (:turn_direction
   (&optional __turn_direction)
   (if __turn_direction (setq _turn_direction __turn_direction)) _turn_direction)
  (:task_id
   (&optional __task_id)
   (if __task_id (setq _task_id __task_id)) _task_id)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _mode
    1
    ;; pnc_msgs/Trajectory _utm_traj
    (send _utm_traj :serialization-length)
    ;; pnc_msgs/Trajectory _veh_traj
    (send _veh_traj :serialization-length)
    ;; float64 _rt_speed
    8
    ;; float64 _final_speed
    8
    ;; float64 _final_distance
    8
    ;; uint8 _lateral_state
    1
    ;; uint8 _speed_state
    1
    ;; bool _stop_at_dest
    1
    ;; uint8 _turn_direction
    1
    ;; int32 _task_id
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _mode
       (write-byte _mode s)
     ;; pnc_msgs/Trajectory _utm_traj
       (send _utm_traj :serialize s)
     ;; pnc_msgs/Trajectory _veh_traj
       (send _veh_traj :serialize s)
     ;; float64 _rt_speed
       (sys::poke _rt_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_speed
       (sys::poke _final_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _final_distance
       (sys::poke _final_distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _lateral_state
       (write-byte _lateral_state s)
     ;; uint8 _speed_state
       (write-byte _speed_state s)
     ;; bool _stop_at_dest
       (if _stop_at_dest (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _turn_direction
       (write-byte _turn_direction s)
     ;; int32 _task_id
       (write-long _task_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _mode
     (setq _mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; pnc_msgs/Trajectory _utm_traj
     (send _utm_traj :deserialize buf ptr-) (incf ptr- (send _utm_traj :serialization-length))
   ;; pnc_msgs/Trajectory _veh_traj
     (send _veh_traj :deserialize buf ptr-) (incf ptr- (send _veh_traj :serialization-length))
   ;; float64 _rt_speed
     (setq _rt_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_speed
     (setq _final_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _final_distance
     (setq _final_distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _lateral_state
     (setq _lateral_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _speed_state
     (setq _speed_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _stop_at_dest
     (setq _stop_at_dest (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _turn_direction
     (setq _turn_direction (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _task_id
     (setq _task_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get pnc_msgs::PlanningCmd :md5sum-) "c524a0bbbcc9e84caf1b33d77fd89eaf")
(setf (get pnc_msgs::PlanningCmd :datatype-) "pnc_msgs/PlanningCmd")
(setf (get pnc_msgs::PlanningCmd :definition-)
      "# control mode
uint8 MODE_AUTO                 = 0
uint8 MODE_LATERAL_CLOSED_LOOP  = 1
uint8 MODE_SPEED_CLOSED_LOOP    = 2
uint8 MODE_OPEN_LOOP            = 3

# lateral state
uint8 LATERAL_KEEP_LANE         = 0
uint8 LATERAL_CHG_TO_LEFT       = 1
uint8 LATERAL_CHG_TO_RIGHT      = 2

# longtude state
uint8 SPEED_PARK   = 0
uint8 SPEED_FOLLOW = 1
uint8 SPEED_ESTOP  = 2
uint8 SPEED_BRAKE  = 3

# turn light direction
uint8 DIR_STRAIGHT              = 0
uint8 DIR_TURN_LEFT             = 1
uint8 DIR_TURN_RIGHT            = 2

Header header

# control mode
uint8               mode

# trajectory in utm coord
pnc_msgs/Trajectory utm_traj

# trajectory in vehicle coord
pnc_msgs/Trajectory veh_traj

# real time speed in [km/h]
float64             rt_speed

# target follow speed in [km/h]
float64             final_speed

# target follow distance in [m]
float64             final_distance

# lateral state
uint8               lateral_state

# speed state
uint8               speed_state

# if vehicle stop at dest
bool                stop_at_dest

# turn light direction when change lane or turn
uint8               turn_direction

int32 task_id

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
MSG: pnc_msgs/Trajectory
# total traj length in [m]
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



(provide :pnc_msgs/PlanningCmd "c524a0bbbcc9e84caf1b33d77fd89eaf")


