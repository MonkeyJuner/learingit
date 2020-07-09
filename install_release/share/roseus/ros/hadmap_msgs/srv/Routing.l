;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::Routing)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'Routing (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::ROUTING")
  (make-package "HADMAP_MSGS::ROUTING"))
(unless (find-package "HADMAP_MSGS::ROUTINGREQUEST")
  (make-package "HADMAP_MSGS::ROUTINGREQUEST"))
(unless (find-package "HADMAP_MSGS::ROUTINGRESPONSE")
  (make-package "HADMAP_MSGS::ROUTINGRESPONSE"))

(in-package "ROS")





(defclass hadmap_msgs::RoutingRequest
  :super ros::object
  :slots (_start_lane_id _dst_lane_id ))

(defmethod hadmap_msgs::RoutingRequest
  (:init
   (&key
    ((:start_lane_id __start_lane_id) "")
    ((:dst_lane_id __dst_lane_id) "")
    )
   (send-super :init)
   (setq _start_lane_id (string __start_lane_id))
   (setq _dst_lane_id (string __dst_lane_id))
   self)
  (:start_lane_id
   (&optional __start_lane_id)
   (if __start_lane_id (setq _start_lane_id __start_lane_id)) _start_lane_id)
  (:dst_lane_id
   (&optional __dst_lane_id)
   (if __dst_lane_id (setq _dst_lane_id __dst_lane_id)) _dst_lane_id)
  (:serialization-length
   ()
   (+
    ;; string _start_lane_id
    4 (length _start_lane_id)
    ;; string _dst_lane_id
    4 (length _dst_lane_id)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _start_lane_id
       (write-long (length _start_lane_id) s) (princ _start_lane_id s)
     ;; string _dst_lane_id
       (write-long (length _dst_lane_id) s) (princ _dst_lane_id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _start_lane_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _start_lane_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _dst_lane_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _dst_lane_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hadmap_msgs::RoutingResponse
  :super ros::object
  :slots (_planning_path ))

(defmethod hadmap_msgs::RoutingResponse
  (:init
   (&key
    ((:planning_path __planning_path) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _planning_path __planning_path)
   self)
  (:planning_path
   (&optional __planning_path)
   (if __planning_path (setq _planning_path __planning_path)) _planning_path)
  (:serialization-length
   ()
   (+
    ;; string[] _planning_path
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _planning_path)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _planning_path
     (write-long (length _planning_path) s)
     (dolist (elem _planning_path)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _planning_path
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _planning_path (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _planning_path i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass hadmap_msgs::Routing
  :super ros::object
  :slots ())

(setf (get hadmap_msgs::Routing :md5sum-) "1d09afa1493d77ed4bdd69b158969b61")
(setf (get hadmap_msgs::Routing :datatype-) "hadmap_msgs/Routing")
(setf (get hadmap_msgs::Routing :request) hadmap_msgs::RoutingRequest)
(setf (get hadmap_msgs::Routing :response) hadmap_msgs::RoutingResponse)

(defmethod hadmap_msgs::RoutingRequest
  (:response () (instance hadmap_msgs::RoutingResponse :init)))

(setf (get hadmap_msgs::RoutingRequest :md5sum-) "1d09afa1493d77ed4bdd69b158969b61")
(setf (get hadmap_msgs::RoutingRequest :datatype-) "hadmap_msgs/RoutingRequest")
(setf (get hadmap_msgs::RoutingRequest :definition-)
      "string start_lane_id
string dst_lane_id
---
string[] planning_path

")

(setf (get hadmap_msgs::RoutingResponse :md5sum-) "1d09afa1493d77ed4bdd69b158969b61")
(setf (get hadmap_msgs::RoutingResponse :datatype-) "hadmap_msgs/RoutingResponse")
(setf (get hadmap_msgs::RoutingResponse :definition-)
      "string start_lane_id
string dst_lane_id
---
string[] planning_path

")



(provide :hadmap_msgs/Routing "1d09afa1493d77ed4bdd69b158969b61")


