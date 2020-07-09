; Auto-generated. Do not edit!


(cl:in-package pnc_msgs-msg)


;//! \htmlinclude PlanningCmd.msg.html

(cl:defclass <PlanningCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (mode
    :reader mode
    :initarg :mode
    :type cl:fixnum
    :initform 0)
   (utm_traj
    :reader utm_traj
    :initarg :utm_traj
    :type pnc_msgs-msg:Trajectory
    :initform (cl:make-instance 'pnc_msgs-msg:Trajectory))
   (veh_traj
    :reader veh_traj
    :initarg :veh_traj
    :type pnc_msgs-msg:Trajectory
    :initform (cl:make-instance 'pnc_msgs-msg:Trajectory))
   (rt_speed
    :reader rt_speed
    :initarg :rt_speed
    :type cl:float
    :initform 0.0)
   (final_speed
    :reader final_speed
    :initarg :final_speed
    :type cl:float
    :initform 0.0)
   (final_distance
    :reader final_distance
    :initarg :final_distance
    :type cl:float
    :initform 0.0)
   (lateral_state
    :reader lateral_state
    :initarg :lateral_state
    :type cl:fixnum
    :initform 0)
   (speed_state
    :reader speed_state
    :initarg :speed_state
    :type cl:fixnum
    :initform 0)
   (stop_at_dest
    :reader stop_at_dest
    :initarg :stop_at_dest
    :type cl:boolean
    :initform cl:nil)
   (turn_direction
    :reader turn_direction
    :initarg :turn_direction
    :type cl:fixnum
    :initform 0)
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0))
)

(cl:defclass PlanningCmd (<PlanningCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanningCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanningCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnc_msgs-msg:<PlanningCmd> is deprecated: use pnc_msgs-msg:PlanningCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:header-val is deprecated.  Use pnc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:mode-val is deprecated.  Use pnc_msgs-msg:mode instead.")
  (mode m))

(cl:ensure-generic-function 'utm_traj-val :lambda-list '(m))
(cl:defmethod utm_traj-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:utm_traj-val is deprecated.  Use pnc_msgs-msg:utm_traj instead.")
  (utm_traj m))

(cl:ensure-generic-function 'veh_traj-val :lambda-list '(m))
(cl:defmethod veh_traj-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:veh_traj-val is deprecated.  Use pnc_msgs-msg:veh_traj instead.")
  (veh_traj m))

(cl:ensure-generic-function 'rt_speed-val :lambda-list '(m))
(cl:defmethod rt_speed-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:rt_speed-val is deprecated.  Use pnc_msgs-msg:rt_speed instead.")
  (rt_speed m))

(cl:ensure-generic-function 'final_speed-val :lambda-list '(m))
(cl:defmethod final_speed-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:final_speed-val is deprecated.  Use pnc_msgs-msg:final_speed instead.")
  (final_speed m))

(cl:ensure-generic-function 'final_distance-val :lambda-list '(m))
(cl:defmethod final_distance-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:final_distance-val is deprecated.  Use pnc_msgs-msg:final_distance instead.")
  (final_distance m))

(cl:ensure-generic-function 'lateral_state-val :lambda-list '(m))
(cl:defmethod lateral_state-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:lateral_state-val is deprecated.  Use pnc_msgs-msg:lateral_state instead.")
  (lateral_state m))

(cl:ensure-generic-function 'speed_state-val :lambda-list '(m))
(cl:defmethod speed_state-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:speed_state-val is deprecated.  Use pnc_msgs-msg:speed_state instead.")
  (speed_state m))

(cl:ensure-generic-function 'stop_at_dest-val :lambda-list '(m))
(cl:defmethod stop_at_dest-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:stop_at_dest-val is deprecated.  Use pnc_msgs-msg:stop_at_dest instead.")
  (stop_at_dest m))

(cl:ensure-generic-function 'turn_direction-val :lambda-list '(m))
(cl:defmethod turn_direction-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:turn_direction-val is deprecated.  Use pnc_msgs-msg:turn_direction instead.")
  (turn_direction m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <PlanningCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:task_id-val is deprecated.  Use pnc_msgs-msg:task_id instead.")
  (task_id m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlanningCmd>)))
    "Constants for message type '<PlanningCmd>"
  '((:MODE_AUTO . 0)
    (:MODE_LATERAL_CLOSED_LOOP . 1)
    (:MODE_SPEED_CLOSED_LOOP . 2)
    (:MODE_OPEN_LOOP . 3)
    (:LATERAL_KEEP_LANE . 0)
    (:LATERAL_CHG_TO_LEFT . 1)
    (:LATERAL_CHG_TO_RIGHT . 2)
    (:SPEED_PARK . 0)
    (:SPEED_FOLLOW . 1)
    (:SPEED_ESTOP . 2)
    (:SPEED_BRAKE . 3)
    (:DIR_STRAIGHT . 0)
    (:DIR_TURN_LEFT . 1)
    (:DIR_TURN_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlanningCmd)))
    "Constants for message type 'PlanningCmd"
  '((:MODE_AUTO . 0)
    (:MODE_LATERAL_CLOSED_LOOP . 1)
    (:MODE_SPEED_CLOSED_LOOP . 2)
    (:MODE_OPEN_LOOP . 3)
    (:LATERAL_KEEP_LANE . 0)
    (:LATERAL_CHG_TO_LEFT . 1)
    (:LATERAL_CHG_TO_RIGHT . 2)
    (:SPEED_PARK . 0)
    (:SPEED_FOLLOW . 1)
    (:SPEED_ESTOP . 2)
    (:SPEED_BRAKE . 3)
    (:DIR_STRAIGHT . 0)
    (:DIR_TURN_LEFT . 1)
    (:DIR_TURN_RIGHT . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanningCmd>) ostream)
  "Serializes a message object of type '<PlanningCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'utm_traj) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'veh_traj) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rt_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'final_distance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lateral_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_at_dest) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_direction)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'task_id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanningCmd>) istream)
  "Deserializes a message object of type '<PlanningCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'utm_traj) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'veh_traj) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rt_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'final_distance) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'lateral_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'stop_at_dest) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_direction)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanningCmd>)))
  "Returns string type for a message object of type '<PlanningCmd>"
  "pnc_msgs/PlanningCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanningCmd)))
  "Returns string type for a message object of type 'PlanningCmd"
  "pnc_msgs/PlanningCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanningCmd>)))
  "Returns md5sum for a message object of type '<PlanningCmd>"
  "c524a0bbbcc9e84caf1b33d77fd89eaf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanningCmd)))
  "Returns md5sum for a message object of type 'PlanningCmd"
  "c524a0bbbcc9e84caf1b33d77fd89eaf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanningCmd>)))
  "Returns full string definition for message of type '<PlanningCmd>"
  (cl:format cl:nil "# control mode~%uint8 MODE_AUTO                 = 0~%uint8 MODE_LATERAL_CLOSED_LOOP  = 1~%uint8 MODE_SPEED_CLOSED_LOOP    = 2~%uint8 MODE_OPEN_LOOP            = 3~%~%# lateral state~%uint8 LATERAL_KEEP_LANE         = 0~%uint8 LATERAL_CHG_TO_LEFT       = 1~%uint8 LATERAL_CHG_TO_RIGHT      = 2~%~%# longtude state~%uint8 SPEED_PARK   = 0~%uint8 SPEED_FOLLOW = 1~%uint8 SPEED_ESTOP  = 2~%uint8 SPEED_BRAKE  = 3~%~%# turn light direction~%uint8 DIR_STRAIGHT              = 0~%uint8 DIR_TURN_LEFT             = 1~%uint8 DIR_TURN_RIGHT            = 2~%~%Header header~%~%# control mode~%uint8               mode~%~%# trajectory in utm coord~%pnc_msgs/Trajectory utm_traj~%~%# trajectory in vehicle coord~%pnc_msgs/Trajectory veh_traj~%~%# real time speed in [km/h]~%float64             rt_speed~%~%# target follow speed in [km/h]~%float64             final_speed~%~%# target follow distance in [m]~%float64             final_distance~%~%# lateral state~%uint8               lateral_state~%~%# speed state~%uint8               speed_state~%~%# if vehicle stop at dest~%bool                stop_at_dest~%~%# turn light direction when change lane or turn~%uint8               turn_direction~%~%int32 task_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pnc_msgs/Trajectory~%# total traj length in [m]~%float64 total_traj_length~%~%# total traj time in [s]~%float64 total_traj_time~%~%pnc_msgs/TrajectoryPoint[] trajectory_pts~%================================================================================~%MSG: pnc_msgs/TrajectoryPoint~%# path data~%PathPoint path_point~%~%# linear velocity in [m/s]~%float64 v~%# linear acceleration in [m/s^2]~%float64 a~%# relative time from beginning of the trajectory in [s]~%float64 relative_time~%================================================================================~%MSG: pnc_msgs/PathPoint~%# coordinates in [m]~%float64 x~%float64 y~%float64 z~%~%# accumulated distance from beginning of the path in [m]~%float64 s~%~%# direction on the x-y plane in [0 ~~ 2π]~%float64 theta~%~%# curvature on the x-y planning~%float64 kappa~%~%# derivative of kappa w.r.t s.~%float64 dkappa~%~%# derivative of derivative of kappa w.r.t s.~%float64 ddkappa~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanningCmd)))
  "Returns full string definition for message of type 'PlanningCmd"
  (cl:format cl:nil "# control mode~%uint8 MODE_AUTO                 = 0~%uint8 MODE_LATERAL_CLOSED_LOOP  = 1~%uint8 MODE_SPEED_CLOSED_LOOP    = 2~%uint8 MODE_OPEN_LOOP            = 3~%~%# lateral state~%uint8 LATERAL_KEEP_LANE         = 0~%uint8 LATERAL_CHG_TO_LEFT       = 1~%uint8 LATERAL_CHG_TO_RIGHT      = 2~%~%# longtude state~%uint8 SPEED_PARK   = 0~%uint8 SPEED_FOLLOW = 1~%uint8 SPEED_ESTOP  = 2~%uint8 SPEED_BRAKE  = 3~%~%# turn light direction~%uint8 DIR_STRAIGHT              = 0~%uint8 DIR_TURN_LEFT             = 1~%uint8 DIR_TURN_RIGHT            = 2~%~%Header header~%~%# control mode~%uint8               mode~%~%# trajectory in utm coord~%pnc_msgs/Trajectory utm_traj~%~%# trajectory in vehicle coord~%pnc_msgs/Trajectory veh_traj~%~%# real time speed in [km/h]~%float64             rt_speed~%~%# target follow speed in [km/h]~%float64             final_speed~%~%# target follow distance in [m]~%float64             final_distance~%~%# lateral state~%uint8               lateral_state~%~%# speed state~%uint8               speed_state~%~%# if vehicle stop at dest~%bool                stop_at_dest~%~%# turn light direction when change lane or turn~%uint8               turn_direction~%~%int32 task_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pnc_msgs/Trajectory~%# total traj length in [m]~%float64 total_traj_length~%~%# total traj time in [s]~%float64 total_traj_time~%~%pnc_msgs/TrajectoryPoint[] trajectory_pts~%================================================================================~%MSG: pnc_msgs/TrajectoryPoint~%# path data~%PathPoint path_point~%~%# linear velocity in [m/s]~%float64 v~%# linear acceleration in [m/s^2]~%float64 a~%# relative time from beginning of the trajectory in [s]~%float64 relative_time~%================================================================================~%MSG: pnc_msgs/PathPoint~%# coordinates in [m]~%float64 x~%float64 y~%float64 z~%~%# accumulated distance from beginning of the path in [m]~%float64 s~%~%# direction on the x-y plane in [0 ~~ 2π]~%float64 theta~%~%# curvature on the x-y planning~%float64 kappa~%~%# derivative of kappa w.r.t s.~%float64 dkappa~%~%# derivative of derivative of kappa w.r.t s.~%float64 ddkappa~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanningCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'utm_traj))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'veh_traj))
     8
     8
     8
     1
     1
     1
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanningCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanningCmd
    (cl:cons ':header (header msg))
    (cl:cons ':mode (mode msg))
    (cl:cons ':utm_traj (utm_traj msg))
    (cl:cons ':veh_traj (veh_traj msg))
    (cl:cons ':rt_speed (rt_speed msg))
    (cl:cons ':final_speed (final_speed msg))
    (cl:cons ':final_distance (final_distance msg))
    (cl:cons ':lateral_state (lateral_state msg))
    (cl:cons ':speed_state (speed_state msg))
    (cl:cons ':stop_at_dest (stop_at_dest msg))
    (cl:cons ':turn_direction (turn_direction msg))
    (cl:cons ':task_id (task_id msg))
))
