; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude Region.msg.html

(cl:defclass <Region> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (type
    :reader type
    :initarg :type
    :type cl:integer
    :initform 0)
   (turn_type
    :reader turn_type
    :initarg :turn_type
    :type cl:integer
    :initform 0)
   (width_btw_barriers
    :reader width_btw_barriers
    :initarg :width_btw_barriers
    :type cl:float
    :initform 0.0)
   (is_lockzone_ahead
    :reader is_lockzone_ahead
    :initarg :is_lockzone_ahead
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Region (<Region>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Region>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Region)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<Region> is deprecated: use hadmap_msgs-msg:Region instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:header-val is deprecated.  Use hadmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:type-val is deprecated.  Use hadmap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'turn_type-val :lambda-list '(m))
(cl:defmethod turn_type-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:turn_type-val is deprecated.  Use hadmap_msgs-msg:turn_type instead.")
  (turn_type m))

(cl:ensure-generic-function 'width_btw_barriers-val :lambda-list '(m))
(cl:defmethod width_btw_barriers-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:width_btw_barriers-val is deprecated.  Use hadmap_msgs-msg:width_btw_barriers instead.")
  (width_btw_barriers m))

(cl:ensure-generic-function 'is_lockzone_ahead-val :lambda-list '(m))
(cl:defmethod is_lockzone_ahead-val ((m <Region>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:is_lockzone_ahead-val is deprecated.  Use hadmap_msgs-msg:is_lockzone_ahead instead.")
  (is_lockzone_ahead m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Region>)))
    "Constants for message type '<Region>"
  '((:TYPE_NORMAL . 0)
    (:TYPE_SEASIDE . 1)
    (:TYPE_YARD . 2)
    (:TYPE_NO_TURN . 0)
    (:TYPE_LEFT_TURN . 1)
    (:TYPE_RIGHT_TURN . 2)
    (:TYPE_U_TURN . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Region)))
    "Constants for message type 'Region"
  '((:TYPE_NORMAL . 0)
    (:TYPE_SEASIDE . 1)
    (:TYPE_YARD . 2)
    (:TYPE_NO_TURN . 0)
    (:TYPE_LEFT_TURN . 1)
    (:TYPE_RIGHT_TURN . 2)
    (:TYPE_U_TURN . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Region>) ostream)
  "Serializes a message object of type '<Region>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'turn_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width_btw_barriers))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_lockzone_ahead) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Region>) istream)
  "Deserializes a message object of type '<Region>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'turn_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width_btw_barriers) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'is_lockzone_ahead) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Region>)))
  "Returns string type for a message object of type '<Region>"
  "hadmap_msgs/Region")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Region)))
  "Returns string type for a message object of type 'Region"
  "hadmap_msgs/Region")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Region>)))
  "Returns md5sum for a message object of type '<Region>"
  "88d27f36beb9074b467382db9b323a15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Region)))
  "Returns md5sum for a message object of type 'Region"
  "88d27f36beb9074b467382db9b323a15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Region>)))
  "Returns full string definition for message of type '<Region>"
  (cl:format cl:nil "uint8 TYPE_NORMAL = 0~%uint8 TYPE_SEASIDE = 1~%uint8 TYPE_YARD = 2~%~%uint8 TYPE_NO_TURN = 0~%uint8 TYPE_LEFT_TURN = 1~%uint8 TYPE_RIGHT_TURN = 2~%uint8 TYPE_U_TURN = 3~%~%Header header~%int32 type~%int32 turn_type~%float32 width_btw_barriers~%bool is_lockzone_ahead~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Region)))
  "Returns full string definition for message of type 'Region"
  (cl:format cl:nil "uint8 TYPE_NORMAL = 0~%uint8 TYPE_SEASIDE = 1~%uint8 TYPE_YARD = 2~%~%uint8 TYPE_NO_TURN = 0~%uint8 TYPE_LEFT_TURN = 1~%uint8 TYPE_RIGHT_TURN = 2~%uint8 TYPE_U_TURN = 3~%~%Header header~%int32 type~%int32 turn_type~%float32 width_btw_barriers~%bool is_lockzone_ahead~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Region>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Region>))
  "Converts a ROS message object to a list"
  (cl:list 'Region
    (cl:cons ':header (header msg))
    (cl:cons ':type (type msg))
    (cl:cons ':turn_type (turn_type msg))
    (cl:cons ':width_btw_barriers (width_btw_barriers msg))
    (cl:cons ':is_lockzone_ahead (is_lockzone_ahead msg))
))
