; Auto-generated. Do not edit!


(cl:in-package pncc_msgs-msg)


;//! \htmlinclude VehicleInfo.msg.html

(cl:defclass <VehicleInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (vehicle_speed
    :reader vehicle_speed
    :initarg :vehicle_speed
    :type cl:float
    :initform 0.0)
   (odometer
    :reader odometer
    :initarg :odometer
    :type cl:float
    :initform 0.0)
   (wheel_speed
    :reader wheel_speed
    :initarg :wheel_speed
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (wheel_odometer
    :reader wheel_odometer
    :initarg :wheel_odometer
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (wheel_angle_left
    :reader wheel_angle_left
    :initarg :wheel_angle_left
    :type cl:float
    :initform 0.0)
   (wheel_angle_right
    :reader wheel_angle_right
    :initarg :wheel_angle_right
    :type cl:float
    :initform 0.0)
   (yaw_rate
    :reader yaw_rate
    :initarg :yaw_rate
    :type cl:float
    :initform 0.0)
   (gx
    :reader gx
    :initarg :gx
    :type cl:float
    :initform 0.0)
   (gy
    :reader gy
    :initarg :gy
    :type cl:float
    :initform 0.0)
   (steering_mode
    :reader steering_mode
    :initarg :steering_mode
    :type cl:fixnum
    :initform 0)
   (steering_angle
    :reader steering_angle
    :initarg :steering_angle
    :type cl:float
    :initform 0.0)
   (throttle_mode
    :reader throttle_mode
    :initarg :throttle_mode
    :type cl:fixnum
    :initform 0)
   (throttle
    :reader throttle
    :initarg :throttle
    :type cl:float
    :initform 0.0)
   (brake_mode
    :reader brake_mode
    :initarg :brake_mode
    :type cl:fixnum
    :initform 0)
   (brake
    :reader brake
    :initarg :brake
    :type cl:float
    :initform 0.0)
   (acceleration_mode
    :reader acceleration_mode
    :initarg :acceleration_mode
    :type cl:fixnum
    :initform 0)
   (acceleration
    :reader acceleration
    :initarg :acceleration
    :type cl:float
    :initform 0.0)
   (gear_mode
    :reader gear_mode
    :initarg :gear_mode
    :type cl:fixnum
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type pncc_msgs-msg:Gear
    :initform (cl:make-instance 'pncc_msgs-msg:Gear))
   (turn_light_status
    :reader turn_light_status
    :initarg :turn_light_status
    :type cl:fixnum
    :initform 0)
   (door_status
    :reader door_status
    :initarg :door_status
    :type cl:fixnum
    :initform 0)
   (wiper_status
    :reader wiper_status
    :initarg :wiper_status
    :type cl:fixnum
    :initform 0)
   (horn_status
    :reader horn_status
    :initarg :horn_status
    :type cl:fixnum
    :initform 0)
   (light_status
    :reader light_status
    :initarg :light_status
    :type cl:fixnum
    :initform 0)
   (dump_energy_status
    :reader dump_energy_status
    :initarg :dump_energy_status
    :type cl:fixnum
    :initform 0)
   (auto_driver_status
    :reader auto_driver_status
    :initarg :auto_driver_status
    :type cl:fixnum
    :initform 0)
   (vehicle_error_status
    :reader vehicle_error_status
    :initarg :vehicle_error_status
    :type cl:fixnum
    :initform 0)
   (emergency_stop_status
    :reader emergency_stop_status
    :initarg :emergency_stop_status
    :type cl:fixnum
    :initform 0)
   (brake_air_pressure_0
    :reader brake_air_pressure_0
    :initarg :brake_air_pressure_0
    :type cl:float
    :initform 0.0)
   (brake_air_pressure_1
    :reader brake_air_pressure_1
    :initarg :brake_air_pressure_1
    :type cl:float
    :initform 0.0))
)

(cl:defclass VehicleInfo (<VehicleInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pncc_msgs-msg:<VehicleInfo> is deprecated: use pncc_msgs-msg:VehicleInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:header-val is deprecated.  Use pncc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'vehicle_speed-val :lambda-list '(m))
(cl:defmethod vehicle_speed-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:vehicle_speed-val is deprecated.  Use pncc_msgs-msg:vehicle_speed instead.")
  (vehicle_speed m))

(cl:ensure-generic-function 'odometer-val :lambda-list '(m))
(cl:defmethod odometer-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:odometer-val is deprecated.  Use pncc_msgs-msg:odometer instead.")
  (odometer m))

(cl:ensure-generic-function 'wheel_speed-val :lambda-list '(m))
(cl:defmethod wheel_speed-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:wheel_speed-val is deprecated.  Use pncc_msgs-msg:wheel_speed instead.")
  (wheel_speed m))

(cl:ensure-generic-function 'wheel_odometer-val :lambda-list '(m))
(cl:defmethod wheel_odometer-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:wheel_odometer-val is deprecated.  Use pncc_msgs-msg:wheel_odometer instead.")
  (wheel_odometer m))

(cl:ensure-generic-function 'wheel_angle_left-val :lambda-list '(m))
(cl:defmethod wheel_angle_left-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:wheel_angle_left-val is deprecated.  Use pncc_msgs-msg:wheel_angle_left instead.")
  (wheel_angle_left m))

(cl:ensure-generic-function 'wheel_angle_right-val :lambda-list '(m))
(cl:defmethod wheel_angle_right-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:wheel_angle_right-val is deprecated.  Use pncc_msgs-msg:wheel_angle_right instead.")
  (wheel_angle_right m))

(cl:ensure-generic-function 'yaw_rate-val :lambda-list '(m))
(cl:defmethod yaw_rate-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:yaw_rate-val is deprecated.  Use pncc_msgs-msg:yaw_rate instead.")
  (yaw_rate m))

(cl:ensure-generic-function 'gx-val :lambda-list '(m))
(cl:defmethod gx-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:gx-val is deprecated.  Use pncc_msgs-msg:gx instead.")
  (gx m))

(cl:ensure-generic-function 'gy-val :lambda-list '(m))
(cl:defmethod gy-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:gy-val is deprecated.  Use pncc_msgs-msg:gy instead.")
  (gy m))

(cl:ensure-generic-function 'steering_mode-val :lambda-list '(m))
(cl:defmethod steering_mode-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:steering_mode-val is deprecated.  Use pncc_msgs-msg:steering_mode instead.")
  (steering_mode m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:steering_angle-val is deprecated.  Use pncc_msgs-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'throttle_mode-val :lambda-list '(m))
(cl:defmethod throttle_mode-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:throttle_mode-val is deprecated.  Use pncc_msgs-msg:throttle_mode instead.")
  (throttle_mode m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:throttle-val is deprecated.  Use pncc_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'brake_mode-val :lambda-list '(m))
(cl:defmethod brake_mode-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:brake_mode-val is deprecated.  Use pncc_msgs-msg:brake_mode instead.")
  (brake_mode m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:brake-val is deprecated.  Use pncc_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'acceleration_mode-val :lambda-list '(m))
(cl:defmethod acceleration_mode-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:acceleration_mode-val is deprecated.  Use pncc_msgs-msg:acceleration_mode instead.")
  (acceleration_mode m))

(cl:ensure-generic-function 'acceleration-val :lambda-list '(m))
(cl:defmethod acceleration-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:acceleration-val is deprecated.  Use pncc_msgs-msg:acceleration instead.")
  (acceleration m))

(cl:ensure-generic-function 'gear_mode-val :lambda-list '(m))
(cl:defmethod gear_mode-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:gear_mode-val is deprecated.  Use pncc_msgs-msg:gear_mode instead.")
  (gear_mode m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:gear-val is deprecated.  Use pncc_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'turn_light_status-val :lambda-list '(m))
(cl:defmethod turn_light_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:turn_light_status-val is deprecated.  Use pncc_msgs-msg:turn_light_status instead.")
  (turn_light_status m))

(cl:ensure-generic-function 'door_status-val :lambda-list '(m))
(cl:defmethod door_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:door_status-val is deprecated.  Use pncc_msgs-msg:door_status instead.")
  (door_status m))

(cl:ensure-generic-function 'wiper_status-val :lambda-list '(m))
(cl:defmethod wiper_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:wiper_status-val is deprecated.  Use pncc_msgs-msg:wiper_status instead.")
  (wiper_status m))

(cl:ensure-generic-function 'horn_status-val :lambda-list '(m))
(cl:defmethod horn_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:horn_status-val is deprecated.  Use pncc_msgs-msg:horn_status instead.")
  (horn_status m))

(cl:ensure-generic-function 'light_status-val :lambda-list '(m))
(cl:defmethod light_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:light_status-val is deprecated.  Use pncc_msgs-msg:light_status instead.")
  (light_status m))

(cl:ensure-generic-function 'dump_energy_status-val :lambda-list '(m))
(cl:defmethod dump_energy_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:dump_energy_status-val is deprecated.  Use pncc_msgs-msg:dump_energy_status instead.")
  (dump_energy_status m))

(cl:ensure-generic-function 'auto_driver_status-val :lambda-list '(m))
(cl:defmethod auto_driver_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:auto_driver_status-val is deprecated.  Use pncc_msgs-msg:auto_driver_status instead.")
  (auto_driver_status m))

(cl:ensure-generic-function 'vehicle_error_status-val :lambda-list '(m))
(cl:defmethod vehicle_error_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:vehicle_error_status-val is deprecated.  Use pncc_msgs-msg:vehicle_error_status instead.")
  (vehicle_error_status m))

(cl:ensure-generic-function 'emergency_stop_status-val :lambda-list '(m))
(cl:defmethod emergency_stop_status-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:emergency_stop_status-val is deprecated.  Use pncc_msgs-msg:emergency_stop_status instead.")
  (emergency_stop_status m))

(cl:ensure-generic-function 'brake_air_pressure_0-val :lambda-list '(m))
(cl:defmethod brake_air_pressure_0-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:brake_air_pressure_0-val is deprecated.  Use pncc_msgs-msg:brake_air_pressure_0 instead.")
  (brake_air_pressure_0 m))

(cl:ensure-generic-function 'brake_air_pressure_1-val :lambda-list '(m))
(cl:defmethod brake_air_pressure_1-val ((m <VehicleInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:brake_air_pressure_1-val is deprecated.  Use pncc_msgs-msg:brake_air_pressure_1 instead.")
  (brake_air_pressure_1 m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleInfo>)))
    "Constants for message type '<VehicleInfo>"
  '((:MODE_MANUAL . 70)
    (:MODE_AUTO . 71)
    (:MODE_INTERVENED . 72))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleInfo)))
    "Constants for message type 'VehicleInfo"
  '((:MODE_MANUAL . 70)
    (:MODE_AUTO . 71)
    (:MODE_INTERVENED . 72))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleInfo>) ostream)
  "Serializes a message object of type '<VehicleInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'vehicle_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'odometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'wheel_speed))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'wheel_odometer))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'wheel_odometer))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel_angle_left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'wheel_angle_right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'yaw_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gy))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'throttle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acceleration_mode)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acceleration))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_light_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wiper_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horn_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dump_energy_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_driver_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_error_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_error_status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_stop_status)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_air_pressure_0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brake_air_pressure_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleInfo>) istream)
  "Deserializes a message object of type '<VehicleInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vehicle_speed) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'odometer) (roslisp-utils:decode-double-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_speed) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_speed)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'wheel_odometer) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'wheel_odometer)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_angle_left) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'wheel_angle_right) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw_rate) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gy) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'steering_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'throttle_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'throttle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acceleration_mode)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_light_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wiper_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horn_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dump_energy_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_driver_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_error_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'vehicle_error_status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'emergency_stop_status)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_air_pressure_0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_air_pressure_1) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleInfo>)))
  "Returns string type for a message object of type '<VehicleInfo>"
  "pncc_msgs/VehicleInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleInfo)))
  "Returns string type for a message object of type 'VehicleInfo"
  "pncc_msgs/VehicleInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleInfo>)))
  "Returns md5sum for a message object of type '<VehicleInfo>"
  "5250ff1105cef33cd8779a4c67c998f2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleInfo)))
  "Returns md5sum for a message object of type 'VehicleInfo"
  "5250ff1105cef33cd8779a4c67c998f2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleInfo>)))
  "Returns full string definition for message of type '<VehicleInfo>"
  (cl:format cl:nil "uint8 MODE_MANUAL = 70~%uint8 MODE_AUTO = 71~%uint8 MODE_INTERVENED = 72~%~%Header header~%~%float64 vehicle_speed    # m/s~%float64 odometer         # m~%~%float64[] wheel_speed    # m/s, start from FL, clockwise.~%float64[] wheel_odometer # m, start from FL, clockwise.~%~%float64 wheel_angle_left # degree~%float64 wheel_angle_right# degree~%~%float64 yaw_rate         # rad/s~%float64 gx               # m/s2~%float64 gy               # m/s2~%~%uint8 steering_mode~%float64 steering_angle   # degree~%~%uint8 throttle_mode~%float64 throttle         # 0.0 ~~ 1.0; -1.0 for unavailable.~%~%uint8 brake_mode~%float64 brake            # 0.0 ~~ 1.0; -1.0 for unavailable.~%~%uint8 acceleration_mode~%float64 acceleration     # m/s2~%~%uint8 gear_mode~%Gear gear~%~%uint8 turn_light_status~%uint8 door_status~%uint8 wiper_status~%uint8 horn_status~%uint8 light_status~%uint8 dump_energy_status~%~%uint8 auto_driver_status           #0:auto_driver          1:human intervention 2:udp lost 3:can lost 5:cdc lost~%uint16 vehicle_error_status        #contain eight status, each status takes 2 bits          steering_error/gear_error/throttle_error/brake_error/vehicle_error~%~%uint8 emergency_stop_status        #0:normal 1:stop_status~%~%float64 brake_air_pressure_0 # air pressure~%float64 brake_air_pressure_1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pncc_msgs/Gear~%uint8 GEAR_P = 0~%uint8 GEAR_R = 1~%uint8 GEAR_N = 2~%uint8 GEAR_D = 3~%uint8 GEAR_1 = 4~%uint8 GEAR_2 = 5~%uint8 GEAR_3 = 6~%uint8 GEAR_4 = 7~%uint8 GEAR_5 = 8~%uint8 GEAR_6 = 9~%uint8 GEAR_7 = 10~%uint8 GEAR_8 = 11~%uint8 GEAR_9 = 12~%uint8 GEAR_10 = 13~%uint8 GEAR_11 = 14~%uint8 GEAR_12 = 15~%~%~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleInfo)))
  "Returns full string definition for message of type 'VehicleInfo"
  (cl:format cl:nil "uint8 MODE_MANUAL = 70~%uint8 MODE_AUTO = 71~%uint8 MODE_INTERVENED = 72~%~%Header header~%~%float64 vehicle_speed    # m/s~%float64 odometer         # m~%~%float64[] wheel_speed    # m/s, start from FL, clockwise.~%float64[] wheel_odometer # m, start from FL, clockwise.~%~%float64 wheel_angle_left # degree~%float64 wheel_angle_right# degree~%~%float64 yaw_rate         # rad/s~%float64 gx               # m/s2~%float64 gy               # m/s2~%~%uint8 steering_mode~%float64 steering_angle   # degree~%~%uint8 throttle_mode~%float64 throttle         # 0.0 ~~ 1.0; -1.0 for unavailable.~%~%uint8 brake_mode~%float64 brake            # 0.0 ~~ 1.0; -1.0 for unavailable.~%~%uint8 acceleration_mode~%float64 acceleration     # m/s2~%~%uint8 gear_mode~%Gear gear~%~%uint8 turn_light_status~%uint8 door_status~%uint8 wiper_status~%uint8 horn_status~%uint8 light_status~%uint8 dump_energy_status~%~%uint8 auto_driver_status           #0:auto_driver          1:human intervention 2:udp lost 3:can lost 5:cdc lost~%uint16 vehicle_error_status        #contain eight status, each status takes 2 bits          steering_error/gear_error/throttle_error/brake_error/vehicle_error~%~%uint8 emergency_stop_status        #0:normal 1:stop_status~%~%float64 brake_air_pressure_0 # air pressure~%float64 brake_air_pressure_1~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pncc_msgs/Gear~%uint8 GEAR_P = 0~%uint8 GEAR_R = 1~%uint8 GEAR_N = 2~%uint8 GEAR_D = 3~%uint8 GEAR_1 = 4~%uint8 GEAR_2 = 5~%uint8 GEAR_3 = 6~%uint8 GEAR_4 = 7~%uint8 GEAR_5 = 8~%uint8 GEAR_6 = 9~%uint8 GEAR_7 = 10~%uint8 GEAR_8 = 11~%uint8 GEAR_9 = 12~%uint8 GEAR_10 = 13~%uint8 GEAR_11 = 14~%uint8 GEAR_12 = 15~%~%~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_speed) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'wheel_odometer) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     8
     8
     8
     8
     1
     8
     1
     8
     1
     8
     1
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gear))
     1
     1
     1
     1
     1
     1
     1
     2
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleInfo
    (cl:cons ':header (header msg))
    (cl:cons ':vehicle_speed (vehicle_speed msg))
    (cl:cons ':odometer (odometer msg))
    (cl:cons ':wheel_speed (wheel_speed msg))
    (cl:cons ':wheel_odometer (wheel_odometer msg))
    (cl:cons ':wheel_angle_left (wheel_angle_left msg))
    (cl:cons ':wheel_angle_right (wheel_angle_right msg))
    (cl:cons ':yaw_rate (yaw_rate msg))
    (cl:cons ':gx (gx msg))
    (cl:cons ':gy (gy msg))
    (cl:cons ':steering_mode (steering_mode msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':throttle_mode (throttle_mode msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':brake_mode (brake_mode msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':acceleration_mode (acceleration_mode msg))
    (cl:cons ':acceleration (acceleration msg))
    (cl:cons ':gear_mode (gear_mode msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':turn_light_status (turn_light_status msg))
    (cl:cons ':door_status (door_status msg))
    (cl:cons ':wiper_status (wiper_status msg))
    (cl:cons ':horn_status (horn_status msg))
    (cl:cons ':light_status (light_status msg))
    (cl:cons ':dump_energy_status (dump_energy_status msg))
    (cl:cons ':auto_driver_status (auto_driver_status msg))
    (cl:cons ':vehicle_error_status (vehicle_error_status msg))
    (cl:cons ':emergency_stop_status (emergency_stop_status msg))
    (cl:cons ':brake_air_pressure_0 (brake_air_pressure_0 msg))
    (cl:cons ':brake_air_pressure_1 (brake_air_pressure_1 msg))
))
