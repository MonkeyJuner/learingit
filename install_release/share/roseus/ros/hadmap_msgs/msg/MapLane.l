;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::MapLane)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'MapLane (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MAPLANE")
  (make-package "HADMAP_MSGS::MAPLANE"))

(in-package "ROS")
;;//! \htmlinclude MapLane.msg.html


(defclass hadmap_msgs::MapLane
  :super ros::object
  :slots (_lane_type _poly_coeffs _predecessor _successor _lane_residual_len _speed_limit ))

(defmethod hadmap_msgs::MapLane
  (:init
   (&key
    ((:lane_type __lane_type) 0)
    ((:poly_coeffs __poly_coeffs) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::MapPolyCoeff :init) r)) r))
    ((:predecessor __predecessor) 0)
    ((:successor __successor) 0)
    ((:lane_residual_len __lane_residual_len) 0.0)
    ((:speed_limit __speed_limit) 0.0)
    )
   (send-super :init)
   (setq _lane_type (round __lane_type))
   (setq _poly_coeffs __poly_coeffs)
   (setq _predecessor (round __predecessor))
   (setq _successor (round __successor))
   (setq _lane_residual_len (float __lane_residual_len))
   (setq _speed_limit (float __speed_limit))
   self)
  (:lane_type
   (&optional __lane_type)
   (if __lane_type (setq _lane_type __lane_type)) _lane_type)
  (:poly_coeffs
   (&rest __poly_coeffs)
   (if (keywordp (car __poly_coeffs))
       (send* _poly_coeffs __poly_coeffs)
     (progn
       (if __poly_coeffs (setq _poly_coeffs (car __poly_coeffs)))
       _poly_coeffs)))
  (:predecessor
   (&optional __predecessor)
   (if __predecessor (setq _predecessor __predecessor)) _predecessor)
  (:successor
   (&optional __successor)
   (if __successor (setq _successor __successor)) _successor)
  (:lane_residual_len
   (&optional __lane_residual_len)
   (if __lane_residual_len (setq _lane_residual_len __lane_residual_len)) _lane_residual_len)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:serialization-length
   ()
   (+
    ;; uint8 _lane_type
    1
    ;; hadmap_msgs/MapPolyCoeff[] _poly_coeffs
    (apply #'+ (send-all _poly_coeffs :serialization-length)) 4
    ;; int16 _predecessor
    2
    ;; int16 _successor
    2
    ;; float32 _lane_residual_len
    4
    ;; float32 _speed_limit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _lane_type
       (write-byte _lane_type s)
     ;; hadmap_msgs/MapPolyCoeff[] _poly_coeffs
     (write-long (length _poly_coeffs) s)
     (dolist (elem _poly_coeffs)
       (send elem :serialize s)
       )
     ;; int16 _predecessor
       (write-word _predecessor s)
     ;; int16 _successor
       (write-word _successor s)
     ;; float32 _lane_residual_len
       (sys::poke _lane_residual_len (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _lane_type
     (setq _lane_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; hadmap_msgs/MapPolyCoeff[] _poly_coeffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poly_coeffs (let (r) (dotimes (i n) (push (instance hadmap_msgs::MapPolyCoeff :init) r)) r))
     (dolist (elem- _poly_coeffs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int16 _predecessor
     (setq _predecessor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _successor
     (setq _successor (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _lane_residual_len
     (setq _lane_residual_len (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hadmap_msgs::MapLane :md5sum-) "1afa43e53ccebe2d6ea6280b4380157c")
(setf (get hadmap_msgs::MapLane :datatype-) "hadmap_msgs/MapLane")
(setf (get hadmap_msgs::MapLane :definition-)
      "uint8 lane_type

MapPolyCoeff[] poly_coeffs

int16 predecessor
int16 successor

float32 lane_residual_len
float32 speed_limit

================================================================================
MSG: hadmap_msgs/MapPolyCoeff
float64 offset
float64[] poly_parameters

")



(provide :hadmap_msgs/MapLane "1afa43e53ccebe2d6ea6280b4380157c")


