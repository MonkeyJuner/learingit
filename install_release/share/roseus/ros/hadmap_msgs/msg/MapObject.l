;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::MapObject)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'MapObject (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MAPOBJECT")
  (make-package "HADMAP_MSGS::MAPOBJECT"))

(in-package "ROS")
;;//! \htmlinclude MapObject.msg.html


(defclass hadmap_msgs::MapObject
  :super ros::object
  :slots ())

(defmethod hadmap_msgs::MapObject
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get hadmap_msgs::MapObject :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get hadmap_msgs::MapObject :datatype-) "hadmap_msgs/MapObject")
(setf (get hadmap_msgs::MapObject :definition-)
      "
")



(provide :hadmap_msgs/MapObject "d41d8cd98f00b204e9800998ecf8427e")


