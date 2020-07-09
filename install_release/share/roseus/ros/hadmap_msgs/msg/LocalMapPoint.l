;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::LocalMapPoint)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'LocalMapPoint (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::LOCALMAPPOINT")
  (make-package "HADMAP_MSGS::LOCALMAPPOINT"))

(in-package "ROS")
;;//! \htmlinclude LocalMapPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(intern "*TYPE_CROSS*" (find-package "HADMAP_MSGS::LOCALMAPPOINT"))
(shadow '*TYPE_CROSS* (find-package "HADMAP_MSGS::LOCALMAPPOINT"))
(defconstant hadmap_msgs::LocalMapPoint::*TYPE_CROSS* 0)
(intern "*TYPE_NOT_CROSS*" (find-package "HADMAP_MSGS::LOCALMAPPOINT"))
(shadow '*TYPE_NOT_CROSS* (find-package "HADMAP_MSGS::LOCALMAPPOINT"))
(defconstant hadmap_msgs::LocalMapPoint::*TYPE_NOT_CROSS* 1)
(defclass hadmap_msgs::LocalMapPoint
  :super ros::object
  :slots (_point _heading _type _speed_limit ))

(defmethod hadmap_msgs::LocalMapPoint
  (:init
   (&key
    ((:point __point) (instance geometry_msgs::Point :init))
    ((:heading __heading) 0.0)
    ((:type __type) 0)
    ((:speed_limit __speed_limit) 0.0)
    )
   (send-super :init)
   (setq _point __point)
   (setq _heading (float __heading))
   (setq _type (round __type))
   (setq _speed_limit (float __speed_limit))
   self)
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
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ;; float32 _heading
    4
    ;; uint8 _type
    1
    ;; float32 _speed_limit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;; float32 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _type
       (write-byte _type s)
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;; float32 _heading
     (setq _heading (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hadmap_msgs::LocalMapPoint :md5sum-) "44cd12dbc0c0b0aceac900ebfe326f30")
(setf (get hadmap_msgs::LocalMapPoint :datatype-) "hadmap_msgs/LocalMapPoint")
(setf (get hadmap_msgs::LocalMapPoint :definition-)
      "uint8 TYPE_CROSS = 0
uint8 TYPE_NOT_CROSS = 1

# lane point localization
geometry_msgs/Point point
# heading angle
float32 heading
# now: cross or not
uint8 type
# speed limit
float32 speed_limit

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :hadmap_msgs/LocalMapPoint "44cd12dbc0c0b0aceac900ebfe326f30")


