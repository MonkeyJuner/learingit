; Auto-generated. Do not edit!


(cl:in-package simulator_msgs-msg)


;//! \htmlinclude Rate.msg.html

(cl:defclass <Rate> (roslisp-msg-protocol:ros-message)
  ((cycle_us
    :reader cycle_us
    :initarg :cycle_us
    :type cl:float
    :initform 0.0)
   (time_rate
    :reader time_rate
    :initarg :time_rate
    :type cl:float
    :initform 0.0))
)

(cl:defclass Rate (<Rate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Rate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Rate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator_msgs-msg:<Rate> is deprecated: use simulator_msgs-msg:Rate instead.")))

(cl:ensure-generic-function 'cycle_us-val :lambda-list '(m))
(cl:defmethod cycle_us-val ((m <Rate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_msgs-msg:cycle_us-val is deprecated.  Use simulator_msgs-msg:cycle_us instead.")
  (cycle_us m))

(cl:ensure-generic-function 'time_rate-val :lambda-list '(m))
(cl:defmethod time_rate-val ((m <Rate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator_msgs-msg:time_rate-val is deprecated.  Use simulator_msgs-msg:time_rate instead.")
  (time_rate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Rate>) ostream)
  "Serializes a message object of type '<Rate>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'cycle_us))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'time_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Rate>) istream)
  "Deserializes a message object of type '<Rate>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cycle_us) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_rate) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Rate>)))
  "Returns string type for a message object of type '<Rate>"
  "simulator_msgs/Rate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Rate)))
  "Returns string type for a message object of type 'Rate"
  "simulator_msgs/Rate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Rate>)))
  "Returns md5sum for a message object of type '<Rate>"
  "785d8d6cbab03eef8403afc2fa066006")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Rate)))
  "Returns md5sum for a message object of type 'Rate"
  "785d8d6cbab03eef8403afc2fa066006")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Rate>)))
  "Returns full string definition for message of type '<Rate>"
  (cl:format cl:nil "float64 cycle_us~%float64 time_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Rate)))
  "Returns full string definition for message of type 'Rate"
  (cl:format cl:nil "float64 cycle_us~%float64 time_rate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Rate>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Rate>))
  "Converts a ROS message object to a list"
  (cl:list 'Rate
    (cl:cons ':cycle_us (cycle_us msg))
    (cl:cons ':time_rate (time_rate msg))
))
