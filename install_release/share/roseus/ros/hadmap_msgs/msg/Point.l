;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::Point)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'Point (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::POINT")
  (make-package "HADMAP_MSGS::POINT"))

(in-package "ROS")
;;//! \htmlinclude Point.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hadmap_msgs::Point
  :super ros::object
  :slots (_id _point _heading _delta_s _property ))

(defmethod hadmap_msgs::Point
  (:init
   (&key
    ((:id __id) 0)
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:heading __heading) 0.0)
    ((:delta_s __delta_s) 0.0)
    ((:property __property) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _point __point)
   (setq _heading (float __heading))
   (setq _delta_s (float __delta_s))
   (setq _property (round __property))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:point
   (&rest __point)
   (if (keywordp (car __point))
       (send* _point __point)
     (progn
       (if __point (setq _point (car __point)))
       _point)))
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:delta_s
   (&optional __delta_s)
   (if __delta_s (setq _delta_s __delta_s)) _delta_s)
  (:property
   (&optional __property)
   (if __property (setq _property __property)) _property)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; float32 _heading
    4
    ;; float64 _delta_s
    8
    ;; uint8 _property
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _delta_s
       (sys::poke _delta_s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _property
       (write-byte _property s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _delta_s
     (setq _delta_s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _property
     (setq _property (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get hadmap_msgs::Point :md5sum-) "2ab908e483b91e26b3476f90cb2dabd7")
(setf (get hadmap_msgs::Point :datatype-) "hadmap_msgs/Point")
(setf (get hadmap_msgs::Point :definition-)
      "int32 id

geometry_msgs/Point point

## not used

float32 heading
float64 delta_s
uint8 property

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :hadmap_msgs/Point "2ab908e483b91e26b3476f90cb2dabd7")


