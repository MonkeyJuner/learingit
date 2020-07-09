;; Auto-generated. Do not edit!


(when (boundp 'pncc_msgs::Gear)
  (if (not (find-package "PNCC_MSGS"))
    (make-package "PNCC_MSGS"))
  (shadow 'Gear (find-package "PNCC_MSGS")))
(unless (find-package "PNCC_MSGS::GEAR")
  (make-package "PNCC_MSGS::GEAR"))

(in-package "ROS")
;;//! \htmlinclude Gear.msg.html


(intern "*GEAR_P*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_P* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_P* 0)
(intern "*GEAR_R*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_R* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_R* 1)
(intern "*GEAR_N*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_N* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_N* 2)
(intern "*GEAR_D*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_D* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_D* 3)
(intern "*GEAR_1*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_1* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_1* 4)
(intern "*GEAR_2*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_2* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_2* 5)
(intern "*GEAR_3*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_3* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_3* 6)
(intern "*GEAR_4*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_4* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_4* 7)
(intern "*GEAR_5*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_5* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_5* 8)
(intern "*GEAR_6*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_6* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_6* 9)
(intern "*GEAR_7*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_7* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_7* 10)
(intern "*GEAR_8*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_8* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_8* 11)
(intern "*GEAR_9*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_9* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_9* 12)
(intern "*GEAR_10*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_10* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_10* 13)
(intern "*GEAR_11*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_11* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_11* 14)
(intern "*GEAR_12*" (find-package "PNCC_MSGS::GEAR"))
(shadow '*GEAR_12* (find-package "PNCC_MSGS::GEAR"))
(defconstant pncc_msgs::Gear::*GEAR_12* 15)
(defclass pncc_msgs::Gear
  :super ros::object
  :slots (_value ))

(defmethod pncc_msgs::Gear
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pncc_msgs::Gear :md5sum-) "7c8b6d8644724f061fa1138ce21b31f0")
(setf (get pncc_msgs::Gear :datatype-) "pncc_msgs/Gear")
(setf (get pncc_msgs::Gear :definition-)
      "uint8 GEAR_P = 0
uint8 GEAR_R = 1
uint8 GEAR_N = 2
uint8 GEAR_D = 3
uint8 GEAR_1 = 4
uint8 GEAR_2 = 5
uint8 GEAR_3 = 6
uint8 GEAR_4 = 7
uint8 GEAR_5 = 8
uint8 GEAR_6 = 9
uint8 GEAR_7 = 10
uint8 GEAR_8 = 11
uint8 GEAR_9 = 12
uint8 GEAR_10 = 13
uint8 GEAR_11 = 14
uint8 GEAR_12 = 15


uint8 value

")



(provide :pncc_msgs/Gear "7c8b6d8644724f061fa1138ce21b31f0")


