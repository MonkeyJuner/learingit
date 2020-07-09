;; Auto-generated. Do not edit!


(when (boundp 'localization_msgs::StopPoint)
  (if (not (find-package "LOCALIZATION_MSGS"))
    (make-package "LOCALIZATION_MSGS"))
  (shadow 'StopPoint (find-package "LOCALIZATION_MSGS")))
(unless (find-package "LOCALIZATION_MSGS::STOPPOINT")
  (make-package "LOCALIZATION_MSGS::STOPPOINT"))

(in-package "ROS")
;;//! \htmlinclude StopPoint.msg.html


(intern "*TYPE_CRANE*" (find-package "LOCALIZATION_MSGS::STOPPOINT"))
(shadow '*TYPE_CRANE* (find-package "LOCALIZATION_MSGS::STOPPOINT"))
(defconstant localization_msgs::StopPoint::*TYPE_CRANE* 0)
(intern "*TYPE_YARD*" (find-package "LOCALIZATION_MSGS::STOPPOINT"))
(shadow '*TYPE_YARD* (find-package "LOCALIZATION_MSGS::STOPPOINT"))
(defconstant localization_msgs::StopPoint::*TYPE_YARD* 1)
(intern "*TYPE_OTHER*" (find-package "LOCALIZATION_MSGS::STOPPOINT"))
(shadow '*TYPE_OTHER* (find-package "LOCALIZATION_MSGS::STOPPOINT"))
(defconstant localization_msgs::StopPoint::*TYPE_OTHER* 2)
(defclass localization_msgs::StopPoint
  :super ros::object
  :slots (_id _distance_shift _angle _distance_vertical _type _decelerate ))

(defmethod localization_msgs::StopPoint
  (:init
   (&key
    ((:id __id) 0)
    ((:distance_shift __distance_shift) 0.0)
    ((:angle __angle) 0.0)
    ((:distance_vertical __distance_vertical) 0.0)
    ((:type __type) 0)
    ((:decelerate __decelerate) nil)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _distance_shift (float __distance_shift))
   (setq _angle (float __angle))
   (setq _distance_vertical (float __distance_vertical))
   (setq _type (round __type))
   (setq _decelerate __decelerate)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:distance_shift
   (&optional __distance_shift)
   (if __distance_shift (setq _distance_shift __distance_shift)) _distance_shift)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:distance_vertical
   (&optional __distance_vertical)
   (if __distance_vertical (setq _distance_vertical __distance_vertical)) _distance_vertical)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:decelerate
   (&optional __decelerate)
   (if __decelerate (setq _decelerate __decelerate)) _decelerate)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; float64 _distance_shift
    8
    ;; float64 _angle
    8
    ;; float64 _distance_vertical
    8
    ;; uint8 _type
    1
    ;; bool _decelerate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; float64 _distance_shift
       (sys::poke _distance_shift (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance_vertical
       (sys::poke _distance_vertical (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _type
       (write-byte _type s)
     ;; bool _decelerate
       (if _decelerate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _distance_shift
     (setq _distance_shift (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance_vertical
     (setq _distance_vertical (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _decelerate
     (setq _decelerate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get localization_msgs::StopPoint :md5sum-) "857da375e16b789899f14886149cb405")
(setf (get localization_msgs::StopPoint :datatype-) "localization_msgs/StopPoint")
(setf (get localization_msgs::StopPoint :definition-)
      "# main key
int32 id

# distance, [0, unlimit]
float64 distance_shift


float64 angle # rad
float64 distance_vertical



uint8 TYPE_CRANE = 0
uint8 TYPE_YARD = 1
uint8 TYPE_OTHER = 2

# type
uint8 type

# decelerate flag
bool decelerate # true



")



(provide :localization_msgs/StopPoint "857da375e16b789899f14886149cb405")


