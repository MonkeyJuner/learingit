;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::Container)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'Container (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::CONTAINER")
  (make-package "TOS_MSGS::CONTAINER"))

(in-package "ROS")
;;//! \htmlinclude Container.msg.html


(defclass tos_msgs::Container
  :super ros::object
  :slots (_container_id _container_size _container_weight _container_pos ))

(defmethod tos_msgs::Container
  (:init
   (&key
    ((:container_id __container_id) "")
    ((:container_size __container_size) 0)
    ((:container_weight __container_weight) 0)
    ((:container_pos __container_pos) 0)
    )
   (send-super :init)
   (setq _container_id (string __container_id))
   (setq _container_size (round __container_size))
   (setq _container_weight (round __container_weight))
   (setq _container_pos (round __container_pos))
   self)
  (:container_id
   (&optional __container_id)
   (if __container_id (setq _container_id __container_id)) _container_id)
  (:container_size
   (&optional __container_size)
   (if __container_size (setq _container_size __container_size)) _container_size)
  (:container_weight
   (&optional __container_weight)
   (if __container_weight (setq _container_weight __container_weight)) _container_weight)
  (:container_pos
   (&optional __container_pos)
   (if __container_pos (setq _container_pos __container_pos)) _container_pos)
  (:serialization-length
   ()
   (+
    ;; string _container_id
    4 (length _container_id)
    ;; uint8 _container_size
    1
    ;; int32 _container_weight
    4
    ;; uint8 _container_pos
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _container_id
       (write-long (length _container_id) s) (princ _container_id s)
     ;; uint8 _container_size
       (write-byte _container_size s)
     ;; int32 _container_weight
       (write-long _container_weight s)
     ;; uint8 _container_pos
       (write-byte _container_pos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _container_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _container_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; uint8 _container_size
     (setq _container_size (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _container_weight
     (setq _container_weight (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint8 _container_pos
     (setq _container_pos (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get tos_msgs::Container :md5sum-) "fd22eca006ec43bbf4e6912d6c115e28")
(setf (get tos_msgs::Container :datatype-) "tos_msgs/Container")
(setf (get tos_msgs::Container :definition-)
      "string container_id
uint8 container_size
int32 container_weight
uint8 container_pos 

")



(provide :tos_msgs/Container "fd22eca006ec43bbf4e6912d6c115e28")


