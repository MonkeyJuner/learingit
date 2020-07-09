;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Objects)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Objects (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OBJECTS")
  (make-package "PERCEPTION_MSGS::OBJECTS"))

(in-package "ROS")
;;//! \htmlinclude Objects.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass perception_msgs::Objects
  :super ros::object
  :slots (_header _second _fra_second _objects ))

(defmethod perception_msgs::Objects
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:second __second) 0)
    ((:fra_second __fra_second) 0)
    ((:objects __objects) (let (r) (dotimes (i 0) (push (instance perception_msgs::Object :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _second (round __second))
   (setq _fra_second (round __fra_second))
   (setq _objects __objects)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:second
   (&optional __second)
   (if __second (setq _second __second)) _second)
  (:fra_second
   (&optional __fra_second)
   (if __fra_second (setq _fra_second __fra_second)) _fra_second)
  (:objects
   (&rest __objects)
   (if (keywordp (car __objects))
       (send* _objects __objects)
     (progn
       (if __objects (setq _objects (car __objects)))
       _objects)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint64 _second
    8
    ;; uint64 _fra_second
    8
    ;; perception_msgs/Object[] _objects
    (apply #'+ (send-all _objects :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint64 _second
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _second (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _second) (= (length (_second . bv)) 2)) ;; bignum
              (write-long (ash (elt (_second . bv) 0) 0) s)
              (write-long (ash (elt (_second . bv) 1) -1) s))
             ((and (class _second) (= (length (_second . bv)) 1)) ;; big1
              (write-long (elt (_second . bv) 0) s)
              (write-long (if (>= _second 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _second s)(write-long (if (>= _second 0) 0 #xffffffff) s)))
     ;; uint64 _fra_second
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _fra_second (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _fra_second) (= (length (_fra_second . bv)) 2)) ;; bignum
              (write-long (ash (elt (_fra_second . bv) 0) 0) s)
              (write-long (ash (elt (_fra_second . bv) 1) -1) s))
             ((and (class _fra_second) (= (length (_fra_second . bv)) 1)) ;; big1
              (write-long (elt (_fra_second . bv) 0) s)
              (write-long (if (>= _fra_second 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _fra_second s)(write-long (if (>= _fra_second 0) 0 #xffffffff) s)))
     ;; perception_msgs/Object[] _objects
     (write-long (length _objects) s)
     (dolist (elem _objects)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint64 _second
     
#+(or :alpha :irix6 :x86_64)
      (setf _second (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _second (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; uint64 _fra_second
     
#+(or :alpha :irix6 :x86_64)
      (setf _fra_second (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _fra_second (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; perception_msgs/Object[] _objects
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects (let (r) (dotimes (i n) (push (instance perception_msgs::Object :init) r)) r))
     (dolist (elem- _objects)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::Objects :md5sum-) "9d6a585f5cfab55beb66a5d4c7fccfda")
(setf (get perception_msgs::Objects :datatype-) "perception_msgs/Objects")
(setf (get perception_msgs::Objects :definition-)
      "Header header

uint64 second
uint64 fra_second
Object[] objects

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: perception_msgs/Object
int32 id
int32 age
int32 prediction_age

geometry_msgs/Point reference_point
geometry_msgs/Point[] reference_points
geometry_msgs/Point bounding_box_center
geometry_msgs/Point bounding_box_size
geometry_msgs/Point object_box_center
geometry_msgs/Point object_box_size

float64 object_box_orientation
float64 object_box_orientation_absolute

geometry_msgs/Point absolute_velocity
geometry_msgs/Point absolute_velocity_sigma
geometry_msgs/Point relative_velocity

geometry_msgs/Point absolute_acceleration
geometry_msgs/Point relative_acceleration

geometry_msgs/Point absolute_yaw_rate
geometry_msgs/Point relative_yaw_rate

int32 classification
int32 classification_age
int32 classification_certainty

geometry_msgs/Point[] contour_points
geometry_msgs/Point[] contour_points_absolute



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :perception_msgs/Objects "9d6a585f5cfab55beb66a5d4c7fccfda")


