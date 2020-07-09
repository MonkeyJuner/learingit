; Auto-generated. Do not edit!


(cl:in-package ads_msgs-msg)


;//! \htmlinclude ADSCmdAlert.msg.html

(cl:defclass <ADSCmdAlert> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (code
    :reader code
    :initarg :code
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ADSCmdAlert (<ADSCmdAlert>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ADSCmdAlert>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ADSCmdAlert)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ads_msgs-msg:<ADSCmdAlert> is deprecated: use ads_msgs-msg:ADSCmdAlert instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ADSCmdAlert>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:header-val is deprecated.  Use ads_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'code-val :lambda-list '(m))
(cl:defmethod code-val ((m <ADSCmdAlert>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ads_msgs-msg:code-val is deprecated.  Use ads_msgs-msg:code instead.")
  (code m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ADSCmdAlert>)))
    "Constants for message type '<ADSCmdAlert>"
  '((:NONE . 0)
    (:ALIGNING . 1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ADSCmdAlert)))
    "Constants for message type 'ADSCmdAlert"
  '((:NONE . 0)
    (:ALIGNING . 1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ADSCmdAlert>) ostream)
  "Serializes a message object of type '<ADSCmdAlert>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ADSCmdAlert>) istream)
  "Deserializes a message object of type '<ADSCmdAlert>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'code)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ADSCmdAlert>)))
  "Returns string type for a message object of type '<ADSCmdAlert>"
  "ads_msgs/ADSCmdAlert")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ADSCmdAlert)))
  "Returns string type for a message object of type 'ADSCmdAlert"
  "ads_msgs/ADSCmdAlert")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ADSCmdAlert>)))
  "Returns md5sum for a message object of type '<ADSCmdAlert>"
  "f598337d84289df261d60f9a2aa46008")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ADSCmdAlert)))
  "Returns md5sum for a message object of type 'ADSCmdAlert"
  "f598337d84289df261d60f9a2aa46008")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ADSCmdAlert>)))
  "Returns full string definition for message of type '<ADSCmdAlert>"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 ALIGNING = 1~%~%Header header~%~%uint8 code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ADSCmdAlert)))
  "Returns full string definition for message of type 'ADSCmdAlert"
  (cl:format cl:nil "uint8 NONE = 0~%uint8 ALIGNING = 1~%~%Header header~%~%uint8 code~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ADSCmdAlert>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ADSCmdAlert>))
  "Converts a ROS message object to a list"
  (cl:list 'ADSCmdAlert
    (cl:cons ':header (header msg))
    (cl:cons ':code (code msg))
))
