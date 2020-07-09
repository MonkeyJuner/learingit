; Auto-generated. Do not edit!


(cl:in-package diagnose_msgs-msg)


;//! \htmlinclude DiagnoseInfo.msg.html

(cl:defclass <DiagnoseInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (info
    :reader info
    :initarg :info
    :type (cl:vector diagnose_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'diagnose_msgs-msg:KeyValue :initial-element (cl:make-instance 'diagnose_msgs-msg:KeyValue))))
)

(cl:defclass DiagnoseInfo (<DiagnoseInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DiagnoseInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DiagnoseInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name diagnose_msgs-msg:<DiagnoseInfo> is deprecated: use diagnose_msgs-msg:DiagnoseInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DiagnoseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnose_msgs-msg:header-val is deprecated.  Use diagnose_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <DiagnoseInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader diagnose_msgs-msg:info-val is deprecated.  Use diagnose_msgs-msg:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DiagnoseInfo>) ostream)
  "Serializes a message object of type '<DiagnoseInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DiagnoseInfo>) istream)
  "Deserializes a message object of type '<DiagnoseInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'info) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'info)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'diagnose_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DiagnoseInfo>)))
  "Returns string type for a message object of type '<DiagnoseInfo>"
  "diagnose_msgs/DiagnoseInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DiagnoseInfo)))
  "Returns string type for a message object of type 'DiagnoseInfo"
  "diagnose_msgs/DiagnoseInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DiagnoseInfo>)))
  "Returns md5sum for a message object of type '<DiagnoseInfo>"
  "ecf4f64dfac71777a8f1304607bbee65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DiagnoseInfo)))
  "Returns md5sum for a message object of type 'DiagnoseInfo"
  "ecf4f64dfac71777a8f1304607bbee65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DiagnoseInfo>)))
  "Returns full string definition for message of type '<DiagnoseInfo>"
  (cl:format cl:nil "Header header~%~%KeyValue[] info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: diagnose_msgs/KeyValue~%~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DiagnoseInfo)))
  "Returns full string definition for message of type 'DiagnoseInfo"
  (cl:format cl:nil "Header header~%~%KeyValue[] info~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: diagnose_msgs/KeyValue~%~%string key~%string value~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DiagnoseInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'info) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DiagnoseInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'DiagnoseInfo
    (cl:cons ':header (header msg))
    (cl:cons ':info (info msg))
))
