; Auto-generated. Do not edit!


(cl:in-package pnc_msgs-msg)


;//! \htmlinclude VehicleCmd.msg.html

(cl:defclass <VehicleCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
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
   (steering_speed
    :reader steering_speed
    :initarg :steering_speed
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
   (acceleration_request
    :reader acceleration_request
    :initarg :acceleration_request
    :type cl:float
    :initform 0.0)
   (acceleration_mode
    :reader acceleration_mode
    :initarg :acceleration_mode
    :type cl:fixnum
    :initform 0)
   (gear
    :reader gear
    :initarg :gear
    :type pncc_msgs-msg:Gear
    :initform (cl:make-instance 'pncc_msgs-msg:Gear))
   (gear_mode
    :reader gear_mode
    :initarg :gear_mode
    :type cl:fixnum
    :initform 0)
   (turn_light_mode
    :reader turn_light_mode
    :initarg :turn_light_mode
    :type cl:fixnum
    :initform 0)
   (turn_light
    :reader turn_light
    :initarg :turn_light
    :type cl:fixnum
    :initform 0)
   (light_mode
    :reader light_mode
    :initarg :light_mode
    :type cl:fixnum
    :initform 0)
   (light
    :reader light
    :initarg :light
    :type cl:fixnum
    :initform 0)
   (wiper_mode
    :reader wiper_mode
    :initarg :wiper_mode
    :type cl:fixnum
    :initform 0)
   (wiper
    :reader wiper
    :initarg :wiper
    :type cl:fixnum
    :initform 0)
   (door_mode
    :reader door_mode
    :initarg :door_mode
    :type cl:fixnum
    :initform 0)
   (door
    :reader door
    :initarg :door
    :type cl:fixnum
    :initform 0)
   (horn_mode
    :reader horn_mode
    :initarg :horn_mode
    :type cl:fixnum
    :initform 0)
   (horn
    :reader horn
    :initarg :horn
    :type cl:fixnum
    :initform 0)
   (auto_driver_cmd
    :reader auto_driver_cmd
    :initarg :auto_driver_cmd
    :type cl:fixnum
    :initform 0)
   (e_stop_cmd
    :reader e_stop_cmd
    :initarg :e_stop_cmd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass VehicleCmd (<VehicleCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VehicleCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VehicleCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnc_msgs-msg:<VehicleCmd> is deprecated: use pnc_msgs-msg:VehicleCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:header-val is deprecated.  Use pnc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'steering_mode-val :lambda-list '(m))
(cl:defmethod steering_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:steering_mode-val is deprecated.  Use pnc_msgs-msg:steering_mode instead.")
  (steering_mode m))

(cl:ensure-generic-function 'steering_angle-val :lambda-list '(m))
(cl:defmethod steering_angle-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:steering_angle-val is deprecated.  Use pnc_msgs-msg:steering_angle instead.")
  (steering_angle m))

(cl:ensure-generic-function 'steering_speed-val :lambda-list '(m))
(cl:defmethod steering_speed-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:steering_speed-val is deprecated.  Use pnc_msgs-msg:steering_speed instead.")
  (steering_speed m))

(cl:ensure-generic-function 'throttle_mode-val :lambda-list '(m))
(cl:defmethod throttle_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:throttle_mode-val is deprecated.  Use pnc_msgs-msg:throttle_mode instead.")
  (throttle_mode m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:throttle-val is deprecated.  Use pnc_msgs-msg:throttle instead.")
  (throttle m))

(cl:ensure-generic-function 'brake_mode-val :lambda-list '(m))
(cl:defmethod brake_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:brake_mode-val is deprecated.  Use pnc_msgs-msg:brake_mode instead.")
  (brake_mode m))

(cl:ensure-generic-function 'brake-val :lambda-list '(m))
(cl:defmethod brake-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:brake-val is deprecated.  Use pnc_msgs-msg:brake instead.")
  (brake m))

(cl:ensure-generic-function 'acceleration_request-val :lambda-list '(m))
(cl:defmethod acceleration_request-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:acceleration_request-val is deprecated.  Use pnc_msgs-msg:acceleration_request instead.")
  (acceleration_request m))

(cl:ensure-generic-function 'acceleration_mode-val :lambda-list '(m))
(cl:defmethod acceleration_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:acceleration_mode-val is deprecated.  Use pnc_msgs-msg:acceleration_mode instead.")
  (acceleration_mode m))

(cl:ensure-generic-function 'gear-val :lambda-list '(m))
(cl:defmethod gear-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:gear-val is deprecated.  Use pnc_msgs-msg:gear instead.")
  (gear m))

(cl:ensure-generic-function 'gear_mode-val :lambda-list '(m))
(cl:defmethod gear_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:gear_mode-val is deprecated.  Use pnc_msgs-msg:gear_mode instead.")
  (gear_mode m))

(cl:ensure-generic-function 'turn_light_mode-val :lambda-list '(m))
(cl:defmethod turn_light_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:turn_light_mode-val is deprecated.  Use pnc_msgs-msg:turn_light_mode instead.")
  (turn_light_mode m))

(cl:ensure-generic-function 'turn_light-val :lambda-list '(m))
(cl:defmethod turn_light-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:turn_light-val is deprecated.  Use pnc_msgs-msg:turn_light instead.")
  (turn_light m))

(cl:ensure-generic-function 'light_mode-val :lambda-list '(m))
(cl:defmethod light_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:light_mode-val is deprecated.  Use pnc_msgs-msg:light_mode instead.")
  (light_mode m))

(cl:ensure-generic-function 'light-val :lambda-list '(m))
(cl:defmethod light-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:light-val is deprecated.  Use pnc_msgs-msg:light instead.")
  (light m))

(cl:ensure-generic-function 'wiper_mode-val :lambda-list '(m))
(cl:defmethod wiper_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:wiper_mode-val is deprecated.  Use pnc_msgs-msg:wiper_mode instead.")
  (wiper_mode m))

(cl:ensure-generic-function 'wiper-val :lambda-list '(m))
(cl:defmethod wiper-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:wiper-val is deprecated.  Use pnc_msgs-msg:wiper instead.")
  (wiper m))

(cl:ensure-generic-function 'door_mode-val :lambda-list '(m))
(cl:defmethod door_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:door_mode-val is deprecated.  Use pnc_msgs-msg:door_mode instead.")
  (door_mode m))

(cl:ensure-generic-function 'door-val :lambda-list '(m))
(cl:defmethod door-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:door-val is deprecated.  Use pnc_msgs-msg:door instead.")
  (door m))

(cl:ensure-generic-function 'horn_mode-val :lambda-list '(m))
(cl:defmethod horn_mode-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:horn_mode-val is deprecated.  Use pnc_msgs-msg:horn_mode instead.")
  (horn_mode m))

(cl:ensure-generic-function 'horn-val :lambda-list '(m))
(cl:defmethod horn-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:horn-val is deprecated.  Use pnc_msgs-msg:horn instead.")
  (horn m))

(cl:ensure-generic-function 'auto_driver_cmd-val :lambda-list '(m))
(cl:defmethod auto_driver_cmd-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:auto_driver_cmd-val is deprecated.  Use pnc_msgs-msg:auto_driver_cmd instead.")
  (auto_driver_cmd m))

(cl:ensure-generic-function 'e_stop_cmd-val :lambda-list '(m))
(cl:defmethod e_stop_cmd-val ((m <VehicleCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:e_stop_cmd-val is deprecated.  Use pnc_msgs-msg:e_stop_cmd instead.")
  (e_stop_cmd m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<VehicleCmd>)))
    "Constants for message type '<VehicleCmd>"
  '((:MODE_MANUAL . 100)
    (:MODE_AUTO . 101)
    (:OFF . 150)
    (:ON . 151)
    (:TURN_LIGHT_LEFT . 0)
    (:TURN_LIGHT_RIGHT . 1)
    (:TURN_LIGHT_BOTH . 2)
    (:TURN_LIGHT_INVALID . 3)
    (:LIGHT_CLOSE . 0)
    (:LIGHT_NEAR . 1)
    (:LIGHT_FAR . 2)
    (:LIGHT_INVALID . 3)
    (:WIPER_CLOSE . 0)
    (:WIPER_RUN . 1)
    (:WIPER_RESERVE . 2)
    (:WIPER_INVALID . 3)
    (:DOOR_NO_CONTROL . 0)
    (:DOOR_NORMAL_OPEN . 1)
    (:DOOR_EMERGENCY_OPEN . 2)
    (:DOOR_RESERVE . 3)
    (:HORN_NO_CONTROL . 0)
    (:HORN_OPEN . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'VehicleCmd)))
    "Constants for message type 'VehicleCmd"
  '((:MODE_MANUAL . 100)
    (:MODE_AUTO . 101)
    (:OFF . 150)
    (:ON . 151)
    (:TURN_LIGHT_LEFT . 0)
    (:TURN_LIGHT_RIGHT . 1)
    (:TURN_LIGHT_BOTH . 2)
    (:TURN_LIGHT_INVALID . 3)
    (:LIGHT_CLOSE . 0)
    (:LIGHT_NEAR . 1)
    (:LIGHT_FAR . 2)
    (:LIGHT_INVALID . 3)
    (:WIPER_CLOSE . 0)
    (:WIPER_RUN . 1)
    (:WIPER_RESERVE . 2)
    (:WIPER_INVALID . 3)
    (:DOOR_NO_CONTROL . 0)
    (:DOOR_NORMAL_OPEN . 1)
    (:DOOR_EMERGENCY_OPEN . 2)
    (:DOOR_RESERVE . 3)
    (:HORN_NO_CONTROL . 0)
    (:HORN_OPEN . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VehicleCmd>) ostream)
  "Serializes a message object of type '<VehicleCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'steering_speed))))
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'acceleration_request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acceleration_mode)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gear) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_light_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wiper_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wiper)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horn_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horn)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_driver_cmd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'e_stop_cmd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VehicleCmd>) istream)
  "Deserializes a message object of type '<VehicleCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'steering_speed) (roslisp-utils:decode-double-float-bits bits)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'acceleration_request) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'acceleration_mode)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gear) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gear_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_light_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'turn_light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'light)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wiper_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wiper)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'door)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horn_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'horn)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'auto_driver_cmd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'e_stop_cmd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VehicleCmd>)))
  "Returns string type for a message object of type '<VehicleCmd>"
  "pnc_msgs/VehicleCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VehicleCmd)))
  "Returns string type for a message object of type 'VehicleCmd"
  "pnc_msgs/VehicleCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VehicleCmd>)))
  "Returns md5sum for a message object of type '<VehicleCmd>"
  "d13944380411e88decad84bf9d937781")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VehicleCmd)))
  "Returns md5sum for a message object of type 'VehicleCmd"
  "d13944380411e88decad84bf9d937781")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VehicleCmd>)))
  "Returns full string definition for message of type '<VehicleCmd>"
  (cl:format cl:nil "uint8 MODE_MANUAL = 100~%uint8 MODE_AUTO = 101~%~%uint8 OFF = 150              # For horn, left_light and right_light~%uint8 ON = 151               # For horn, left_light and right_light~%~%uint8 TURN_LIGHT_LEFT = 0~%uint8 TURN_LIGHT_RIGHT = 1~%uint8 TURN_LIGHT_BOTH = 2~%uint8 TURN_LIGHT_INVALID = 3~%~%uint8 LIGHT_CLOSE = 0~%uint8 LIGHT_NEAR = 1~%uint8 LIGHT_FAR = 2~%uint8 LIGHT_INVALID = 3~%~%uint8 WIPER_CLOSE = 0~%uint8 WIPER_RUN = 1~%uint8 WIPER_RESERVE = 2~%uint8 WIPER_INVALID = 3~%~%uint8 DOOR_NO_CONTROL = 0~%uint8 DOOR_NORMAL_OPEN = 1~%uint8 DOOR_EMERGENCY_OPEN = 2~%uint8 DOOR_RESERVE = 3~%~%uint8 HORN_NO_CONTROL = 0~%uint8 HORN_OPEN = 1~%~%Header header~%~%uint8 steering_mode~%float64 steering_angle     # -1.0 ~~ 1.0, positive number on the right side~%float64 steering_speed     # 0.0 ~~ 1.0~%~%uint8 throttle_mode~%float64 throttle           # 0.0 ~~ 1.0~%uint8 brake_mode~%float64 brake              # 0.0 ~~ 1.0~%~%float64 acceleration_request   # m/s2~%uint8 acceleration_mode~%~%pncc_msgs/Gear gear~%uint8 gear_mode~%~%uint8 turn_light_mode~%uint8 turn_light            #0:left  1:right  2:both  3:invalid~%~%uint8 light_mode~%uint8 light                 #front light    0:close  1:near light   2:far light  3:invalid~%~%uint8 wiper_mode~%uint8 wiper                 #0:wiper close  1:run wiper  2:reserve  3:invalid~%~%uint8 door_mode~%uint8 door                  #0:no control  1:normal open  2:emergency open  3:reserve~%~%uint8 horn_mode~%uint8 horn               #0:no control  1:open~%~%uint8 auto_driver_cmd~%uint8 e_stop_cmd~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pncc_msgs/Gear~%uint8 GEAR_P = 0~%uint8 GEAR_R = 1~%uint8 GEAR_N = 2~%uint8 GEAR_D = 3~%uint8 GEAR_1 = 4~%uint8 GEAR_2 = 5~%uint8 GEAR_3 = 6~%uint8 GEAR_4 = 7~%uint8 GEAR_5 = 8~%uint8 GEAR_6 = 9~%uint8 GEAR_7 = 10~%uint8 GEAR_8 = 11~%uint8 GEAR_9 = 12~%uint8 GEAR_10 = 13~%uint8 GEAR_11 = 14~%uint8 GEAR_12 = 15~%~%~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VehicleCmd)))
  "Returns full string definition for message of type 'VehicleCmd"
  (cl:format cl:nil "uint8 MODE_MANUAL = 100~%uint8 MODE_AUTO = 101~%~%uint8 OFF = 150              # For horn, left_light and right_light~%uint8 ON = 151               # For horn, left_light and right_light~%~%uint8 TURN_LIGHT_LEFT = 0~%uint8 TURN_LIGHT_RIGHT = 1~%uint8 TURN_LIGHT_BOTH = 2~%uint8 TURN_LIGHT_INVALID = 3~%~%uint8 LIGHT_CLOSE = 0~%uint8 LIGHT_NEAR = 1~%uint8 LIGHT_FAR = 2~%uint8 LIGHT_INVALID = 3~%~%uint8 WIPER_CLOSE = 0~%uint8 WIPER_RUN = 1~%uint8 WIPER_RESERVE = 2~%uint8 WIPER_INVALID = 3~%~%uint8 DOOR_NO_CONTROL = 0~%uint8 DOOR_NORMAL_OPEN = 1~%uint8 DOOR_EMERGENCY_OPEN = 2~%uint8 DOOR_RESERVE = 3~%~%uint8 HORN_NO_CONTROL = 0~%uint8 HORN_OPEN = 1~%~%Header header~%~%uint8 steering_mode~%float64 steering_angle     # -1.0 ~~ 1.0, positive number on the right side~%float64 steering_speed     # 0.0 ~~ 1.0~%~%uint8 throttle_mode~%float64 throttle           # 0.0 ~~ 1.0~%uint8 brake_mode~%float64 brake              # 0.0 ~~ 1.0~%~%float64 acceleration_request   # m/s2~%uint8 acceleration_mode~%~%pncc_msgs/Gear gear~%uint8 gear_mode~%~%uint8 turn_light_mode~%uint8 turn_light            #0:left  1:right  2:both  3:invalid~%~%uint8 light_mode~%uint8 light                 #front light    0:close  1:near light   2:far light  3:invalid~%~%uint8 wiper_mode~%uint8 wiper                 #0:wiper close  1:run wiper  2:reserve  3:invalid~%~%uint8 door_mode~%uint8 door                  #0:no control  1:normal open  2:emergency open  3:reserve~%~%uint8 horn_mode~%uint8 horn               #0:no control  1:open~%~%uint8 auto_driver_cmd~%uint8 e_stop_cmd~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: pncc_msgs/Gear~%uint8 GEAR_P = 0~%uint8 GEAR_R = 1~%uint8 GEAR_N = 2~%uint8 GEAR_D = 3~%uint8 GEAR_1 = 4~%uint8 GEAR_2 = 5~%uint8 GEAR_3 = 6~%uint8 GEAR_4 = 7~%uint8 GEAR_5 = 8~%uint8 GEAR_6 = 9~%uint8 GEAR_7 = 10~%uint8 GEAR_8 = 11~%uint8 GEAR_9 = 12~%uint8 GEAR_10 = 13~%uint8 GEAR_11 = 14~%uint8 GEAR_12 = 15~%~%~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VehicleCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     8
     8
     1
     8
     1
     8
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
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VehicleCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'VehicleCmd
    (cl:cons ':header (header msg))
    (cl:cons ':steering_mode (steering_mode msg))
    (cl:cons ':steering_angle (steering_angle msg))
    (cl:cons ':steering_speed (steering_speed msg))
    (cl:cons ':throttle_mode (throttle_mode msg))
    (cl:cons ':throttle (throttle msg))
    (cl:cons ':brake_mode (brake_mode msg))
    (cl:cons ':brake (brake msg))
    (cl:cons ':acceleration_request (acceleration_request msg))
    (cl:cons ':acceleration_mode (acceleration_mode msg))
    (cl:cons ':gear (gear msg))
    (cl:cons ':gear_mode (gear_mode msg))
    (cl:cons ':turn_light_mode (turn_light_mode msg))
    (cl:cons ':turn_light (turn_light msg))
    (cl:cons ':light_mode (light_mode msg))
    (cl:cons ':light (light msg))
    (cl:cons ':wiper_mode (wiper_mode msg))
    (cl:cons ':wiper (wiper msg))
    (cl:cons ':door_mode (door_mode msg))
    (cl:cons ':door (door msg))
    (cl:cons ':horn_mode (horn_mode msg))
    (cl:cons ':horn (horn msg))
    (cl:cons ':auto_driver_cmd (auto_driver_cmd msg))
    (cl:cons ':e_stop_cmd (e_stop_cmd msg))
))
