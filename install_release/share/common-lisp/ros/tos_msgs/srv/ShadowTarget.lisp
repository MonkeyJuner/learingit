; Auto-generated. Do not edit!


(cl:in-package tos_msgs-srv)


;//! \htmlinclude ShadowTarget-request.msg.html

(cl:defclass <ShadowTarget-request> (roslisp-msg-protocol:ros-message)
  ((truck_target
    :reader truck_target
    :initarg :truck_target
    :type tos_msgs-msg:TruckTarget
    :initform (cl:make-instance 'tos_msgs-msg:TruckTarget)))
)

(cl:defclass ShadowTarget-request (<ShadowTarget-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShadowTarget-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShadowTarget-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-srv:<ShadowTarget-request> is deprecated: use tos_msgs-srv:ShadowTarget-request instead.")))

(cl:ensure-generic-function 'truck_target-val :lambda-list '(m))
(cl:defmethod truck_target-val ((m <ShadowTarget-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-srv:truck_target-val is deprecated.  Use tos_msgs-srv:truck_target instead.")
  (truck_target m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShadowTarget-request>) ostream)
  "Serializes a message object of type '<ShadowTarget-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'truck_target) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShadowTarget-request>) istream)
  "Deserializes a message object of type '<ShadowTarget-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'truck_target) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShadowTarget-request>)))
  "Returns string type for a service object of type '<ShadowTarget-request>"
  "tos_msgs/ShadowTargetRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowTarget-request)))
  "Returns string type for a service object of type 'ShadowTarget-request"
  "tos_msgs/ShadowTargetRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShadowTarget-request>)))
  "Returns md5sum for a message object of type '<ShadowTarget-request>"
  "c8f1f473ae1dd2b6970b5ebd559b96a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShadowTarget-request)))
  "Returns md5sum for a message object of type 'ShadowTarget-request"
  "c8f1f473ae1dd2b6970b5ebd559b96a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShadowTarget-request>)))
  "Returns full string definition for message of type '<ShadowTarget-request>"
  (cl:format cl:nil "TruckTarget truck_target~%~%~%================================================================================~%MSG: tos_msgs/TruckTarget~%# command type~%uint8 START_FROM      = 0~%uint8 ARRIVE_AT       = 1~%~%# operate type~%uint8 LOAD	= 0~%uint8 UNLOAD	= 1~%~%~%Header header~%~%# truck id~%string cheid~%~%# task id~%uint32 task_id~%uint16 sub_task_id~%~%# taget info~%TargetInfo[] targets~%~%# display message~%string display_msg~%~%# operate~%uint8 operate_type~%~%# for test~%uint8 command_type~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TargetInfo~%# target type~%uint8 NORMAL_YARD_CRANE         = 0~%uint8 AUTOMATIC_YARD_CRANE      = 1~%uint8 GANTRY_CRANE      	= 2~%uint8 TRANSFER_ZONE      	= 3~%~%# target~%uint8 target_type~%~%# target info~%string section~%string bay~%string transfer_zone~%~%string gantry_crane_id~%string lane_id~%~%# container~%Container container~%~%# move stage~%string move_stage~%~%# for test~%string ppos~%~%================================================================================~%MSG: tos_msgs/Container~%string container_id~%uint8 container_size~%int32 container_weight~%uint8 container_pos ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShadowTarget-request)))
  "Returns full string definition for message of type 'ShadowTarget-request"
  (cl:format cl:nil "TruckTarget truck_target~%~%~%================================================================================~%MSG: tos_msgs/TruckTarget~%# command type~%uint8 START_FROM      = 0~%uint8 ARRIVE_AT       = 1~%~%# operate type~%uint8 LOAD	= 0~%uint8 UNLOAD	= 1~%~%~%Header header~%~%# truck id~%string cheid~%~%# task id~%uint32 task_id~%uint16 sub_task_id~%~%# taget info~%TargetInfo[] targets~%~%# display message~%string display_msg~%~%# operate~%uint8 operate_type~%~%# for test~%uint8 command_type~%int32 send_packet_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: tos_msgs/TargetInfo~%# target type~%uint8 NORMAL_YARD_CRANE         = 0~%uint8 AUTOMATIC_YARD_CRANE      = 1~%uint8 GANTRY_CRANE      	= 2~%uint8 TRANSFER_ZONE      	= 3~%~%# target~%uint8 target_type~%~%# target info~%string section~%string bay~%string transfer_zone~%~%string gantry_crane_id~%string lane_id~%~%# container~%Container container~%~%# move stage~%string move_stage~%~%# for test~%string ppos~%~%================================================================================~%MSG: tos_msgs/Container~%string container_id~%uint8 container_size~%int32 container_weight~%uint8 container_pos ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShadowTarget-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'truck_target))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShadowTarget-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ShadowTarget-request
    (cl:cons ':truck_target (truck_target msg))
))
;//! \htmlinclude ShadowTarget-response.msg.html

(cl:defclass <ShadowTarget-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ShadowTarget-response (<ShadowTarget-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ShadowTarget-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ShadowTarget-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name tos_msgs-srv:<ShadowTarget-response> is deprecated: use tos_msgs-srv:ShadowTarget-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ShadowTarget-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader tos_msgs-srv:status-val is deprecated.  Use tos_msgs-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ShadowTarget-response>) ostream)
  "Serializes a message object of type '<ShadowTarget-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ShadowTarget-response>) istream)
  "Deserializes a message object of type '<ShadowTarget-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ShadowTarget-response>)))
  "Returns string type for a service object of type '<ShadowTarget-response>"
  "tos_msgs/ShadowTargetResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowTarget-response)))
  "Returns string type for a service object of type 'ShadowTarget-response"
  "tos_msgs/ShadowTargetResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ShadowTarget-response>)))
  "Returns md5sum for a message object of type '<ShadowTarget-response>"
  "c8f1f473ae1dd2b6970b5ebd559b96a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ShadowTarget-response)))
  "Returns md5sum for a message object of type 'ShadowTarget-response"
  "c8f1f473ae1dd2b6970b5ebd559b96a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ShadowTarget-response>)))
  "Returns full string definition for message of type '<ShadowTarget-response>"
  (cl:format cl:nil "~%uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ShadowTarget-response)))
  "Returns full string definition for message of type 'ShadowTarget-response"
  (cl:format cl:nil "~%uint8 status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ShadowTarget-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ShadowTarget-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ShadowTarget-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ShadowTarget)))
  'ShadowTarget-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ShadowTarget)))
  'ShadowTarget-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ShadowTarget)))
  "Returns string type for a service object of type '<ShadowTarget>"
  "tos_msgs/ShadowTarget")