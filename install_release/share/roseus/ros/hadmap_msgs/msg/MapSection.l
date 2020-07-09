;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::MapSection)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'MapSection (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MAPSECTION")
  (make-package "HADMAP_MSGS::MAPSECTION"))

(in-package "ROS")
;;//! \htmlinclude MapSection.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hadmap_msgs::MapSection
  :super ros::object
  :slots (_header _id _s _refer_line _z_coeffs _lanes ))

(defmethod hadmap_msgs::MapSection
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:id __id) 0)
    ((:s __s) 0.0)
    ((:refer_line __refer_line) (instance hadmap_msgs::MapReferLine :init))
    ((:z_coeffs __z_coeffs) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::MapPolyCoeff :init) r)) r))
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::MapLane :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _id (round __id))
   (setq _s (float __s))
   (setq _refer_line __refer_line)
   (setq _z_coeffs __z_coeffs)
   (setq _lanes __lanes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:refer_line
   (&rest __refer_line)
   (if (keywordp (car __refer_line))
       (send* _refer_line __refer_line)
     (progn
       (if __refer_line (setq _refer_line (car __refer_line)))
       _refer_line)))
  (:z_coeffs
   (&rest __z_coeffs)
   (if (keywordp (car __z_coeffs))
       (send* _z_coeffs __z_coeffs)
     (progn
       (if __z_coeffs (setq _z_coeffs (car __z_coeffs)))
       _z_coeffs)))
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
    ;; uint32 _id
    4
    ;; float64 _s
    8
    ;; hadmap_msgs/MapReferLine _refer_line
    (send _refer_line :serialization-length)
    ;; hadmap_msgs/MapPolyCoeff[] _z_coeffs
    (apply #'+ (send-all _z_coeffs :serialization-length)) 4
    ;; hadmap_msgs/MapLane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _id
       (write-long _id s)
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; hadmap_msgs/MapReferLine _refer_line
       (send _refer_line :serialize s)
     ;; hadmap_msgs/MapPolyCoeff[] _z_coeffs
     (write-long (length _z_coeffs) s)
     (dolist (elem _z_coeffs)
       (send elem :serialize s)
       )
     ;; hadmap_msgs/MapLane[] _lanes
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
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; hadmap_msgs/MapReferLine _refer_line
     (send _refer_line :deserialize buf ptr-) (incf ptr- (send _refer_line :serialization-length))
   ;; hadmap_msgs/MapPolyCoeff[] _z_coeffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z_coeffs (let (r) (dotimes (i n) (push (instance hadmap_msgs::MapPolyCoeff :init) r)) r))
     (dolist (elem- _z_coeffs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; hadmap_msgs/MapLane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance hadmap_msgs::MapLane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hadmap_msgs::MapSection :md5sum-) "c157895ff86d00b131821caeb238419d")
(setf (get hadmap_msgs::MapSection :datatype-) "hadmap_msgs/MapSection")
(setf (get hadmap_msgs::MapSection :definition-)
      "Header header

uint32 id
float64 s

MapReferLine refer_line
MapPolyCoeff[] z_coeffs
MapLane[] lanes

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
MSG: hadmap_msgs/MapReferLine

geometry_msgs/Point start_point
float64 heading
float64 length
MapSplineCoeff spline_coeff

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: hadmap_msgs/MapSplineCoeff
float64 start_offset
uint8 degree
uint8 dimension
float64 scale
float64[] spline_knots
geometry_msgs/Point[] spline_points

================================================================================
MSG: hadmap_msgs/MapPolyCoeff
float64 offset
float64[] poly_parameters

================================================================================
MSG: hadmap_msgs/MapLane
uint8 lane_type

MapPolyCoeff[] poly_coeffs

int16 predecessor
int16 successor

float32 lane_residual_len
float32 speed_limit

")



(provide :hadmap_msgs/MapSection "c157895ff86d00b131821caeb238419d")


