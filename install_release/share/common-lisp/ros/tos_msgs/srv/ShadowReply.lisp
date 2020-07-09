; Auto-generated. Do not edit!


(cl:in-package tos_msgs-srv)


;//! \htmlinclude ShadowReply-request.msg.html

(cl:defclass <ShadowReply-request> (roslisp-msg-protocol:ros-message)
  ((truck_command
    :reader truck_command
    :initarg :truck_command
    :type tos_msgs-msg:TruckCommand
    :initform (cl:make-instance 'tos_msgs-msg:TruckCommand)))
)

(cl:defclass ShadowReply-request (<ShadowReply-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShadowReply-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShadowReply-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-srv:<ShadowReply-request> is deprecated: use tos_msgs-srv:ShadowReply-request instead.")))

(cl:ensure-generic-function 'truck_command-val :lambda-list '(m))
(cl:defmethod truck_command-val ((m <ShadowReply-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-srv:truck_command-val is deprecated.  Use tos_msgs-srv:truck_command instead.")
  (truck_command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShadowReply-request>) ostream)
  "Serializes a message object of type '<ShadowReply-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'truck_command) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShadowReply-request>) istream)
  "Deserializes a message object of type '<ShadowReply-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'truck_command) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShadowReply-request>)))
  "Returns string type for a service object of type '<ShadowReply-request>"
  "tos_msgs/ShadowReplyRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowReply-request)))
  "Returns string type for a service object of type 'ShadowReply-request"
  "tos_msgs/ShadowReplyRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShadowReply-request>)))
  "Returns md5sum for a message object of type '<ShadowReply-request>"
  "a1ee2e3e7e332f4cc76fbd43af36a624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShadowReply-request)))
  "Returns md5sum for a message object of type 'ShadowReply-request"
  "a1ee2e3e7e332f4cc76fbd43af36a624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShadowReply-request>)))
  "Returns full string definition for message of type '<ShadowReply-request>"
  (cl:format cl:nil "TruckCommand truck_command~%~%~%================================================================================~%MSG: tos_msgs/TruckCommand~%# confirm type~%uint8 CONFIRM         = 1~%uint8 REFRESH         = 2~%~%Header header~%~%# task id~%uint32 task_id~%~%uint8 confirm_type~%~%~%# for test~%string cheid~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShadowReply-request)))
  "Returns full string definition for message of type 'ShadowReply-request"
  (cl:format cl:nil "TruckCommand truck_command~%~%~%================================================================================~%MSG: tos_msgs/TruckCommand~%# confirm type~%uint8 CONFIRM         = 1~%uint8 REFRESH         = 2~%~%Header header~%~%# task id~%uint32 task_id~%~%uint8 confirm_type~%~%~%# for test~%string cheid~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShadowReply-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'truck_command))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShadowReply-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShadowReply-request
    (cl:cons ':truck_command (truck_command msg))
))
;//! \htmlinclude ShadowReply-response.msg.html

(cl:defclass <ShadowReply-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ShadowReply-response (<ShadowReply-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShadowReply-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShadowReply-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-srv:<ShadowReply-response> is deprecated: use tos_msgs-srv:ShadowReply-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ShadowReply-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-srv:status-val is deprecated.  Use tos_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShadowReply-response>) ostream)
  "Serializes a message object of type '<ShadowReply-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShadowReply-response>) istream)
  "Deserializes a message object of type '<ShadowReply-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShadowReply-response>)))
  "Returns string type for a service object of type '<ShadowReply-response>"
  "tos_msgs/ShadowReplyResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowReply-response)))
  "Returns string type for a service object of type 'ShadowReply-response"
  "tos_msgs/ShadowReplyResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShadowReply-response>)))
  "Returns md5sum for a message object of type '<ShadowReply-response>"
  "a1ee2e3e7e332f4cc76fbd43af36a624")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShadowReply-response)))
  "Returns md5sum for a message object of type 'ShadowReply-response"
  "a1ee2e3e7e332f4cc76fbd43af36a624")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShadowReply-response>)))
  "Returns full string definition for message of type '<ShadowReply-response>"
  (cl:format cl:nil "~%uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShadowReply-response)))
  "Returns full string definition for message of type 'ShadowReply-response"
  (cl:format cl:nil "~%uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShadowReply-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShadowReply-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShadowReply-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShadowReply)))
  'ShadowReply-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShadowReply)))
  'ShadowReply-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowReply)))
  "Returns string type for a service object of type '<ShadowReply>"
  "tos_msgs/ShadowReply")