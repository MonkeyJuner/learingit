; Auto-generated. Do not edit!


(cl:in-package pncc_msgs-msg)


;//! \htmlinclude Gear.msg.html

(cl:defclass <Gear> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Gear (<Gear>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Gear>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Gear)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pncc_msgs-msg:<Gear> is deprecated: use pncc_msgs-msg:Gear instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <Gear>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pncc_msgs-msg:value-val is deprecated.  Use pncc_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<Gear>)))
    "Constants for message type '<Gear>"
  '((:GEAR_P . 0)
    (:GEAR_R . 1)
    (:GEAR_N . 2)
    (:GEAR_D . 3)
    (:GEAR_1 . 4)
    (:GEAR_2 . 5)
    (:GEAR_3 . 6)
    (:GEAR_4 . 7)
    (:GEAR_5 . 8)
    (:GEAR_6 . 9)
    (:GEAR_7 . 10)
    (:GEAR_8 . 11)
    (:GEAR_9 . 12)
    (:GEAR_10 . 13)
    (:GEAR_11 . 14)
    (:GEAR_12 . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'Gear)))
    "Constants for message type 'Gear"
  '((:GEAR_P . 0)
    (:GEAR_R . 1)
    (:GEAR_N . 2)
    (:GEAR_D . 3)
    (:GEAR_1 . 4)
    (:GEAR_2 . 5)
    (:GEAR_3 . 6)
    (:GEAR_4 . 7)
    (:GEAR_5 . 8)
    (:GEAR_6 . 9)
    (:GEAR_7 . 10)
    (:GEAR_8 . 11)
    (:GEAR_9 . 12)
    (:GEAR_10 . 13)
    (:GEAR_11 . 14)
    (:GEAR_12 . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Gear>) ostream)
  "Serializes a message object of type '<Gear>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Gear>) istream)
  "Deserializes a message object of type '<Gear>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Gear>)))
  "Returns string type for a message object of type '<Gear>"
  "pncc_msgs/Gear")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Gear)))
  "Returns string type for a message object of type 'Gear"
  "pncc_msgs/Gear")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Gear>)))
  "Returns md5sum for a message object of type '<Gear>"
  "7c8b6d8644724f061fa1138ce21b31f0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Gear)))
  "Returns md5sum for a message object of type 'Gear"
  "7c8b6d8644724f061fa1138ce21b31f0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Gear>)))
  "Returns full string definition for message of type '<Gear>"
  (cl:format cl:nil "uint8 GEAR_P = 0~%uint8 GEAR_R = 1~%uint8 GEAR_N = 2~%uint8 GEAR_D = 3~%uint8 GEAR_1 = 4~%uint8 GEAR_2 = 5~%uint8 GEAR_3 = 6~%uint8 GEAR_4 = 7~%uint8 GEAR_5 = 8~%uint8 GEAR_6 = 9~%uint8 GEAR_7 = 10~%uint8 GEAR_8 = 11~%uint8 GEAR_9 = 12~%uint8 GEAR_10 = 13~%uint8 GEAR_11 = 14~%uint8 GEAR_12 = 15~%~%~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Gear)))
  "Returns full string definition for message of type 'Gear"
  (cl:format cl:nil "uint8 GEAR_P = 0~%uint8 GEAR_R = 1~%uint8 GEAR_N = 2~%uint8 GEAR_D = 3~%uint8 GEAR_1 = 4~%uint8 GEAR_2 = 5~%uint8 GEAR_3 = 6~%uint8 GEAR_4 = 7~%uint8 GEAR_5 = 8~%uint8 GEAR_6 = 9~%uint8 GEAR_7 = 10~%uint8 GEAR_8 = 11~%uint8 GEAR_9 = 12~%uint8 GEAR_10 = 13~%uint8 GEAR_11 = 14~%uint8 GEAR_12 = 15~%~%~%uint8 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Gear>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Gear>))
  "Converts a ROS message object to a list"
  (cl:list 'Gear
    (cl:cons ':value (value msg))
))
