;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::MiniPath)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'MiniPath (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::MINIPATH")
  (make-package "HADMAP_MSGS::MINIPATH"))
(unless (find-package "HADMAP_MSGS::MINIPATHREQUEST")
  (make-package "HADMAP_MSGS::MINIPATHREQUEST"))
(unless (find-package "HADMAP_MSGS::MINIPATHRESPONSE")
  (make-package "HADMAP_MSGS::MINIPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))




(defclass hadmap_msgs::MiniPathRequest
  :super ros::object
  :slots (_position ))

(defmethod hadmap_msgs::MiniPathRequest
  (:init
   (&key
    ((:position __position) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _position __position)
   self)
  (:position
   (&rest __position)
   (if (keywordp (car __position))
       (send* _position __position)
     (progn
       (if __position (setq _position (car __position)))
       _position)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point _position
    (send _position :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point _position
       (send _position :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point _position
     (send _position :deserialize buf ptr-) (incf ptr- (send _position :serialization-length))
   ;;
   self)
  )

(defclass hadmap_msgs::MiniPathResponse
  :super ros::object
  :slots (_joint_path ))

(defmethod hadmap_msgs::MiniPathResponse
  (:init
   (&key
    ((:joint_path __joint_path) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::MiniPoint :init) r)) r))
    )
   (send-super :init)
   (setq _joint_path __joint_path)
   self)
  (:joint_path
   (&rest __joint_path)
   (if (keywordp (car __joint_path))
       (send* _joint_path __joint_path)
     (progn
       (if __joint_path (setq _joint_path (car __joint_path)))
       _joint_path)))
  (:serialization-length
   ()
   (+
    ;; hadmap_msgs/MiniPoint[] _joint_path
    (apply #'+ (send-all _joint_path :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hadmap_msgs/MiniPoint[] _joint_path
     (write-long (length _joint_path) s)
     (dolist (elem _joint_path)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hadmap_msgs/MiniPoint[] _joint_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_path (let (r) (dotimes (i n) (push (instance hadmap_msgs::MiniPoint :init) r)) r))
     (dolist (elem- _joint_path)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass hadmap_msgs::MiniPath
  :super ros::object
  :slots ())

(setf (get hadmap_msgs::MiniPath :md5sum-) "236efb3fe2cd8a6bbaa85a93082c96ac")
(setf (get hadmap_msgs::MiniPath :datatype-) "hadmap_msgs/MiniPath")
(setf (get hadmap_msgs::MiniPath :request) hadmap_msgs::MiniPathRequest)
(setf (get hadmap_msgs::MiniPath :response) hadmap_msgs::MiniPathResponse)

(defmethod hadmap_msgs::MiniPathRequest
  (:response () (instance hadmap_msgs::MiniPathResponse :init)))

(setf (get hadmap_msgs::MiniPathRequest :md5sum-) "236efb3fe2cd8a6bbaa85a93082c96ac")
(setf (get hadmap_msgs::MiniPathRequest :datatype-) "hadmap_msgs/MiniPathRequest")
(setf (get hadmap_msgs::MiniPathRequest :definition-)
      "
geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---


MiniPoint[] joint_path


================================================================================
MSG: hadmap_msgs/MiniPoint
int32 id
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")

(setf (get hadmap_msgs::MiniPathResponse :md5sum-) "236efb3fe2cd8a6bbaa85a93082c96ac")
(setf (get hadmap_msgs::MiniPathResponse :datatype-) "hadmap_msgs/MiniPathResponse")
(setf (get hadmap_msgs::MiniPathResponse :definition-)
      "
geometry_msgs/Point position


================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
---


MiniPoint[] joint_path


================================================================================
MSG: hadmap_msgs/MiniPoint
int32 id
geometry_msgs/Point point

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z
")



(provide :hadmap_msgs/MiniPath "236efb3fe2cd8a6bbaa85a93082c96ac")


