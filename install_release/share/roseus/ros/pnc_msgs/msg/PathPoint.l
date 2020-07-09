;; Auto-generated. Do not edit!


(when (boundp 'pnc_msgs::PathPoint)
  (if (not (find-package "PNC_MSGS"))
    (make-package "PNC_MSGS"))
  (shadow 'PathPoint (find-package "PNC_MSGS")))
(unless (find-package "PNC_MSGS::PATHPOINT")
  (make-package "PNC_MSGS::PATHPOINT"))

(in-package "ROS")
;;//! \htmlinclude PathPoint.msg.html


(defclass pnc_msgs::PathPoint
  :super ros::object
  :slots (_x _y _z _s _theta _kappa _dkappa _ddkappa ))

(defmethod pnc_msgs::PathPoint
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:s __s) 0.0)
    ((:theta __theta) 0.0)
    ((:kappa __kappa) 0.0)
    ((:dkappa __dkappa) 0.0)
    ((:ddkappa __ddkappa) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _s (float __s))
   (setq _theta (float __theta))
   (setq _kappa (float __kappa))
   (setq _dkappa (float __dkappa))
   (setq _ddkappa (float __ddkappa))
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
  (:s
   (&optional __s)
   (if __s (setq _s __s)) _s)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:kappa
   (&optional __kappa)
   (if __kappa (setq _kappa __kappa)) _kappa)
  (:dkappa
   (&optional __dkappa)
   (if __dkappa (setq _dkappa __dkappa)) _dkappa)
  (:ddkappa
   (&optional __ddkappa)
   (if __ddkappa (setq _ddkappa __ddkappa)) _ddkappa)
  (:serialization-length
   ()
   (+
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _s
    8
    ;; float64 _theta
    8
    ;; float64 _kappa
    8
    ;; float64 _dkappa
    8
    ;; float64 _ddkappa
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
     ;; float64 _s
       (sys::poke _s (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kappa
       (sys::poke _kappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _dkappa
       (sys::poke _dkappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ddkappa
       (sys::poke _ddkappa (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _s
     (setq _s (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _theta
     (setq _theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kappa
     (setq _kappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _dkappa
     (setq _dkappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ddkappa
     (setq _ddkappa (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pnc_msgs::PathPoint :md5sum-) "7f73407735ccef88385b95017d2ec68a")
(setf (get pnc_msgs::PathPoint :datatype-) "pnc_msgs/PathPoint")
(setf (get pnc_msgs::PathPoint :definition-)
      "# coordinates in [m]
float64 x
float64 y
float64 z

# accumulated distance from beginning of the path in [m]
float64 s

# direction on the x-y plane in [0 ~ 2π]
float64 theta

# curvature on the x-y planning
float64 kappa

# derivative of kappa w.r.t s.
float64 dkappa

# derivative of derivative of kappa w.r.t s.
float64 ddkappa
")



(provide :pnc_msgs/PathPoint "7f73407735ccef88385b95017d2ec68a")


