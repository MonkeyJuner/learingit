;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::LaneIds)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'LaneIds (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::LANEIDS")
  (make-package "HADMAP_MSGS::LANEIDS"))
(unless (find-package "HADMAP_MSGS::LANEIDSREQUEST")
  (make-package "HADMAP_MSGS::LANEIDSREQUEST"))
(unless (find-package "HADMAP_MSGS::LANEIDSRESPONSE")
  (make-package "HADMAP_MSGS::LANEIDSRESPONSE"))

(in-package "ROS")





(defclass hadmap_msgs::LaneIdsRequest
  :super ros::object
  :slots (_idx ))

(defmethod hadmap_msgs::LaneIdsRequest
  (:init
   (&key
    ((:idx __idx) 0)
    )
   (send-super :init)
   (setq _idx (round __idx))
   self)
  (:idx
   (&optional __idx)
   (if __idx (setq _idx __idx)) _idx)
  (:serialization-length
   ()
   (+
    ;; int32 _idx
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _idx
       (write-long _idx s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _idx
     (setq _idx (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass hadmap_msgs::LaneIdsResponse
  :super ros::object
  :slots (_lane_ids ))

(defmethod hadmap_msgs::LaneIdsResponse
  (:init
   (&key
    ((:lane_ids __lane_ids) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _lane_ids __lane_ids)
   self)
  (:lane_ids
   (&optional __lane_ids)
   (if __lane_ids (setq _lane_ids __lane_ids)) _lane_ids)
  (:serialization-length
   ()
   (+
    ;; string[] _lane_ids
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _lane_ids)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _lane_ids
     (write-long (length _lane_ids) s)
     (dolist (elem _lane_ids)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _lane_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lane_ids (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _lane_ids i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(defclass hadmap_msgs::LaneIds
  :super ros::object
  :slots ())

(setf (get hadmap_msgs::LaneIds :md5sum-) "7877fa7c982b195fc7441f07ae1fc06e")
(setf (get hadmap_msgs::LaneIds :datatype-) "hadmap_msgs/LaneIds")
(setf (get hadmap_msgs::LaneIds :request) hadmap_msgs::LaneIdsRequest)
(setf (get hadmap_msgs::LaneIds :response) hadmap_msgs::LaneIdsResponse)

(defmethod hadmap_msgs::LaneIdsRequest
  (:response () (instance hadmap_msgs::LaneIdsResponse :init)))

(setf (get hadmap_msgs::LaneIdsRequest :md5sum-) "7877fa7c982b195fc7441f07ae1fc06e")
(setf (get hadmap_msgs::LaneIdsRequest :datatype-) "hadmap_msgs/LaneIdsRequest")
(setf (get hadmap_msgs::LaneIdsRequest :definition-)
      "int32 idx
---
string[] lane_ids
")

(setf (get hadmap_msgs::LaneIdsResponse :md5sum-) "7877fa7c982b195fc7441f07ae1fc06e")
(setf (get hadmap_msgs::LaneIdsResponse :datatype-) "hadmap_msgs/LaneIdsResponse")
(setf (get hadmap_msgs::LaneIdsResponse :definition-)
      "int32 idx
---
string[] lane_ids
")



(provide :hadmap_msgs/LaneIds "7877fa7c982b195fc7441f07ae1fc06e")


