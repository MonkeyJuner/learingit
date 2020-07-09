;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::Section)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'Section (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::SECTION")
  (make-package "HADMAP_MSGS::SECTION"))

(in-package "ROS")
;;//! \htmlinclude Section.msg.html


(intern "*TYPE_NORMAL*" (find-package "HADMAP_MSGS::SECTION"))
(shadow '*TYPE_NORMAL* (find-package "HADMAP_MSGS::SECTION"))
(defconstant hadmap_msgs::Section::*TYPE_NORMAL* 0)
(intern "*TYPE_CROSS_BEFORE*" (find-package "HADMAP_MSGS::SECTION"))
(shadow '*TYPE_CROSS_BEFORE* (find-package "HADMAP_MSGS::SECTION"))
(defconstant hadmap_msgs::Section::*TYPE_CROSS_BEFORE* 1)
(intern "*TYPE_CROSS_AFTER*" (find-package "HADMAP_MSGS::SECTION"))
(shadow '*TYPE_CROSS_AFTER* (find-package "HADMAP_MSGS::SECTION"))
(defconstant hadmap_msgs::Section::*TYPE_CROSS_AFTER* 2)
(intern "*TYPE_CROSS_BEFORE_AND_AFTER*" (find-package "HADMAP_MSGS::SECTION"))
(shadow '*TYPE_CROSS_BEFORE_AND_AFTER* (find-package "HADMAP_MSGS::SECTION"))
(defconstant hadmap_msgs::Section::*TYPE_CROSS_BEFORE_AND_AFTER* 3)
(defclass hadmap_msgs::Section
  :super ros::object
  :slots (_id _lanes _predecessors _successors _type _stop_distances ))

(defmethod hadmap_msgs::Section
  (:init
   (&key
    ((:id __id) 0)
    ((:lanes __lanes) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::Lane :init) r)) r))
    ((:predecessors __predecessors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:successors __successors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:type __type) 0)
    ((:stop_distances __stop_distances) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _lanes __lanes)
   (setq _predecessors __predecessors)
   (setq _successors __successors)
   (setq _type (round __type))
   (setq _stop_distances __stop_distances)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:lanes
   (&rest __lanes)
   (if (keywordp (car __lanes))
       (send* _lanes __lanes)
     (progn
       (if __lanes (setq _lanes (car __lanes)))
       _lanes)))
  (:predecessors
   (&optional __predecessors)
   (if __predecessors (setq _predecessors __predecessors)) _predecessors)
  (:successors
   (&optional __successors)
   (if __successors (setq _successors __successors)) _successors)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:stop_distances
   (&optional __stop_distances)
   (if __stop_distances (setq _stop_distances __stop_distances)) _stop_distances)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; hadmap_msgs/Lane[] _lanes
    (apply #'+ (send-all _lanes :serialization-length)) 4
    ;; int32[] _predecessors
    (* 4    (length _predecessors)) 4
    ;; int32[] _successors
    (* 4    (length _successors)) 4
    ;; uint8 _type
    1
    ;; float64[] _stop_distances
    (* 8    (length _stop_distances)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; hadmap_msgs/Lane[] _lanes
     (write-long (length _lanes) s)
     (dolist (elem _lanes)
       (send elem :serialize s)
       )
     ;; int32[] _predecessors
     (write-long (length _predecessors) s)
     (dotimes (i (length _predecessors))
       (write-long (elt _predecessors i) s)
       )
     ;; int32[] _successors
     (write-long (length _successors) s)
     (dotimes (i (length _successors))
       (write-long (elt _successors i) s)
       )
     ;; uint8 _type
       (write-byte _type s)
     ;; float64[] _stop_distances
     (write-long (length _stop_distances) s)
     (dotimes (i (length _stop_distances))
       (sys::poke (elt _stop_distances i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; hadmap_msgs/Lane[] _lanes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lanes (let (r) (dotimes (i n) (push (instance hadmap_msgs::Lane :init) r)) r))
     (dolist (elem- _lanes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; int32[] _predecessors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _predecessors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _predecessors i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _successors
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _successors (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _successors i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; uint8 _type
     (setq _type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64[] _stop_distances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _stop_distances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _stop_distances i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hadmap_msgs::Section :md5sum-) "9c159119e0202171ae854a4c79c42cd7")
(setf (get hadmap_msgs::Section :datatype-) "hadmap_msgs/Section")
(setf (get hadmap_msgs::Section :definition-)
      "uint8 TYPE_NORMAL = 0
uint8 TYPE_CROSS_BEFORE = 1
uint8 TYPE_CROSS_AFTER = 2
uint8 TYPE_CROSS_BEFORE_AND_AFTER = 3

int32 id
Lane[] lanes
int32[] predecessors
int32[] successors
uint8 type # 

float64[] stop_distances

================================================================================
MSG: hadmap_msgs/Lane
int32 id

Point pt_start
Point pt_end

int32[] predecessors
int32[] successors

Point[] pts_center
Point[] pts_left
Point[] pts_right

float64[] len_integral

float64 speed_limit

## not used
uint8 line_left_type
uint8 line_right_type

## dynamic
int32 resign_id
float32 residual_len

================================================================================
MSG: hadmap_msgs/Point
int32 id

geometry_msgs/Point point

## not used

float32 heading
float64 delta_s
uint8 property

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :hadmap_msgs/Section "9c159119e0202171ae854a4c79c42cd7")


