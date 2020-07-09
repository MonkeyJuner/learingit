; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude Section.msg.html

(cl:defclass <Section> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (lanes
    :reader lanes
    :initarg :lanes
    :type (cl:vector hadmap_msgs-msg:Lane)
   :initform (cl:make-array 0 :element-type 'hadmap_msgs-msg:Lane :initial-element (cl:make-instance 'hadmap_msgs-msg:Lane)))
   (predecessors
    :reader predecessors
    :initarg :predecessors
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (successors
    :reader successors
    :initarg :successors
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (type
    :reader type
    :initarg :type
    :type cl:fixnum
    :initform 0)
   (stop_distances
    :reader stop_distances
    :initarg :stop_distances
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Section (<Section>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Section>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Section)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<Section> is deprecated: use hadmap_msgs-msg:Section instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:id-val is deprecated.  Use hadmap_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'lanes-val :lambda-list '(m))
(cl:defmethod lanes-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:lanes-val is deprecated.  Use hadmap_msgs-msg:lanes instead.")
  (lanes m))

(cl:ensure-generic-function 'predecessors-val :lambda-list '(m))
(cl:defmethod predecessors-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:predecessors-val is deprecated.  Use hadmap_msgs-msg:predecessors instead.")
  (predecessors m))

(cl:ensure-generic-function 'successors-val :lambda-list '(m))
(cl:defmethod successors-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:successors-val is deprecated.  Use hadmap_msgs-msg:successors instead.")
  (successors m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:type-val is deprecated.  Use hadmap_msgs-msg:type instead.")
  (type m))

(cl:ensure-generic-function 'stop_distances-val :lambda-list '(m))
(cl:defmethod stop_distances-val ((m <Section>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hadmap_msgs-msg:stop_distances-val is deprecated.  Use hadmap_msgs-msg:stop_distances instead.")
  (stop_distances m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Section>)))
    "Constants for message type '<Section>"
  '((:TYPE_NORMAL . 0)
    (:TYPE_CROSS_BEFORE . 1)
    (:TYPE_CROSS_AFTER . 2)
    (:TYPE_CROSS_BEFORE_AND_AFTER . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Section)))
    "Constants for message type 'Section"
  '((:TYPE_NORMAL . 0)
    (:TYPE_CROSS_BEFORE . 1)
    (:TYPE_CROSS_AFTER . 2)
    (:TYPE_CROSS_BEFORE_AND_AFTER . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Section>) ostream)
  "Serializes a message object of type '<Section>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lanes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lanes))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'predecessors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'predecessors))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'successors))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'successors))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'stop_distances))))
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
   (cl:slot-value msg 'stop_distances))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Section>) istream)
  "Deserializes a message object of type '<Section>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lanes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lanes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hadmap_msgs-msg:Lane))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'predecessors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'predecessors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'successors) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'successors)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'type)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'stop_distances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'stop_distances)))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Section>)))
  "Returns string type for a message object of type '<Section>"
  "hadmap_msgs/Section")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Section)))
  "Returns string type for a message object of type 'Section"
  "hadmap_msgs/Section")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Section>)))
  "Returns md5sum for a message object of type '<Section>"
  "9c159119e0202171ae854a4c79c42cd7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Section)))
  "Returns md5sum for a message object of type 'Section"
  "9c159119e0202171ae854a4c79c42cd7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Section>)))
  "Returns full string definition for message of type '<Section>"
  (cl:format cl:nil "uint8 TYPE_NORMAL = 0~%uint8 TYPE_CROSS_BEFORE = 1~%uint8 TYPE_CROSS_AFTER = 2~%uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3~%~%int32 id~%Lane[] lanes~%int32[] predecessors~%int32[] successors~%uint8 type # ~%~%float64[] stop_distances~%~%================================================================================~%MSG: hadmap_msgs/Lane~%int32 id~%~%Point pt_start~%Point pt_end~%~%int32[] predecessors~%int32[] successors~%~%Point[] pts_center~%Point[] pts_left~%Point[] pts_right~%~%float64[] len_integral~%~%float64 speed_limit~%~%## not used~%uint8 line_left_type~%uint8 line_right_type~%~%## dynamic~%int32 resign_id~%float32 residual_len~%~%================================================================================~%MSG: hadmap_msgs/Point~%int32 id~%~%geometry_msgs/Point point~%~%## not used~%~%float32 heading~%float64 delta_s~%uint8 property~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Section)))
  "Returns full string definition for message of type 'Section"
  (cl:format cl:nil "uint8 TYPE_NORMAL = 0~%uint8 TYPE_CROSS_BEFORE = 1~%uint8 TYPE_CROSS_AFTER = 2~%uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3~%~%int32 id~%Lane[] lanes~%int32[] predecessors~%int32[] successors~%uint8 type # ~%~%float64[] stop_distances~%~%================================================================================~%MSG: hadmap_msgs/Lane~%int32 id~%~%Point pt_start~%Point pt_end~%~%int32[] predecessors~%int32[] successors~%~%Point[] pts_center~%Point[] pts_left~%Point[] pts_right~%~%float64[] len_integral~%~%float64 speed_limit~%~%## not used~%uint8 line_left_type~%uint8 line_right_type~%~%## dynamic~%int32 resign_id~%float32 residual_len~%~%================================================================================~%MSG: hadmap_msgs/Point~%int32 id~%~%geometry_msgs/Point point~%~%## not used~%~%float32 heading~%float64 delta_s~%uint8 property~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Section>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lanes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'predecessors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'successors) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'stop_distances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Section>))
  "Converts a ROS message object to a list"
  (cl:list 'Section
    (cl:cons ':id (id msg))
    (cl:cons ':lanes (lanes msg))
    (cl:cons ':predecessors (predecessors msg))
    (cl:cons ':successors (successors msg))
    (cl:cons ':type (type msg))
    (cl:cons ':stop_distances (stop_distances msg))
))
