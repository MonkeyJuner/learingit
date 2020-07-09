;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::LocalMap)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'LocalMap (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::LOCALMAP")
  (make-package "HADMAP_MSGS::LOCALMAP"))
(unless (find-package "HADMAP_MSGS::LOCALMAPREQUEST")
  (make-package "HADMAP_MSGS::LOCALMAPREQUEST"))
(unless (find-package "HADMAP_MSGS::LOCALMAPRESPONSE")
  (make-package "HADMAP_MSGS::LOCALMAPRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hadmap_msgs::LocalMapRequest
  :super ros::object
  :slots (_transform _query_len_ahead _query_len_behind ))

(defmethod hadmap_msgs::LocalMapRequest
  (:init
   (&key
    ((:transform __transform) (instance geometry_msgs::Transform :init))
    ((:query_len_ahead __query_len_ahead) 0.0)
    ((:query_len_behind __query_len_behind) 0.0)
    )
   (send-super :init)
   (setq _transform __transform)
   (setq _query_len_ahead (float __query_len_ahead))
   (setq _query_len_behind (float __query_len_behind))
   self)
  (:transform
   (&rest __transform)
   (if (keywordp (car __transform))
       (send* _transform __transform)
     (progn
       (if __transform (setq _transform (car __transform)))
       _transform)))
  (:query_len_ahead
   (&optional __query_len_ahead)
   (if __query_len_ahead (setq _query_len_ahead __query_len_ahead)) _query_len_ahead)
  (:query_len_behind
   (&optional __query_len_behind)
   (if __query_len_behind (setq _query_len_behind __query_len_behind)) _query_len_behind)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Transform _transform
    (send _transform :serialization-length)
    ;; float32 _query_len_ahead
    4
    ;; float32 _query_len_behind
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Transform _transform
       (send _transform :serialize s)
     ;; float32 _query_len_ahead
       (sys::poke _query_len_ahead (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _query_len_behind
       (sys::poke _query_len_behind (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Transform _transform
     (send _transform :deserialize buf ptr-) (incf ptr- (send _transform :serialization-length))
   ;; float32 _query_len_ahead
     (setq _query_len_ahead (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _query_len_behind
     (setq _query_len_behind (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hadmap_msgs::LocalMapResponse
  :super ros::object
  :slots (_header _lanes ))

(defmethod hadmap_msgs::LocalMapResponse
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::LocalMapLane :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _lanes __lanes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; hadmap_msgs/LocalMapLane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; hadmap_msgs/LocalMapLane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; hadmap_msgs/LocalMapLane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance hadmap_msgs::LocalMapLane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass hadmap_msgs::LocalMap
  :super ros::object
  :slots ())

(setf (get hadmap_msgs::LocalMap :md5sum-) "08a1f6ded539d336de32646a87759460")
(setf (get hadmap_msgs::LocalMap :datatype-) "hadmap_msgs/LocalMap")
(setf (get hadmap_msgs::LocalMap :request) hadmap_msgs::LocalMapRequest)
(setf (get hadmap_msgs::LocalMap :response) hadmap_msgs::LocalMapResponse)

(defmethod hadmap_msgs::LocalMapRequest
  (:response () (instance hadmap_msgs::LocalMapResponse :init)))

(setf (get hadmap_msgs::LocalMapRequest :md5sum-) "08a1f6ded539d336de32646a87759460")
(setf (get hadmap_msgs::LocalMapRequest :datatype-) "hadmap_msgs/LocalMapRequest")
(setf (get hadmap_msgs::LocalMapRequest :definition-)
      "
geometry_msgs/Transform transform

float32 query_len_ahead

float32 query_len_behind


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---


Header header

LocalMapLane[] lanes


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
MSG: hadmap_msgs/LocalMapLane
# lane id
int32 id
# residual length
float32 residual_len

float32 stopline_distance
geometry_msgs/Point stopline

# central planning points
LocalMapPoint[] center
# left boundary
LocalMapPoint[] left
# right boundary
LocalMapPoint[] right



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: hadmap_msgs/LocalMapPoint
uint8 TYPE_CROSS = 0
uint8 TYPE_NOT_CROSS = 1

# lane point localization
geometry_msgs/Point point
# heading angle
float32 heading
# now: cross or not
uint8 type
# speed limit
float32 speed_limit
")

(setf (get hadmap_msgs::LocalMapResponse :md5sum-) "08a1f6ded539d336de32646a87759460")
(setf (get hadmap_msgs::LocalMapResponse :datatype-) "hadmap_msgs/LocalMapResponse")
(setf (get hadmap_msgs::LocalMapResponse :definition-)
      "
geometry_msgs/Transform transform

float32 query_len_ahead

float32 query_len_behind


================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
---


Header header

LocalMapLane[] lanes


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
MSG: hadmap_msgs/LocalMapLane
# lane id
int32 id
# residual length
float32 residual_len

float32 stopline_distance
geometry_msgs/Point stopline

# central planning points
LocalMapPoint[] center
# left boundary
LocalMapPoint[] left
# right boundary
LocalMapPoint[] right



================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: hadmap_msgs/LocalMapPoint
uint8 TYPE_CROSS = 0
uint8 TYPE_NOT_CROSS = 1

# lane point localization
geometry_msgs/Point point
# heading angle
float32 heading
# now: cross or not
uint8 type
# speed limit
float32 speed_limit
")



(provide :hadmap_msgs/LocalMap "08a1f6ded539d336de32646a87759460")


