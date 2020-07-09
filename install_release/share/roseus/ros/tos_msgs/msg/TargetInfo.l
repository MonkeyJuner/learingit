;; Auto-generated. Do not edit!


(when (boundp 'tos_msgs::TargetInfo)
  (if (not (find-package "TOS_MSGS"))
    (make-package "TOS_MSGS"))
  (shadow 'TargetInfo (find-package "TOS_MSGS")))
(unless (find-package "TOS_MSGS::TARGETINFO")
  (make-package "TOS_MSGS::TARGETINFO"))

(in-package "ROS")
;;//! \htmlinclude TargetInfo.msg.html


(intern "*NORMAL_YARD_CRANE*" (find-package "TOS_MSGS::TARGETINFO"))
(shadow '*NORMAL_YARD_CRANE* (find-package "TOS_MSGS::TARGETINFO"))
(defconstant tos_msgs::TargetInfo::*NORMAL_YARD_CRANE* 0)
(intern "*AUTOMATIC_YARD_CRANE*" (find-package "TOS_MSGS::TARGETINFO"))
(shadow '*AUTOMATIC_YARD_CRANE* (find-package "TOS_MSGS::TARGETINFO"))
(defconstant tos_msgs::TargetInfo::*AUTOMATIC_YARD_CRANE* 1)
(intern "*GANTRY_CRANE*" (find-package "TOS_MSGS::TARGETINFO"))
(shadow '*GANTRY_CRANE* (find-package "TOS_MSGS::TARGETINFO"))
(defconstant tos_msgs::TargetInfo::*GANTRY_CRANE* 2)
(intern "*TRANSFER_ZONE*" (find-package "TOS_MSGS::TARGETINFO"))
(shadow '*TRANSFER_ZONE* (find-package "TOS_MSGS::TARGETINFO"))
(defconstant tos_msgs::TargetInfo::*TRANSFER_ZONE* 3)
(defclass tos_msgs::TargetInfo
  :super ros::object
  :slots (_target_type _section _bay _transfer_zone _gantry_crane_id _lane_id _container _move_stage _ppos ))

(defmethod tos_msgs::TargetInfo
  (:init
   (&key
    ((:target_type __target_type) 0)
    ((:section __section) "")
    ((:bay __bay) "")
    ((:transfer_zone __transfer_zone) "")
    ((:gantry_crane_id __gantry_crane_id) "")
    ((:lane_id __lane_id) "")
    ((:container __container) (instance tos_msgs::Container :init))
    ((:move_stage __move_stage) "")
    ((:ppos __ppos) "")
    )
   (send-super :init)
   (setq _target_type (round __target_type))
   (setq _section (string __section))
   (setq _bay (string __bay))
   (setq _transfer_zone (string __transfer_zone))
   (setq _gantry_crane_id (string __gantry_crane_id))
   (setq _lane_id (string __lane_id))
   (setq _container __container)
   (setq _move_stage (string __move_stage))
   (setq _ppos (string __ppos))
   self)
  (:target_type
   (&optional __target_type)
   (if __target_type (setq _target_type __target_type)) _target_type)
  (:section
   (&optional __section)
   (if __section (setq _section __section)) _section)
  (:bay
   (&optional __bay)
   (if __bay (setq _bay __bay)) _bay)
  (:transfer_zone
   (&optional __transfer_zone)
   (if __transfer_zone (setq _transfer_zone __transfer_zone)) _transfer_zone)
  (:gantry_crane_id
   (&optional __gantry_crane_id)
   (if __gantry_crane_id (setq _gantry_crane_id __gantry_crane_id)) _gantry_crane_id)
  (:lane_id
   (&optional __lane_id)
   (if __lane_id (setq _lane_id __lane_id)) _lane_id)
  (:container
   (&rest __container)
   (if (keywordp (car __container))
       (send* _container __container)
     (progn
       (if __container (setq _container (car __container)))
       _container)))
  (:move_stage
   (&optional __move_stage)
   (if __move_stage (setq _move_stage __move_stage)) _move_stage)
  (:ppos
   (&optional __ppos)
   (if __ppos (setq _ppos __ppos)) _ppos)
  (:serialization-length
   ()
   (+
    ;; uint8 _target_type
    1
    ;; string _section
    4 (length _section)
    ;; string _bay
    4 (length _bay)
    ;; string _transfer_zone
    4 (length _transfer_zone)
    ;; string _gantry_crane_id
    4 (length _gantry_crane_id)
    ;; string _lane_id
    4 (length _lane_id)
    ;; tos_msgs/Container _container
    (send _container :serialization-length)
    ;; string _move_stage
    4 (length _move_stage)
    ;; string _ppos
    4 (length _ppos)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _target_type
       (write-byte _target_type s)
     ;; string _section
       (write-long (length _section) s) (princ _section s)
     ;; string _bay
       (write-long (length _bay) s) (princ _bay s)
     ;; string _transfer_zone
       (write-long (length _transfer_zone) s) (princ _transfer_zone s)
     ;; string _gantry_crane_id
       (write-long (length _gantry_crane_id) s) (princ _gantry_crane_id s)
     ;; string _lane_id
       (write-long (length _lane_id) s) (princ _lane_id s)
     ;; tos_msgs/Container _container
       (send _container :serialize s)
     ;; string _move_stage
       (write-long (length _move_stage) s) (princ _move_stage s)
     ;; string _ppos
       (write-long (length _ppos) s) (princ _ppos s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _target_type
     (setq _target_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; string _section
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _section (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _bay
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bay (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _transfer_zone
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _transfer_zone (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _gantry_crane_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gantry_crane_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _lane_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lane_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; tos_msgs/Container _container
     (send _container :deserialize buf ptr-) (incf ptr- (send _container :serialization-length))
   ;; string _move_stage
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _move_stage (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _ppos
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ppos (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get tos_msgs::TargetInfo :md5sum-) "677d252aa7d6e6bd4ba970587d5907b8")
(setf (get tos_msgs::TargetInfo :datatype-) "tos_msgs/TargetInfo")
(setf (get tos_msgs::TargetInfo :definition-)
      "# target type
uint8 NORMAL_YARD_CRANE         = 0
uint8 AUTOMATIC_YARD_CRANE      = 1
uint8 GANTRY_CRANE      	= 2
uint8 TRANSFER_ZONE      	= 3

# target
uint8 target_type

# target info
string section
string bay
string transfer_zone

string gantry_crane_id
string lane_id

# container
Container container

# move stage
string move_stage

# for test
string ppos

================================================================================
MSG: tos_msgs/Container
string container_id
uint8 container_size
int32 container_weight
uint8 container_pos 

")



(provide :tos_msgs/TargetInfo "677d252aa7d6e6bd4ba970587d5907b8")


