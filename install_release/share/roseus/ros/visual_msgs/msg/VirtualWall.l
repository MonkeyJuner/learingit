;; Auto-generated. Do not edit!


(when (boundp 'visual_msgs::VirtualWall)
  (if (not (find-package "VISUAL_MSGS"))
    (make-package "VISUAL_MSGS"))
  (shadow 'VirtualWall (find-package "VISUAL_MSGS")))
(unless (find-package "VISUAL_MSGS::VIRTUALWALL")
  (make-package "VISUAL_MSGS::VIRTUALWALL"))

(in-package "ROS")
;;//! \htmlinclude VirtualWall.msg.html


(intern "*UNCLASSIFIED*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*UNCLASSIFIED* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*UNCLASSIFIED* 0)
(intern "*STOP_SIGN_ABSOLUTE*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*STOP_SIGN_ABSOLUTE* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*STOP_SIGN_ABSOLUTE* 1)
(intern "*STOP_SIGN_RELATIVE*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*STOP_SIGN_RELATIVE* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*STOP_SIGN_RELATIVE* 2)
(intern "*OBJECT*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*OBJECT* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*OBJECT* 3)
(intern "*OBJECT_VIRTUAL*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*OBJECT_VIRTUAL* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*OBJECT_VIRTUAL* 4)
(intern "*OBJECT_CLOSE*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*OBJECT_CLOSE* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*OBJECT_CLOSE* 5)
(intern "*OGM*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*OGM* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*OGM* 6)
(intern "*HMAP_SPEED_LIMIT*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*HMAP_SPEED_LIMIT* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*HMAP_SPEED_LIMIT* 7)
(intern "*CURV_SPEED_LIMIT*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*CURV_SPEED_LIMIT* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*CURV_SPEED_LIMIT* 8)
(intern "*LONGITUDE_CMD*" (find-package "VISUAL_MSGS::VIRTUALWALL"))
(shadow '*LONGITUDE_CMD* (find-package "VISUAL_MSGS::VIRTUALWALL"))
(defconstant visual_msgs::VirtualWall::*LONGITUDE_CMD* 9)
(defclass visual_msgs::VirtualWall
  :super ros::object
  :slots (_type _id _distance _speed _x _y _z _heading ))

(defmethod visual_msgs::VirtualWall
  (:init
   (&key
    ((:type __type) 0)
    ((:id __id) 0)
    ((:distance __distance) 0.0)
    ((:speed __speed) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:heading __heading) 0.0)
    )
   (send-super :init)
   (setq _type (round __type))
   (setq _id (round __id))
   (setq _distance (float __distance))
   (setq _speed (float __speed))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _heading (float __heading))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:heading
   (&optional __heading)
   (if __heading (setq _heading __heading)) _heading)
  (:serialization-length
   ()
   (+
    ;; uint8 _type
    1
    ;; uint32 _id
    4
    ;; float64 _distance
    8
    ;; float64 _speed
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _heading
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _type
       (write-byte _type s)
     ;; uint32 _id
       (write-long _id s)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _heading
       (sys::poke _heading (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _heading
     (setq _heading (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get visual_msgs::VirtualWall :md5sum-) "551524b8a92acd2689036d94355e750a")
(setf (get visual_msgs::VirtualWall :datatype-) "visual_msgs/VirtualWall")
(setf (get visual_msgs::VirtualWall :definition-)
      "uint8 UNCLASSIFIED          = 0
uint8 STOP_SIGN_ABSOLUTE    = 1
uint8 STOP_SIGN_RELATIVE    = 2
uint8 OBJECT                = 3
uint8 OBJECT_VIRTUAL        = 4
uint8 OBJECT_CLOSE          = 5
uint8 OGM                   = 6
uint8 HMAP_SPEED_LIMIT      = 7
uint8 CURV_SPEED_LIMIT      = 8
uint8 LONGITUDE_CMD         = 9

uint8   type
uint32  id
float64 distance
float64 speed

float64 x           # Optional
float64 y           # Optional
float64 z           # Optional
float64 heading     # Optional



")



(provide :visual_msgs/VirtualWall "551524b8a92acd2689036d94355e750a")


