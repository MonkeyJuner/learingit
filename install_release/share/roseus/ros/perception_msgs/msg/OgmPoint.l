;; Auto-generated. Do not edit!


(when (boundp 'perception_msgs::OgmPoint)
  (if (not (find-package "PERCEPTION_MSGS"))
    (make-package "PERCEPTION_MSGS"))
  (shadow 'OgmPoint (find-package "PERCEPTION_MSGS")))
(unless (find-package "PERCEPTION_MSGS::OGMPOINT")
  (make-package "PERCEPTION_MSGS::OGMPOINT"))

(in-package "ROS")
;;//! \htmlinclude OgmPoint.msg.html


(intern "*UNCLASSIFIED*" (find-package "PERCEPTION_MSGS::OGMPOINT"))
(shadow '*UNCLASSIFIED* (find-package "PERCEPTION_MSGS::OGMPOINT"))
(defconstant perception_msgs::OgmPoint::*UNCLASSIFIED* 0)
(intern "*UNKNOWN_SMALL*" (find-package "PERCEPTION_MSGS::OGMPOINT"))
(shadow '*UNKNOWN_SMALL* (find-package "PERCEPTION_MSGS::OGMPOINT"))
(defconstant perception_msgs::OgmPoint::*UNKNOWN_SMALL* 1)
(intern "*UNKNOWN_BIG*" (find-package "PERCEPTION_MSGS::OGMPOINT"))
(shadow '*UNKNOWN_BIG* (find-package "PERCEPTION_MSGS::OGMPOINT"))
(defconstant perception_msgs::OgmPoint::*UNKNOWN_BIG* 2)
(intern "*PEDESTRIAN*" (find-package "PERCEPTION_MSGS::OGMPOINT"))
(shadow '*PEDESTRIAN* (find-package "PERCEPTION_MSGS::OGMPOINT"))
(defconstant perception_msgs::OgmPoint::*PEDESTRIAN* 3)
(intern "*BIKE*" (find-package "PERCEPTION_MSGS::OGMPOINT"))
(shadow '*BIKE* (find-package "PERCEPTION_MSGS::OGMPOINT"))
(defconstant perception_msgs::OgmPoint::*BIKE* 4)
(intern "*CAR*" (find-package "PERCEPTION_MSGS::OGMPOINT"))
(shadow '*CAR* (find-package "PERCEPTION_MSGS::OGMPOINT"))
(defconstant perception_msgs::OgmPoint::*CAR* 5)
(intern "*TRUCK*" (find-package "PERCEPTION_MSGS::OGMPOINT"))
(shadow '*TRUCK* (find-package "PERCEPTION_MSGS::OGMPOINT"))
(defconstant perception_msgs::OgmPoint::*TRUCK* 6)
(defclass perception_msgs::OgmPoint
  :super ros::object
  :slots (_x _y _z _p _type ))

(defmethod perception_msgs::OgmPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:p __p) 0.0)
    ((:type __type) 0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _p (float __p))
   (setq _type (round __type))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:p
   (&optional __p)
   (if __p (setq _p __p)) _p)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _p
    8
    ;; uint8 _type
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _p
       (sys::poke _p (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _type
       (write-byte _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _p
     (setq _p (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get perception_msgs::OgmPoint :md5sum-) "e2869d09395abac7946a917ec677fb46")
(setf (get perception_msgs::OgmPoint :datatype-) "perception_msgs/OgmPoint")
(setf (get perception_msgs::OgmPoint :definition-)
      "uint8 UNCLASSIFIED = 0
uint8 UNKNOWN_SMALL = 1
uint8 UNKNOWN_BIG = 2
uint8 PEDESTRIAN = 3
uint8 BIKE = 4
uint8 CAR = 5
uint8 TRUCK = 6

float64 x
float64 y
float64 z
float64 p
uint8 type


")



(provide :perception_msgs/OgmPoint "e2869d09395abac7946a917ec677fb46")


