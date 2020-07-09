;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::MiniPoint)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'MiniPoint (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MINIPOINT")
  (make-package "HADMAP_MSGS::MINIPOINT"))

(in-package "ROS")
;;//! \htmlinclude MiniPoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass hadmap_msgs::MiniPoint
  :super ros::object
  :slots (_id _point ))

(defmethod hadmap_msgs::MiniPoint
  (:init
   (&key
    ((:id __id) 0)
    ((:point __point) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _point __point)
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
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; geometry_msgs/Point _point
    (send _point :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; geometry_msgs/Point _point
       (send _point :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _point
     (send _point :deserialize buf ptr-) (incf ptr- (send _point :serialization-length))
   ;;
   self)
  )

(setf (get hadmap_msgs::MiniPoint :md5sum-) "039fd761ab13b0a87ce0c7bb4c023250")
(setf (get hadmap_msgs::MiniPoint :datatype-) "hadmap_msgs/MiniPoint")
(setf (get hadmap_msgs::MiniPoint :definition-)
      "int32 id
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :hadmap_msgs/MiniPoint "039fd761ab13b0a87ce0c7bb4c023250")


