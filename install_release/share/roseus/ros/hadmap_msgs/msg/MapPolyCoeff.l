;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::MapPolyCoeff)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'MapPolyCoeff (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MAPPOLYCOEFF")
  (make-package "HADMAP_MSGS::MAPPOLYCOEFF"))

(in-package "ROS")
;;//! \htmlinclude MapPolyCoeff.msg.html


(defclass hadmap_msgs::MapPolyCoeff
  :super ros::object
  :slots (_offset _poly_parameters ))

(defmethod hadmap_msgs::MapPolyCoeff
  (:init
   (&key
    ((:offset __offset) 0.0)
    ((:poly_parameters __poly_parameters) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _offset (float __offset))
   (setq _poly_parameters __poly_parameters)
   self)
  (:offset
   (&optional __offset)
   (if __offset (setq _offset __offset)) _offset)
  (:poly_parameters
   (&optional __poly_parameters)
   (if __poly_parameters (setq _poly_parameters __poly_parameters)) _poly_parameters)
  (:serialization-length
   ()
   (+
    ;; float64 _offset
    8
    ;; float64[] _poly_parameters
    (* 8    (length _poly_parameters)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _offset
       (sys::poke _offset (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64[] _poly_parameters
     (write-long (length _poly_parameters) s)
     (dotimes (i (length _poly_parameters))
       (sys::poke (elt _poly_parameters i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _offset
     (setq _offset (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64[] _poly_parameters
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _poly_parameters (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _poly_parameters i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hadmap_msgs::MapPolyCoeff :md5sum-) "e66720b6436770bcd662ec869090bc14")
(setf (get hadmap_msgs::MapPolyCoeff :datatype-) "hadmap_msgs/MapPolyCoeff")
(setf (get hadmap_msgs::MapPolyCoeff :definition-)
      "float64 offset
float64[] poly_parameters

")



(provide :hadmap_msgs/MapPolyCoeff "e66720b6436770bcd662ec869090bc14")


