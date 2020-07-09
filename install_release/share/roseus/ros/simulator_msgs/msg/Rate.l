;; Auto-generated. Do not edit!


(when (boundp 'simulator_msgs::Rate)
  (if (not (find-package "SIMULATOR_MSGS"))
    (make-package "SIMULATOR_MSGS"))
  (shadow 'Rate (find-package "SIMULATOR_MSGS")))
(unless (find-package "SIMULATOR_MSGS::RATE")
  (make-package "SIMULATOR_MSGS::RATE"))

(in-package "ROS")
;;//! \htmlinclude Rate.msg.html


(defclass simulator_msgs::Rate
  :super ros::object
  :slots (_cycle_us _time_rate ))

(defmethod simulator_msgs::Rate
  (:init
   (&key
    ((:cycle_us __cycle_us) 0.0)
    ((:time_rate __time_rate) 0.0)
    )
   (send-super :init)
   (setq _cycle_us (float __cycle_us))
   (setq _time_rate (float __time_rate))
   self)
  (:cycle_us
   (&optional __cycle_us)
   (if __cycle_us (setq _cycle_us __cycle_us)) _cycle_us)
  (:time_rate
   (&optional __time_rate)
   (if __time_rate (setq _time_rate __time_rate)) _time_rate)
  (:serialization-length
   ()
   (+
    ;; float64 _cycle_us
    8
    ;; float64 _time_rate
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _cycle_us
       (sys::poke _cycle_us (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _time_rate
       (sys::poke _time_rate (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _cycle_us
     (setq _cycle_us (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _time_rate
     (setq _time_rate (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get simulator_msgs::Rate :md5sum-) "785d8d6cbab03eef8403afc2fa066006")
(setf (get simulator_msgs::Rate :datatype-) "simulator_msgs/Rate")
(setf (get simulator_msgs::Rate :definition-)
      "float64 cycle_us
float64 time_rate

")



(provide :simulator_msgs/Rate "785d8d6cbab03eef8403afc2fa066006")


