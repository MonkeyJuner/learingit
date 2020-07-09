;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::MapReferLine)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'MapReferLine (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MAPREFERLINE")
  (make-package "HADMAP_MSGS::MAPREFERLINE"))

(in-package "ROS")
;;//! \htmlinclude MapReferLine.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hadmap_msgs::MapReferLine
  :super ros::object
  :slots (_start_point _heading _length _spline_coeff ))

(defmethod hadmap_msgs::MapReferLine
  (:init
   (&key
    ((:start_point __start_point) (instance geometry_msgs::Point :init))
    ((:heading __heading) 0.0)
    ((:length __length) 0.0)
    ((:spline_coeff __spline_coeff) (instance hadmap_msgs::MapSplineCoeff :init))
    )
   (send-super :init)
   (setq _start_point __start_point)
   (setq _heading (float __heading))
   (setq _length (float __length))
   (setq _spline_coeff __spline_coeff)
   self)
  (:start_point
   (&rest __start_point)
   (if (keywordp (car __start_point))
       (send* _start_point __start_point)
     (progn
       (if __start_point (setq _start_point (car __start_point)))
       _start_point)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:length
   (&optional __length)
   (if __length (setq _length __length)) _length)
  (:spline_coeff
   (&rest __spline_coeff)
   (if (keywordp (car __spline_coeff))
       (send* _spline_coeff __spline_coeff)
     (progn
       (if __spline_coeff (setq _spline_coeff (car __spline_coeff)))
       _spline_coeff)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _start_point
    (send _start_point :serialization-length)
    ;; float64 _heading
    8
    ;; float64 _length
    8
    ;; hadmap_msgs/MapSplineCoeff _spline_coeff
    (send _spline_coeff :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _start_point
       (send _start_point :serialize s)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _length
       (sys::poke _length (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; hadmap_msgs/MapSplineCoeff _spline_coeff
       (send _spline_coeff :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _start_point
     (send _start_point :deserialize buf ptr-) (incf ptr- (send _start_point :serialization-length))
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _length
     (setq _length (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; hadmap_msgs/MapSplineCoeff _spline_coeff
     (send _spline_coeff :deserialize buf ptr-) (incf ptr- (send _spline_coeff :serialization-length))
   ;;
   self)
  )

(setf (get hadmap_msgs::MapReferLine :md5sum-) "34d3d1855a2eb9af60516c0b14a979dd")
(setf (get hadmap_msgs::MapReferLine :datatype-) "hadmap_msgs/MapReferLine")
(setf (get hadmap_msgs::MapReferLine :definition-)
      "
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

")



(provide :hadmap_msgs/MapReferLine "34d3d1855a2eb9af60516c0b14a979dd")


