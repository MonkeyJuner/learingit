; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude Map.msg.html

(cl:defclass <Map> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (sections
    :reader sections
    :initarg :sections
    :type (cl:vector hadmap_msgs-msg:Section)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:Section :initial-element (cl:make-instance 'hadmap_msgs-msg:Section)))
   (task_id
    :reader task_id
    :initarg :task_id
    :type cl:integer
    :initform 0))
)

(cl:defclass Map (<Map>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Map>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Map)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<Map> is deprecated: use hadmap_msgs-msg:Map instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:header-val is deprecated.  Use hadmap_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'sections-val :lambda-list '(m))
(cl:defmethod sections-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:sections-val is deprecated.  Use hadmap_msgs-msg:sections instead.")
  (sections m))

(cl:ensure-generic-function 'task_id-val :lambda-list '(m))
(cl:defmethod task_id-val ((m <Map>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:task_id-val is deprecated.  Use hadmap_msgs-msg:task_id instead.")
  (task_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Map>) ostream)
  "Serializes a message object of type '<Map>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'sections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'sections))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Map>) istream)
  "Deserializes a message object of type '<Map>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'sections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'sections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:Section))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_id)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Map>)))
  "Returns string type for a message object of type '<Map>"
  "hadmap_msgs/Map")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Map)))
  "Returns string type for a message object of type 'Map"
  "hadmap_msgs/Map")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Map>)))
  "Returns md5sum for a message object of type '<Map>"
  "a662a7aab241551bdda9dfc4dc1570e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Map)))
  "Returns md5sum for a message object of type 'Map"
  "a662a7aab241551bdda9dfc4dc1570e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Map>)))
  "Returns full string definition for message of type '<Map>"
  (cl:format cl:nil "Header header~%Section[] sections~%uint32 task_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hadmap_msgs/Section~%uint8 TYPE_NORMAL = 0~%uint8 TYPE_CROSS_BEFORE = 1~%uint8 TYPE_CROSS_AFTER = 2~%uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3~%~%int32 id~%Lane[] lanes~%int32[] predecessors~%int32[] successors~%uint8 type # ~%~%float64[] stop_distances~%~%================================================================================~%MSG: hadmap_msgs/Lane~%int32 id~%~%Point pt_start~%Point pt_end~%~%int32[] predecessors~%int32[] successors~%~%Point[] pts_center~%Point[] pts_left~%Point[] pts_right~%~%float64[] len_integral~%~%float64 speed_limit~%~%## not used~%uint8 line_left_type~%uint8 line_right_type~%~%## dynamic~%int32 resign_id~%float32 residual_len~%~%================================================================================~%MSG: hadmap_msgs/Point~%int32 id~%~%geometry_msgs/Point point~%~%## not used~%~%float32 heading~%float64 delta_s~%uint8 property~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Map)))
  "Returns full string definition for message of type 'Map"
  (cl:format cl:nil "Header header~%Section[] sections~%uint32 task_id~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: hadmap_msgs/Section~%uint8 TYPE_NORMAL = 0~%uint8 TYPE_CROSS_BEFORE = 1~%uint8 TYPE_CROSS_AFTER = 2~%uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3~%~%int32 id~%Lane[] lanes~%int32[] predecessors~%int32[] successors~%uint8 type # ~%~%float64[] stop_distances~%~%================================================================================~%MSG: hadmap_msgs/Lane~%int32 id~%~%Point pt_start~%Point pt_end~%~%int32[] predecessors~%int32[] successors~%~%Point[] pts_center~%Point[] pts_left~%Point[] pts_right~%~%float64[] len_integral~%~%float64 speed_limit~%~%## not used~%uint8 line_left_type~%uint8 line_right_type~%~%## dynamic~%int32 resign_id~%float32 residual_len~%~%================================================================================~%MSG: hadmap_msgs/Point~%int32 id~%~%geometry_msgs/Point point~%~%## not used~%~%float32 heading~%float64 delta_s~%uint8 property~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Map>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'sections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Map>))
  "Converts a ROS message object to a list"
  (cl:list 'Map
    (cl:cons ':header (header msg))
    (cl:cons ':sections (sections msg))
    (cl:cons ':task_id (task_id msg))
))
