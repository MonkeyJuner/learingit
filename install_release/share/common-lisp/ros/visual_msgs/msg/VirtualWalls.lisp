; Auto-generated. Do not edit!


(cl:in-package visual_msgs-msg)


;//! \htmlinclude VirtualWalls.msg.html

(cl:defclass <VirtualWalls> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (walls
    :reader walls
    :initarg :walls
    :type (cl:vector visual_msgs-msg:VirtualWall)
   :initform (cl:make-array 0 :element-type 'visual_msgs-msg:VirtualWall :initial-element (cl:make-instance 'visual_msgs-msg:VirtualWall))))
)

(cl:defclass VirtualWalls (<VirtualWalls>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VirtualWalls>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VirtualWalls)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visual_msgs-msg:<VirtualWalls> is deprecated: use visual_msgs-msg:VirtualWalls instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VirtualWalls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_msgs-msg:header-val is deprecated.  Use visual_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'walls-val :lambda-list '(m))
(cl:defmethod walls-val ((m <VirtualWalls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_msgs-msg:walls-val is deprecated.  Use visual_msgs-msg:walls instead.")
  (walls m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VirtualWalls>) ostream)
  "Serializes a message object of type '<VirtualWalls>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'walls))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'walls))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VirtualWalls>) istream)
  "Deserializes a message object of type '<VirtualWalls>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'walls) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'walls)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'visual_msgs-msg:VirtualWall))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VirtualWalls>)))
  "Returns string type for a message object of type '<VirtualWalls>"
  "visual_msgs/VirtualWalls")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VirtualWalls)))
  "Returns string type for a message object of type 'VirtualWalls"
  "visual_msgs/VirtualWalls")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VirtualWalls>)))
  "Returns md5sum for a message object of type '<VirtualWalls>"
  "eeccf1d1abd9782305d24f6691c59a03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VirtualWalls)))
  "Returns md5sum for a message object of type 'VirtualWalls"
  "eeccf1d1abd9782305d24f6691c59a03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VirtualWalls>)))
  "Returns full string definition for message of type '<VirtualWalls>"
  (cl:format cl:nil "Header header~%~%visual_msgs/VirtualWall[] walls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: visual_msgs/VirtualWall~%uint8 UNCLASSIFIED          = 0~%uint8 STOP_SIGN_ABSOLUTE    = 1~%uint8 STOP_SIGN_RELATIVE    = 2~%uint8 OBJECT                = 3~%uint8 OBJECT_VIRTUAL        = 4~%uint8 OBJECT_CLOSE          = 5~%uint8 OGM                   = 6~%uint8 HMAP_SPEED_LIMIT      = 7~%uint8 CURV_SPEED_LIMIT      = 8~%uint8 LONGITUDE_CMD         = 9~%~%uint8   type~%uint32  id~%float64 distance~%float64 speed~%~%float64 x           # Optional~%float64 y           # Optional~%float64 z           # Optional~%float64 heading     # Optional~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VirtualWalls)))
  "Returns full string definition for message of type 'VirtualWalls"
  (cl:format cl:nil "Header header~%~%visual_msgs/VirtualWall[] walls~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: visual_msgs/VirtualWall~%uint8 UNCLASSIFIED          = 0~%uint8 STOP_SIGN_ABSOLUTE    = 1~%uint8 STOP_SIGN_RELATIVE    = 2~%uint8 OBJECT                = 3~%uint8 OBJECT_VIRTUAL        = 4~%uint8 OBJECT_CLOSE          = 5~%uint8 OGM                   = 6~%uint8 HMAP_SPEED_LIMIT      = 7~%uint8 CURV_SPEED_LIMIT      = 8~%uint8 LONGITUDE_CMD         = 9~%~%uint8   type~%uint32  id~%float64 distance~%float64 speed~%~%float64 x           # Optional~%float64 y           # Optional~%float64 z           # Optional~%float64 heading     # Optional~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VirtualWalls>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'walls) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VirtualWalls>))
  "Converts a ROS message object to a list"
  (cl:list 'VirtualWalls
    (cl:cons ':header (header msg))
    (cl:cons ':walls (walls msg))
))
