; Auto-generated. Do not edit!


(cl:in-package pnc_msgs-msg)


;//! \htmlinclude Calibrate.msg.html

(cl:defclass <Calibrate> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (count
    :reader count
    :initarg :count
    :type cl:integer
    :initform 0)
   (longitude_dist
    :reader longitude_dist
    :initarg :longitude_dist
    :type cl:float
    :initform 0.0)
   (lateral_dist
    :reader lateral_dist
    :initarg :lateral_dist
    :type cl:float
    :initform 0.0)
   (longitude_thr
    :reader longitude_thr
    :initarg :longitude_thr
    :type cl:float
    :initform 0.0)
   (lateral_thr
    :reader lateral_thr
    :initarg :lateral_thr
    :type cl:float
    :initform 0.0))
)

(cl:defclass Calibrate (<Calibrate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Calibrate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Calibrate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pnc_msgs-msg:<Calibrate> is deprecated: use pnc_msgs-msg:Calibrate instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Calibrate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:header-val is deprecated.  Use pnc_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Calibrate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:id-val is deprecated.  Use pnc_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'count-val :lambda-list '(m))
(cl:defmethod count-val ((m <Calibrate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:count-val is deprecated.  Use pnc_msgs-msg:count instead.")
  (count m))

(cl:ensure-generic-function 'longitude_dist-val :lambda-list '(m))
(cl:defmethod longitude_dist-val ((m <Calibrate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:longitude_dist-val is deprecated.  Use pnc_msgs-msg:longitude_dist instead.")
  (longitude_dist m))

(cl:ensure-generic-function 'lateral_dist-val :lambda-list '(m))
(cl:defmethod lateral_dist-val ((m <Calibrate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:lateral_dist-val is deprecated.  Use pnc_msgs-msg:lateral_dist instead.")
  (lateral_dist m))

(cl:ensure-generic-function 'longitude_thr-val :lambda-list '(m))
(cl:defmethod longitude_thr-val ((m <Calibrate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:longitude_thr-val is deprecated.  Use pnc_msgs-msg:longitude_thr instead.")
  (longitude_thr m))

(cl:ensure-generic-function 'lateral_thr-val :lambda-list '(m))
(cl:defmethod lateral_thr-val ((m <Calibrate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pnc_msgs-msg:lateral_thr-val is deprecated.  Use pnc_msgs-msg:lateral_thr instead.")
  (lateral_thr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Calibrate>) ostream)
  "Serializes a message object of type '<Calibrate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lateral_dist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'longitude_thr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lateral_thr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Calibrate>) istream)
  "Deserializes a message object of type '<Calibrate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'count)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_dist) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'longitude_thr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lateral_thr) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Calibrate>)))
  "Returns string type for a message object of type '<Calibrate>"
  "pnc_msgs/Calibrate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Calibrate)))
  "Returns string type for a message object of type 'Calibrate"
  "pnc_msgs/Calibrate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Calibrate>)))
  "Returns md5sum for a message object of type '<Calibrate>"
  "ae168eb424739dfee5633c98c176c140")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Calibrate)))
  "Returns md5sum for a message object of type 'Calibrate"
  "ae168eb424739dfee5633c98c176c140")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Calibrate>)))
  "Returns full string definition for message of type '<Calibrate>"
  (cl:format cl:nil "Header header~%~%uint32 id~%~%uint32 count~%~%# measure by m, longitudinal distance from target position~%float64 longitude_dist~%~%# meausre by m, lateral distance from target position~%float64 lateral_dist~%~%float64 longitude_thr~%~%float64 lateral_thr~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Calibrate)))
  "Returns full string definition for message of type 'Calibrate"
  (cl:format cl:nil "Header header~%~%uint32 id~%~%uint32 count~%~%# measure by m, longitudinal distance from target position~%float64 longitude_dist~%~%# meausre by m, lateral distance from target position~%float64 lateral_dist~%~%float64 longitude_thr~%~%float64 lateral_thr~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Calibrate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Calibrate>))
  "Converts a ROS message object to a list"
  (cl:list 'Calibrate
    (cl:cons ':header (header msg))
    (cl:cons ':id (id msg))
    (cl:cons ':count (count msg))
    (cl:cons ':longitude_dist (longitude_dist msg))
    (cl:cons ':lateral_dist (lateral_dist msg))
    (cl:cons ':longitude_thr (longitude_thr msg))
    (cl:cons ':lateral_thr (lateral_thr msg))
))
