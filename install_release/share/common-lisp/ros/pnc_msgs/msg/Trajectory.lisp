; Auto-generated. Do not edit!


(cl:in-package pnc_msgs-msg)


;//! \htmlinclude Trajectory.msg.html

(cl:defclass <Trajectory> (roslisp-msg-protocol:ros-message)
  ((total_traj_length
    :reader total_traj_length
    :initarg :total_traj_length
    :type cl:float
    :initform 0.0)
   (total_traj_time
    :reader total_traj_time
    :initarg :total_traj_time
    :type cl:float
    :initform 0.0)
   (trajectory_pts
    :reader trajectory_pts
    :initarg :trajectory_pts
    :type (cl:vector pnc_msgs-msg:TrajectoryPoint)
   :initform (cl:make-array 0 :element-type 'pnc_msgs-msg:TrajectoryPoint :initial-element (cl:make-instance 'pnc_msgs-msg:TrajectoryPoint))))
)

(cl:defclass Trajectory (<Trajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Trajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Trajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnc_msgs-msg:<Trajectory> is deprecated: use pnc_msgs-msg:Trajectory instead.")))

(cl:ensure-generic-function 'total_traj_length-val :lambda-list '(m))
(cl:defmethod total_traj_length-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:total_traj_length-val is deprecated.  Use pnc_msgs-msg:total_traj_length instead.")
  (total_traj_length m))

(cl:ensure-generic-function 'total_traj_time-val :lambda-list '(m))
(cl:defmethod total_traj_time-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:total_traj_time-val is deprecated.  Use pnc_msgs-msg:total_traj_time instead.")
  (total_traj_time m))

(cl:ensure-generic-function 'trajectory_pts-val :lambda-list '(m))
(cl:defmethod trajectory_pts-val ((m <Trajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:trajectory_pts-val is deprecated.  Use pnc_msgs-msg:trajectory_pts instead.")
  (trajectory_pts m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Trajectory>) ostream)
  "Serializes a message object of type '<Trajectory>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_traj_length))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'total_traj_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'trajectory_pts))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'trajectory_pts))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Trajectory>) istream)
  "Deserializes a message object of type '<Trajectory>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_traj_length) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'total_traj_time) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'trajectory_pts) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'trajectory_pts)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pnc_msgs-msg:TrajectoryPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Trajectory>)))
  "Returns string type for a message object of type '<Trajectory>"
  "pnc_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Trajectory)))
  "Returns string type for a message object of type 'Trajectory"
  "pnc_msgs/Trajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Trajectory>)))
  "Returns md5sum for a message object of type '<Trajectory>"
  "a1572326f09d8f47407c20282d7259e3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Trajectory)))
  "Returns md5sum for a message object of type 'Trajectory"
  "a1572326f09d8f47407c20282d7259e3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Trajectory>)))
  "Returns full string definition for message of type '<Trajectory>"
  (cl:format cl:nil "# total traj length in [m]~%float64 total_traj_length~%~%# total traj time in [s]~%float64 total_traj_time~%~%pnc_msgs/TrajectoryPoint[] trajectory_pts~%================================================================================~%MSG: pnc_msgs/TrajectoryPoint~%# path data~%PathPoint path_point~%~%# linear velocity in [m/s]~%float64 v~%# linear acceleration in [m/s^2]~%float64 a~%# relative time from beginning of the trajectory in [s]~%float64 relative_time~%================================================================================~%MSG: pnc_msgs/PathPoint~%# coordinates in [m]~%float64 x~%float64 y~%float64 z~%~%# accumulated distance from beginning of the path in [m]~%float64 s~%~%# direction on the x-y plane in [0 ~~ 2π]~%float64 theta~%~%# curvature on the x-y planning~%float64 kappa~%~%# derivative of kappa w.r.t s.~%float64 dkappa~%~%# derivative of derivative of kappa w.r.t s.~%float64 ddkappa~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Trajectory)))
  "Returns full string definition for message of type 'Trajectory"
  (cl:format cl:nil "# total traj length in [m]~%float64 total_traj_length~%~%# total traj time in [s]~%float64 total_traj_time~%~%pnc_msgs/TrajectoryPoint[] trajectory_pts~%================================================================================~%MSG: pnc_msgs/TrajectoryPoint~%# path data~%PathPoint path_point~%~%# linear velocity in [m/s]~%float64 v~%# linear acceleration in [m/s^2]~%float64 a~%# relative time from beginning of the trajectory in [s]~%float64 relative_time~%================================================================================~%MSG: pnc_msgs/PathPoint~%# coordinates in [m]~%float64 x~%float64 y~%float64 z~%~%# accumulated distance from beginning of the path in [m]~%float64 s~%~%# direction on the x-y plane in [0 ~~ 2π]~%float64 theta~%~%# curvature on the x-y planning~%float64 kappa~%~%# derivative of kappa w.r.t s.~%float64 dkappa~%~%# derivative of derivative of kappa w.r.t s.~%float64 ddkappa~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Trajectory>))
  (cl:+ 0
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'trajectory_pts) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Trajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'Trajectory
    (cl:cons ':total_traj_length (total_traj_length msg))
    (cl:cons ':total_traj_time (total_traj_time msg))
    (cl:cons ':trajectory_pts (trajectory_pts msg))
))
