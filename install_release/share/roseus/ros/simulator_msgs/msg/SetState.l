;; Auto-generated. Do not edit!


(when (boundp 'simulator_msgs::SetState)
  (if (not (find-package "SIMULATOR_MSGS"))
    (make-package "SIMULATOR_MSGS"))
  (shadow 'SetState (find-package "SIMULATOR_MSGS")))
(unless (find-package "SIMULATOR_MSGS::SETSTATE")
  (make-package "SIMULATOR_MSGS::SETSTATE"))

(in-package "ROS")
;;//! \htmlinclude SetState.msg.html


(defclass simulator_msgs::SetState
  :super ros::object
  :slots (_x _y _z _heading_ang _speed ))

(defmethod simulator_msgs::SetState
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:heading_ang __heading_ang) 0.0)
    ((:speed __speed) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _heading_ang (float __heading_ang))
   (setq _speed (float __speed))
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
  (:heading_ang
   (&optional __heading_ang)
   (if __heading_ang (setq _heading_ang __heading_ang)) _heading_ang)
  (:speed
   (&optional __speed)
   (if __speed (setq _speed __speed)) _speed)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _heading_ang
    8
    ;; float64 _speed
    8
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
     ;; float64 _heading_ang
       (sys::poke _heading_ang (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _speed
       (sys::poke _speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _heading_ang
     (setq _heading_ang (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _speed
     (setq _speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simulator_msgs::SetState :md5sum-) "b8669ff7baac98ebc208508bbb34b11b")
(setf (get simulator_msgs::SetState :datatype-) "simulator_msgs/SetState")
(setf (get simulator_msgs::SetState :definition-)
      "float64 x             # m
float64 y             # m
float64 z             # m
float64 heading_ang   # rad
float64 speed         # m/s

")



(provide :simulator_msgs/SetState "b8669ff7baac98ebc208508bbb34b11b")


