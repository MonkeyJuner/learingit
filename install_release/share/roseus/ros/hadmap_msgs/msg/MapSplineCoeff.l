;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::MapSplineCoeff)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'MapSplineCoeff (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MAPSPLINECOEFF")
  (make-package "HADMAP_MSGS::MAPSPLINECOEFF"))

(in-package "ROS")
;;//! \htmlinclude MapSplineCoeff.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hadmap_msgs::MapSplineCoeff
  :super ros::object
  :slots (_start_offset _degree _dimension _scale _spline_knots _spline_points ))

(defmethod hadmap_msgs::MapSplineCoeff
  (:init
   (&key
    ((:start_offset __start_offset) 0.0)
    ((:degree __degree) 0)
    ((:dimension __dimension) 0)
    ((:scale __scale) 0.0)
    ((:spline_knots __spline_knots) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:spline_points __spline_points) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Point :init) r)) r))
    )
   (send-super :init)
   (setq _start_offset (float __start_offset))
   (setq _degree (round __degree))
   (setq _dimension (round __dimension))
   (setq _scale (float __scale))
   (setq _spline_knots __spline_knots)
   (setq _spline_points __spline_points)
   self)
  (:start_offset
   (&optional __start_offset)
   (if __start_offset (setq _start_offset __start_offset)) _start_offset)
  (:degree
   (&optional __degree)
   (if __degree (setq _degree __degree)) _degree)
  (:dimension
   (&optional __dimension)
   (if __dimension (setq _dimension __dimension)) _dimension)
  (:scale
   (&optional __scale)
   (if __scale (setq _scale __scale)) _scale)
  (:spline_knots
   (&optional __spline_knots)
   (if __spline_knots (setq _spline_knots __spline_knots)) _spline_knots)
  (:spline_points
   (&rest __spline_points)
   (if (keywordp (car __spline_points))
       (send* _spline_points __spline_points)
     (progn
       (if __spline_points (setq _spline_points (car __spline_points)))
       _spline_points)))
  (:serialization-length
   ()
   (+
    ;; float64 _start_offset
    8
    ;; uint8 _degree
    1
    ;; uint8 _dimension
    1
    ;; float64 _scale
    8
    ;; float64[] _spline_knots
    (* 8    (length _spline_knots)) 4
    ;; geometry_msgs/Point[] _spline_points
    (apply #'+ (send-all _spline_points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _start_offset
       (sys::poke _start_offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _degree
       (write-byte _degree s)
     ;; uint8 _dimension
       (write-byte _dimension s)
     ;; float64 _scale
       (sys::poke _scale (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _spline_knots
     (write-long (length _spline_knots) s)
     (dotimes (i (length _spline_knots))
       (sys::poke (elt _spline_knots i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; geometry_msgs/Point[] _spline_points
     (write-long (length _spline_points) s)
     (dolist (elem _spline_points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _start_offset
     (setq _start_offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _degree
     (setq _degree (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dimension
     (setq _dimension (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _scale
     (setq _scale (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _spline_knots
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _spline_knots (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _spline_knots i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; geometry_msgs/Point[] _spline_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _spline_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _spline_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hadmap_msgs::MapSplineCoeff :md5sum-) "34d58849d5e7cd6a6cb25c0db7a7a880")
(setf (get hadmap_msgs::MapSplineCoeff :datatype-) "hadmap_msgs/MapSplineCoeff")
(setf (get hadmap_msgs::MapSplineCoeff :definition-)
      "float64 start_offset
uint8 degree
uint8 dimension
float64 scale
float64[] spline_knots
geometry_msgs/Point[] spline_points

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :hadmap_msgs/MapSplineCoeff "34d58849d5e7cd6a6cb25c0db7a7a880")


