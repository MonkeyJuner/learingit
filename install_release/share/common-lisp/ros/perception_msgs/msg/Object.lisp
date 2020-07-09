; Auto-generated. Do not edit!


(cl:in-package perception_msgs-msg)


;//! \htmlinclude Object.msg.html

(cl:defclass <Object> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (age
    :reader age
    :initarg :age
    :type cl:integer
    :initform 0)
   (prediction_age
    :reader prediction_age
    :initarg :prediction_age
    :type cl:integer
    :initform 0)
   (reference_point
    :reader reference_point
    :initarg :reference_point
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (reference_points
    :reader reference_points
    :initarg :reference_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (bounding_box_center
    :reader bounding_box_center
    :initarg :bounding_box_center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (bounding_box_size
    :reader bounding_box_size
    :initarg :bounding_box_size
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (object_box_center
    :reader object_box_center
    :initarg :object_box_center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (object_box_size
    :reader object_box_size
    :initarg :object_box_size
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (object_box_orientation
    :reader object_box_orientation
    :initarg :object_box_orientation
    :type cl:float
    :initform 0.0)
   (object_box_orientation_absolute
    :reader object_box_orientation_absolute
    :initarg :object_box_orientation_absolute
    :type cl:float
    :initform 0.0)
   (absolute_velocity
    :reader absolute_velocity
    :initarg :absolute_velocity
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (absolute_velocity_sigma
    :reader absolute_velocity_sigma
    :initarg :absolute_velocity_sigma
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (relative_velocity
    :reader relative_velocity
    :initarg :relative_velocity
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (absolute_acceleration
    :reader absolute_acceleration
    :initarg :absolute_acceleration
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (relative_acceleration
    :reader relative_acceleration
    :initarg :relative_acceleration
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (absolute_yaw_rate
    :reader absolute_yaw_rate
    :initarg :absolute_yaw_rate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (relative_yaw_rate
    :reader relative_yaw_rate
    :initarg :relative_yaw_rate
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (classification
    :reader classification
    :initarg :classification
    :type cl:integer
    :initform 0)
   (classification_age
    :reader classification_age
    :initarg :classification_age
    :type cl:integer
    :initform 0)
   (classification_certainty
    :reader classification_certainty
    :initarg :classification_certainty
    :type cl:integer
    :initform 0)
   (contour_points
    :reader contour_points
    :initarg :contour_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (contour_points_absolute
    :reader contour_points_absolute
    :initarg :contour_points_absolute
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point))))
)

(cl:defclass Object (<Object>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Object>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Object)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name perception_msgs-msg:<Object> is deprecated: use perception_msgs-msg:Object instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:id-val is deprecated.  Use perception_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:age-val is deprecated.  Use perception_msgs-msg:age instead.")
  (age m))

(cl:ensure-generic-function 'prediction_age-val :lambda-list '(m))
(cl:defmethod prediction_age-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:prediction_age-val is deprecated.  Use perception_msgs-msg:prediction_age instead.")
  (prediction_age m))

(cl:ensure-generic-function 'reference_point-val :lambda-list '(m))
(cl:defmethod reference_point-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:reference_point-val is deprecated.  Use perception_msgs-msg:reference_point instead.")
  (reference_point m))

(cl:ensure-generic-function 'reference_points-val :lambda-list '(m))
(cl:defmethod reference_points-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:reference_points-val is deprecated.  Use perception_msgs-msg:reference_points instead.")
  (reference_points m))

(cl:ensure-generic-function 'bounding_box_center-val :lambda-list '(m))
(cl:defmethod bounding_box_center-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:bounding_box_center-val is deprecated.  Use perception_msgs-msg:bounding_box_center instead.")
  (bounding_box_center m))

(cl:ensure-generic-function 'bounding_box_size-val :lambda-list '(m))
(cl:defmethod bounding_box_size-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:bounding_box_size-val is deprecated.  Use perception_msgs-msg:bounding_box_size instead.")
  (bounding_box_size m))

(cl:ensure-generic-function 'object_box_center-val :lambda-list '(m))
(cl:defmethod object_box_center-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:object_box_center-val is deprecated.  Use perception_msgs-msg:object_box_center instead.")
  (object_box_center m))

(cl:ensure-generic-function 'object_box_size-val :lambda-list '(m))
(cl:defmethod object_box_size-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:object_box_size-val is deprecated.  Use perception_msgs-msg:object_box_size instead.")
  (object_box_size m))

(cl:ensure-generic-function 'object_box_orientation-val :lambda-list '(m))
(cl:defmethod object_box_orientation-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:object_box_orientation-val is deprecated.  Use perception_msgs-msg:object_box_orientation instead.")
  (object_box_orientation m))

(cl:ensure-generic-function 'object_box_orientation_absolute-val :lambda-list '(m))
(cl:defmethod object_box_orientation_absolute-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:object_box_orientation_absolute-val is deprecated.  Use perception_msgs-msg:object_box_orientation_absolute instead.")
  (object_box_orientation_absolute m))

(cl:ensure-generic-function 'absolute_velocity-val :lambda-list '(m))
(cl:defmethod absolute_velocity-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:absolute_velocity-val is deprecated.  Use perception_msgs-msg:absolute_velocity instead.")
  (absolute_velocity m))

(cl:ensure-generic-function 'absolute_velocity_sigma-val :lambda-list '(m))
(cl:defmethod absolute_velocity_sigma-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:absolute_velocity_sigma-val is deprecated.  Use perception_msgs-msg:absolute_velocity_sigma instead.")
  (absolute_velocity_sigma m))

(cl:ensure-generic-function 'relative_velocity-val :lambda-list '(m))
(cl:defmethod relative_velocity-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:relative_velocity-val is deprecated.  Use perception_msgs-msg:relative_velocity instead.")
  (relative_velocity m))

(cl:ensure-generic-function 'absolute_acceleration-val :lambda-list '(m))
(cl:defmethod absolute_acceleration-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:absolute_acceleration-val is deprecated.  Use perception_msgs-msg:absolute_acceleration instead.")
  (absolute_acceleration m))

(cl:ensure-generic-function 'relative_acceleration-val :lambda-list '(m))
(cl:defmethod relative_acceleration-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:relative_acceleration-val is deprecated.  Use perception_msgs-msg:relative_acceleration instead.")
  (relative_acceleration m))

(cl:ensure-generic-function 'absolute_yaw_rate-val :lambda-list '(m))
(cl:defmethod absolute_yaw_rate-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:absolute_yaw_rate-val is deprecated.  Use perception_msgs-msg:absolute_yaw_rate instead.")
  (absolute_yaw_rate m))

(cl:ensure-generic-function 'relative_yaw_rate-val :lambda-list '(m))
(cl:defmethod relative_yaw_rate-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:relative_yaw_rate-val is deprecated.  Use perception_msgs-msg:relative_yaw_rate instead.")
  (relative_yaw_rate m))

(cl:ensure-generic-function 'classification-val :lambda-list '(m))
(cl:defmethod classification-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:classification-val is deprecated.  Use perception_msgs-msg:classification instead.")
  (classification m))

(cl:ensure-generic-function 'classification_age-val :lambda-list '(m))
(cl:defmethod classification_age-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:classification_age-val is deprecated.  Use perception_msgs-msg:classification_age instead.")
  (classification_age m))

(cl:ensure-generic-function 'classification_certainty-val :lambda-list '(m))
(cl:defmethod classification_certainty-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:classification_certainty-val is deprecated.  Use perception_msgs-msg:classification_certainty instead.")
  (classification_certainty m))

(cl:ensure-generic-function 'contour_points-val :lambda-list '(m))
(cl:defmethod contour_points-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:contour_points-val is deprecated.  Use perception_msgs-msg:contour_points instead.")
  (contour_points m))

(cl:ensure-generic-function 'contour_points_absolute-val :lambda-list '(m))
(cl:defmethod contour_points_absolute-val ((m <Object>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader perception_msgs-msg:contour_points_absolute-val is deprecated.  Use perception_msgs-msg:contour_points_absolute instead.")
  (contour_points_absolute m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Object>) ostream)
  "Serializes a message object of type '<Object>"
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'prediction_age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reference_point) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reference_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reference_points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_size) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_box_center) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'object_box_size) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'object_box_orientation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'object_box_orientation_absolute))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_velocity_sigma) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_acceleration) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'absolute_yaw_rate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_yaw_rate) ostream)
  (cl:let* ((signed (cl:slot-value msg 'classification)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'classification_age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'classification_certainty)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contour_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contour_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'contour_points_absolute))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'contour_points_absolute))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Object>) istream)
  "Deserializes a message object of type '<Object>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prediction_age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reference_point) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reference_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reference_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_size) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_box_center) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'object_box_size) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_box_orientation) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'object_box_orientation_absolute) (roslisp-utils:decode-double-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_velocity_sigma) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_acceleration) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'absolute_yaw_rate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_yaw_rate) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'classification) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'classification_age) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'classification_certainty) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contour_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contour_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'contour_points_absolute) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'contour_points_absolute)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Object>)))
  "Returns string type for a message object of type '<Object>"
  "perception_msgs/Object")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Object)))
  "Returns string type for a message object of type 'Object"
  "perception_msgs/Object")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Object>)))
  "Returns md5sum for a message object of type '<Object>"
  "683135dacc3cb368d96ceddae6f34be6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Object)))
  "Returns md5sum for a message object of type 'Object"
  "683135dacc3cb368d96ceddae6f34be6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Object>)))
  "Returns full string definition for message of type '<Object>"
  (cl:format cl:nil "int32 id~%int32 age~%int32 prediction_age~%~%geometry_msgs/Point reference_point~%geometry_msgs/Point[] reference_points~%geometry_msgs/Point bounding_box_center~%geometry_msgs/Point bounding_box_size~%geometry_msgs/Point object_box_center~%geometry_msgs/Point object_box_size~%~%float64 object_box_orientation~%float64 object_box_orientation_absolute~%~%geometry_msgs/Point absolute_velocity~%geometry_msgs/Point absolute_velocity_sigma~%geometry_msgs/Point relative_velocity~%~%geometry_msgs/Point absolute_acceleration~%geometry_msgs/Point relative_acceleration~%~%geometry_msgs/Point absolute_yaw_rate~%geometry_msgs/Point relative_yaw_rate~%~%int32 classification~%int32 classification_age~%int32 classification_certainty~%~%geometry_msgs/Point[] contour_points~%geometry_msgs/Point[] contour_points_absolute~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Object)))
  "Returns full string definition for message of type 'Object"
  (cl:format cl:nil "int32 id~%int32 age~%int32 prediction_age~%~%geometry_msgs/Point reference_point~%geometry_msgs/Point[] reference_points~%geometry_msgs/Point bounding_box_center~%geometry_msgs/Point bounding_box_size~%geometry_msgs/Point object_box_center~%geometry_msgs/Point object_box_size~%~%float64 object_box_orientation~%float64 object_box_orientation_absolute~%~%geometry_msgs/Point absolute_velocity~%geometry_msgs/Point absolute_velocity_sigma~%geometry_msgs/Point relative_velocity~%~%geometry_msgs/Point absolute_acceleration~%geometry_msgs/Point relative_acceleration~%~%geometry_msgs/Point absolute_yaw_rate~%geometry_msgs/Point relative_yaw_rate~%~%int32 classification~%int32 classification_age~%int32 classification_certainty~%~%geometry_msgs/Point[] contour_points~%geometry_msgs/Point[] contour_points_absolute~%~%~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Object>))
  (cl:+ 0
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reference_point))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reference_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_size))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_box_center))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'object_box_size))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_velocity_sigma))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_acceleration))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'absolute_yaw_rate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_yaw_rate))
     4
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contour_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'contour_points_absolute) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Object>))
  "Converts a ROS message object to a list"
  (cl:list 'Object
    (cl:cons ':id (id msg))
    (cl:cons ':age (age msg))
    (cl:cons ':prediction_age (prediction_age msg))
    (cl:cons ':reference_point (reference_point msg))
    (cl:cons ':reference_points (reference_points msg))
    (cl:cons ':bounding_box_center (bounding_box_center msg))
    (cl:cons ':bounding_box_size (bounding_box_size msg))
    (cl:cons ':object_box_center (object_box_center msg))
    (cl:cons ':object_box_size (object_box_size msg))
    (cl:cons ':object_box_orientation (object_box_orientation msg))
    (cl:cons ':object_box_orientation_absolute (object_box_orientation_absolute msg))
    (cl:cons ':absolute_velocity (absolute_velocity msg))
    (cl:cons ':absolute_velocity_sigma (absolute_velocity_sigma msg))
    (cl:cons ':relative_velocity (relative_velocity msg))
    (cl:cons ':absolute_acceleration (absolute_acceleration msg))
    (cl:cons ':relative_acceleration (relative_acceleration msg))
    (cl:cons ':absolute_yaw_rate (absolute_yaw_rate msg))
    (cl:cons ':relative_yaw_rate (relative_yaw_rate msg))
    (cl:cons ':classification (classification msg))
    (cl:cons ':classification_age (classification_age msg))
    (cl:cons ':classification_certainty (classification_certainty msg))
    (cl:cons ':contour_points (contour_points msg))
    (cl:cons ':contour_points_absolute (contour_points_absolute msg))
))
