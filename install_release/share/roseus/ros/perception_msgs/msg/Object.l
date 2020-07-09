;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::Object)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'Object (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OBJECT")
  (make-package "PERCEPTION_MSGS::OBJECT"))

(in-package "ROS")
;;//! \htmlinclude Object.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass perception_msgs::Object
  :super ros::object
  :slots (_id _age _prediction_age _reference_point _reference_points _bounding_box_center _bounding_box_size _object_box_center _object_box_size _object_box_orientation _object_box_orientation_absolute _absolute_velocity _absolute_velocity_sigma _relative_velocity _absolute_acceleration _relative_acceleration _absolute_yaw_rate _relative_yaw_rate _classification _classification_age _classification_certainty _contour_points _contour_points_absolute ))

(defmethod perception_msgs::Object
  (:init
   (&key
    ((:id __id) 0)
    ((:age __age) 0)
    ((:prediction_age __prediction_age) 0)
    ((:reference_point __reference_point) (instance geometry_msgs::Point :init))
    ((:reference_points __reference_points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:bounding_box_center __bounding_box_center) (instance geometry_msgs::Point :init))
    ((:bounding_box_size __bounding_box_size) (instance geometry_msgs::Point :init))
    ((:object_box_center __object_box_center) (instance geometry_msgs::Point :init))
    ((:object_box_size __object_box_size) (instance geometry_msgs::Point :init))
    ((:object_box_orientation __object_box_orientation) 0.0)
    ((:object_box_orientation_absolute __object_box_orientation_absolute) 0.0)
    ((:absolute_velocity __absolute_velocity) (instance geometry_msgs::Point :init))
    ((:absolute_velocity_sigma __absolute_velocity_sigma) (instance geometry_msgs::Point :init))
    ((:relative_velocity __relative_velocity) (instance geometry_msgs::Point :init))
    ((:absolute_acceleration __absolute_acceleration) (instance geometry_msgs::Point :init))
    ((:relative_acceleration __relative_acceleration) (instance geometry_msgs::Point :init))
    ((:absolute_yaw_rate __absolute_yaw_rate) (instance geometry_msgs::Point :init))
    ((:relative_yaw_rate __relative_yaw_rate) (instance geometry_msgs::Point :init))
    ((:classification __classification) 0)
    ((:classification_age __classification_age) 0)
    ((:classification_certainty __classification_certainty) 0)
    ((:contour_points __contour_points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    ((:contour_points_absolute __contour_points_absolute) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _age (round __age))
   (setq _prediction_age (round __prediction_age))
   (setq _reference_point __reference_point)
   (setq _reference_points __reference_points)
   (setq _bounding_box_center __bounding_box_center)
   (setq _bounding_box_size __bounding_box_size)
   (setq _object_box_center __object_box_center)
   (setq _object_box_size __object_box_size)
   (setq _object_box_orientation (float __object_box_orientation))
   (setq _object_box_orientation_absolute (float __object_box_orientation_absolute))
   (setq _absolute_velocity __absolute_velocity)
   (setq _absolute_velocity_sigma __absolute_velocity_sigma)
   (setq _relative_velocity __relative_velocity)
   (setq _absolute_acceleration __absolute_acceleration)
   (setq _relative_acceleration __relative_acceleration)
   (setq _absolute_yaw_rate __absolute_yaw_rate)
   (setq _relative_yaw_rate __relative_yaw_rate)
   (setq _classification (round __classification))
   (setq _classification_age (round __classification_age))
   (setq _classification_certainty (round __classification_certainty))
   (setq _contour_points __contour_points)
   (setq _contour_points_absolute __contour_points_absolute)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:prediction_age
   (&optional __prediction_age)
   (if __prediction_age (setq _prediction_age __prediction_age)) _prediction_age)
  (:reference_point
   (&rest __reference_point)
   (if (keywordp (car __reference_point))
       (send* _reference_point __reference_point)
     (progn
       (if __reference_point (setq _reference_point (car __reference_point)))
       _reference_point)))
  (:reference_points
   (&rest __reference_points)
   (if (keywordp (car __reference_points))
       (send* _reference_points __reference_points)
     (progn
       (if __reference_points (setq _reference_points (car __reference_points)))
       _reference_points)))
  (:bounding_box_center
   (&rest __bounding_box_center)
   (if (keywordp (car __bounding_box_center))
       (send* _bounding_box_center __bounding_box_center)
     (progn
       (if __bounding_box_center (setq _bounding_box_center (car __bounding_box_center)))
       _bounding_box_center)))
  (:bounding_box_size
   (&rest __bounding_box_size)
   (if (keywordp (car __bounding_box_size))
       (send* _bounding_box_size __bounding_box_size)
     (progn
       (if __bounding_box_size (setq _bounding_box_size (car __bounding_box_size)))
       _bounding_box_size)))
  (:object_box_center
   (&rest __object_box_center)
   (if (keywordp (car __object_box_center))
       (send* _object_box_center __object_box_center)
     (progn
       (if __object_box_center (setq _object_box_center (car __object_box_center)))
       _object_box_center)))
  (:object_box_size
   (&rest __object_box_size)
   (if (keywordp (car __object_box_size))
       (send* _object_box_size __object_box_size)
     (progn
       (if __object_box_size (setq _object_box_size (car __object_box_size)))
       _object_box_size)))
  (:object_box_orientation
   (&optional __object_box_orientation)
   (if __object_box_orientation (setq _object_box_orientation __object_box_orientation)) _object_box_orientation)
  (:object_box_orientation_absolute
   (&optional __object_box_orientation_absolute)
   (if __object_box_orientation_absolute (setq _object_box_orientation_absolute __object_box_orientation_absolute)) _object_box_orientation_absolute)
  (:absolute_velocity
   (&rest __absolute_velocity)
   (if (keywordp (car __absolute_velocity))
       (send* _absolute_velocity __absolute_velocity)
     (progn
       (if __absolute_velocity (setq _absolute_velocity (car __absolute_velocity)))
       _absolute_velocity)))
  (:absolute_velocity_sigma
   (&rest __absolute_velocity_sigma)
   (if (keywordp (car __absolute_velocity_sigma))
       (send* _absolute_velocity_sigma __absolute_velocity_sigma)
     (progn
       (if __absolute_velocity_sigma (setq _absolute_velocity_sigma (car __absolute_velocity_sigma)))
       _absolute_velocity_sigma)))
  (:relative_velocity
   (&rest __relative_velocity)
   (if (keywordp (car __relative_velocity))
       (send* _relative_velocity __relative_velocity)
     (progn
       (if __relative_velocity (setq _relative_velocity (car __relative_velocity)))
       _relative_velocity)))
  (:absolute_acceleration
   (&rest __absolute_acceleration)
   (if (keywordp (car __absolute_acceleration))
       (send* _absolute_acceleration __absolute_acceleration)
     (progn
       (if __absolute_acceleration (setq _absolute_acceleration (car __absolute_acceleration)))
       _absolute_acceleration)))
  (:relative_acceleration
   (&rest __relative_acceleration)
   (if (keywordp (car __relative_acceleration))
       (send* _relative_acceleration __relative_acceleration)
     (progn
       (if __relative_acceleration (setq _relative_acceleration (car __relative_acceleration)))
       _relative_acceleration)))
  (:absolute_yaw_rate
   (&rest __absolute_yaw_rate)
   (if (keywordp (car __absolute_yaw_rate))
       (send* _absolute_yaw_rate __absolute_yaw_rate)
     (progn
       (if __absolute_yaw_rate (setq _absolute_yaw_rate (car __absolute_yaw_rate)))
       _absolute_yaw_rate)))
  (:relative_yaw_rate
   (&rest __relative_yaw_rate)
   (if (keywordp (car __relative_yaw_rate))
       (send* _relative_yaw_rate __relative_yaw_rate)
     (progn
       (if __relative_yaw_rate (setq _relative_yaw_rate (car __relative_yaw_rate)))
       _relative_yaw_rate)))
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:classification_age
   (&optional __classification_age)
   (if __classification_age (setq _classification_age __classification_age)) _classification_age)
  (:classification_certainty
   (&optional __classification_certainty)
   (if __classification_certainty (setq _classification_certainty __classification_certainty)) _classification_certainty)
  (:contour_points
   (&rest __contour_points)
   (if (keywordp (car __contour_points))
       (send* _contour_points __contour_points)
     (progn
       (if __contour_points (setq _contour_points (car __contour_points)))
       _contour_points)))
  (:contour_points_absolute
   (&rest __contour_points_absolute)
   (if (keywordp (car __contour_points_absolute))
       (send* _contour_points_absolute __contour_points_absolute)
     (progn
       (if __contour_points_absolute (setq _contour_points_absolute (car __contour_points_absolute)))
       _contour_points_absolute)))
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; int32 _age
    4
    ;; int32 _prediction_age
    4
    ;; geometry_msgs/Point _reference_point
    (send _reference_point :serialization-length)
    ;; geometry_msgs/Point[] _reference_points
    (apply #'+ (send-all _reference_points :serialization-length)) 4
    ;; geometry_msgs/Point _bounding_box_center
    (send _bounding_box_center :serialization-length)
    ;; geometry_msgs/Point _bounding_box_size
    (send _bounding_box_size :serialization-length)
    ;; geometry_msgs/Point _object_box_center
    (send _object_box_center :serialization-length)
    ;; geometry_msgs/Point _object_box_size
    (send _object_box_size :serialization-length)
    ;; float64 _object_box_orientation
    8
    ;; float64 _object_box_orientation_absolute
    8
    ;; geometry_msgs/Point _absolute_velocity
    (send _absolute_velocity :serialization-length)
    ;; geometry_msgs/Point _absolute_velocity_sigma
    (send _absolute_velocity_sigma :serialization-length)
    ;; geometry_msgs/Point _relative_velocity
    (send _relative_velocity :serialization-length)
    ;; geometry_msgs/Point _absolute_acceleration
    (send _absolute_acceleration :serialization-length)
    ;; geometry_msgs/Point _relative_acceleration
    (send _relative_acceleration :serialization-length)
    ;; geometry_msgs/Point _absolute_yaw_rate
    (send _absolute_yaw_rate :serialization-length)
    ;; geometry_msgs/Point _relative_yaw_rate
    (send _relative_yaw_rate :serialization-length)
    ;; int32 _classification
    4
    ;; int32 _classification_age
    4
    ;; int32 _classification_certainty
    4
    ;; geometry_msgs/Point[] _contour_points
    (apply #'+ (send-all _contour_points :serialization-length)) 4
    ;; geometry_msgs/Point[] _contour_points_absolute
    (apply #'+ (send-all _contour_points_absolute :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; int32 _age
       (write-long _age s)
     ;; int32 _prediction_age
       (write-long _prediction_age s)
     ;; geometry_msgs/Point _reference_point
       (send _reference_point :serialize s)
     ;; geometry_msgs/Point[] _reference_points
     (write-long (length _reference_points) s)
     (dolist (elem _reference_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point _bounding_box_center
       (send _bounding_box_center :serialize s)
     ;; geometry_msgs/Point _bounding_box_size
       (send _bounding_box_size :serialize s)
     ;; geometry_msgs/Point _object_box_center
       (send _object_box_center :serialize s)
     ;; geometry_msgs/Point _object_box_size
       (send _object_box_size :serialize s)
     ;; float64 _object_box_orientation
       (sys::poke _object_box_orientation (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _object_box_orientation_absolute
       (sys::poke _object_box_orientation_absolute (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Point _absolute_velocity
       (send _absolute_velocity :serialize s)
     ;; geometry_msgs/Point _absolute_velocity_sigma
       (send _absolute_velocity_sigma :serialize s)
     ;; geometry_msgs/Point _relative_velocity
       (send _relative_velocity :serialize s)
     ;; geometry_msgs/Point _absolute_acceleration
       (send _absolute_acceleration :serialize s)
     ;; geometry_msgs/Point _relative_acceleration
       (send _relative_acceleration :serialize s)
     ;; geometry_msgs/Point _absolute_yaw_rate
       (send _absolute_yaw_rate :serialize s)
     ;; geometry_msgs/Point _relative_yaw_rate
       (send _relative_yaw_rate :serialize s)
     ;; int32 _classification
       (write-long _classification s)
     ;; int32 _classification_age
       (write-long _classification_age s)
     ;; int32 _classification_certainty
       (write-long _classification_certainty s)
     ;; geometry_msgs/Point[] _contour_points
     (write-long (length _contour_points) s)
     (dolist (elem _contour_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _contour_points_absolute
     (write-long (length _contour_points_absolute) s)
     (dolist (elem _contour_points_absolute)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _age
     (setq _age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _prediction_age
     (setq _prediction_age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _reference_point
     (send _reference_point :deserialize buf ptr-) (incf ptr- (send _reference_point :serialization-length))
   ;; geometry_msgs/Point[] _reference_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _reference_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _reference_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point _bounding_box_center
     (send _bounding_box_center :deserialize buf ptr-) (incf ptr- (send _bounding_box_center :serialization-length))
   ;; geometry_msgs/Point _bounding_box_size
     (send _bounding_box_size :deserialize buf ptr-) (incf ptr- (send _bounding_box_size :serialization-length))
   ;; geometry_msgs/Point _object_box_center
     (send _object_box_center :deserialize buf ptr-) (incf ptr- (send _object_box_center :serialization-length))
   ;; geometry_msgs/Point _object_box_size
     (send _object_box_size :deserialize buf ptr-) (incf ptr- (send _object_box_size :serialization-length))
   ;; float64 _object_box_orientation
     (setq _object_box_orientation (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _object_box_orientation_absolute
     (setq _object_box_orientation_absolute (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Point _absolute_velocity
     (send _absolute_velocity :deserialize buf ptr-) (incf ptr- (send _absolute_velocity :serialization-length))
   ;; geometry_msgs/Point _absolute_velocity_sigma
     (send _absolute_velocity_sigma :deserialize buf ptr-) (incf ptr- (send _absolute_velocity_sigma :serialization-length))
   ;; geometry_msgs/Point _relative_velocity
     (send _relative_velocity :deserialize buf ptr-) (incf ptr- (send _relative_velocity :serialization-length))
   ;; geometry_msgs/Point _absolute_acceleration
     (send _absolute_acceleration :deserialize buf ptr-) (incf ptr- (send _absolute_acceleration :serialization-length))
   ;; geometry_msgs/Point _relative_acceleration
     (send _relative_acceleration :deserialize buf ptr-) (incf ptr- (send _relative_acceleration :serialization-length))
   ;; geometry_msgs/Point _absolute_yaw_rate
     (send _absolute_yaw_rate :deserialize buf ptr-) (incf ptr- (send _absolute_yaw_rate :serialization-length))
   ;; geometry_msgs/Point _relative_yaw_rate
     (send _relative_yaw_rate :deserialize buf ptr-) (incf ptr- (send _relative_yaw_rate :serialization-length))
   ;; int32 _classification
     (setq _classification (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _classification_age
     (setq _classification_age (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _classification_certainty
     (setq _classification_certainty (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point[] _contour_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contour_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _contour_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _contour_points_absolute
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _contour_points_absolute (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _contour_points_absolute)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get perception_msgs::Object :md5sum-) "683135dacc3cb368d96ceddae6f34be6")
(setf (get perception_msgs::Object :datatype-) "perception_msgs/Object")
(setf (get perception_msgs::Object :definition-)
      "int32 id
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



(provide :perception_msgs/Object "683135dacc3cb368d96ceddae6f34be6")


