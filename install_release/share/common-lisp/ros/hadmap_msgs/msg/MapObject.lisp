; Auto-generated. Do not edit!


(cl:in-package hadmap_msgs-msg)


;//! \htmlinclude MapObject.msg.html

(cl:defclass <MapObject> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass MapObject (<MapObject>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MapObject>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MapObject)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hadmap_msgs-msg:<MapObject> is deprecated: use hadmap_msgs-msg:MapObject instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MapObject>) ostream)
  "Serializes a message object of type '<MapObject>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MapObject>) istream)
  "Deserializes a message object of type '<MapObject>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MapObject>)))
  "Returns string type for a message object of type '<MapObject>"
  "hadmap_msgs/MapObject")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MapObject)))
  "Returns string type for a message object of type 'MapObject"
  "hadmap_msgs/MapObject")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MapObject>)))
  "Returns md5sum for a message object of type '<MapObject>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MapObject)))
  "Returns md5sum for a message object of type 'MapObject"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MapObject>)))
  "Returns full string definition for message of type '<MapObject>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MapObject)))
  "Returns full string definition for message of type 'MapObject"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MapObject>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MapObject>))
  "Converts a ROS message object to a list"
  (cl:list 'MapObject
))
