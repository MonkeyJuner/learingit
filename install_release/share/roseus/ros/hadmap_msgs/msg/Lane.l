;; Auto-generated. Do not edit!


(when (boundp 'hadmap_msgs::Lane)
  (if (not (find-package "HADMAP_MSGS"))
    (make-package "HADMAP_MSGS"))
  (shadow 'Lane (find-package "HADMAP_MSGS")))
(unless (find-package "HADMAP_MSGS::LANE")
  (make-package "HADMAP_MSGS::LANE"))

(in-package "ROS")
;;//! \htmlinclude Lane.msg.html


(defclass hadmap_msgs::Lane
  :super ros::object
  :slots (_id _pt_start _pt_end _predecessors _successors _pts_center _pts_left _pts_right _len_integral _speed_limit _line_left_type _line_right_type _resign_id _residual_len ))

(defmethod hadmap_msgs::Lane
  (:init
   (&key
    ((:id __id) 0)
    ((:pt_start __pt_start) (instance hadmap_msgs::Point :init))
    ((:pt_end __pt_end) (instance hadmap_msgs::Point :init))
    ((:predecessors __predecessors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:successors __successors) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pts_center __pts_center) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::Point :init) r)) r))
    ((:pts_left __pts_left) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::Point :init) r)) r))
    ((:pts_right __pts_right) (let (r) (dotimes (i 0) (push (instance hadmap_msgs::Point :init) r)) r))
    ((:len_integral __len_integral) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:speed_limit __speed_limit) 0.0)
    ((:line_left_type __line_left_type) 0)
    ((:line_right_type __line_right_type) 0)
    ((:resign_id __resign_id) 0)
    ((:residual_len __residual_len) 0.0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _pt_start __pt_start)
   (setq _pt_end __pt_end)
   (setq _predecessors __predecessors)
   (setq _successors __successors)
   (setq _pts_center __pts_center)
   (setq _pts_left __pts_left)
   (setq _pts_right __pts_right)
   (setq _len_integral __len_integral)
   (setq _speed_limit (float __speed_limit))
   (setq _line_left_type (round __line_left_type))
   (setq _line_right_type (round __line_right_type))
   (setq _resign_id (round __resign_id))
   (setq _residual_len (float __residual_len))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:pt_start
   (&rest __pt_start)
   (if (keywordp (car __pt_start))
       (send* _pt_start __pt_start)
     (progn
       (if __pt_start (setq _pt_start (car __pt_start)))
       _pt_start)))
  (:pt_end
   (&rest __pt_end)
   (if (keywordp (car __pt_end))
       (send* _pt_end __pt_end)
     (progn
       (if __pt_end (setq _pt_end (car __pt_end)))
       _pt_end)))
  (:predecessors
   (&optional __predecessors)
   (if __predecessors (setq _predecessors __predecessors)) _predecessors)
  (:successors
   (&optional __successors)
   (if __successors (setq _successors __successors)) _successors)
  (:pts_center
   (&rest __pts_center)
   (if (keywordp (car __pts_center))
       (send* _pts_center __pts_center)
     (progn
       (if __pts_center (setq _pts_center (car __pts_center)))
       _pts_center)))
  (:pts_left
   (&rest __pts_left)
   (if (keywordp (car __pts_left))
       (send* _pts_left __pts_left)
     (progn
       (if __pts_left (setq _pts_left (car __pts_left)))
       _pts_left)))
  (:pts_right
   (&rest __pts_right)
   (if (keywordp (car __pts_right))
       (send* _pts_right __pts_right)
     (progn
       (if __pts_right (setq _pts_right (car __pts_right)))
       _pts_right)))
  (:len_integral
   (&optional __len_integral)
   (if __len_integral (setq _len_integral __len_integral)) _len_integral)
  (:speed_limit
   (&optional __speed_limit)
   (if __speed_limit (setq _speed_limit __speed_limit)) _speed_limit)
  (:line_left_type
   (&optional __line_left_type)
   (if __line_left_type (setq _line_left_type __line_left_type)) _line_left_type)
  (:line_right_type
   (&optional __line_right_type)
   (if __line_right_type (setq _line_right_type __line_right_type)) _line_right_type)
  (:resign_id
   (&optional __resign_id)
   (if __resign_id (setq _resign_id __resign_id)) _resign_id)
  (:residual_len
   (&optional __residual_len)
   (if __residual_len (setq _residual_len __residual_len)) _residual_len)
  (:serialization-length
   ()
   (+
    ;; int32 _id
    4
    ;; hadmap_msgs/Point _pt_start
    (send _pt_start :serialization-length)
    ;; hadmap_msgs/Point _pt_end
    (send _pt_end :serialization-length)
    ;; int32[] _predecessors
    (* 4    (length _predecessors)) 4
    ;; int32[] _successors
    (* 4    (length _successors)) 4
    ;; hadmap_msgs/Point[] _pts_center
    (apply #'+ (send-all _pts_center :serialization-length)) 4
    ;; hadmap_msgs/Point[] _pts_left
    (apply #'+ (send-all _pts_left :serialization-length)) 4
    ;; hadmap_msgs/Point[] _pts_right
    (apply #'+ (send-all _pts_right :serialization-length)) 4
    ;; float64[] _len_integral
    (* 8    (length _len_integral)) 4
    ;; float64 _speed_limit
    8
    ;; uint8 _line_left_type
    1
    ;; uint8 _line_right_type
    1
    ;; int32 _resign_id
    4
    ;; float32 _residual_len
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _id
       (write-long _id s)
     ;; hadmap_msgs/Point _pt_start
       (send _pt_start :serialize s)
     ;; hadmap_msgs/Point _pt_end
       (send _pt_end :serialize s)
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
     ;; hadmap_msgs/Point[] _pts_center
     (write-long (length _pts_center) s)
     (dolist (elem _pts_center)
       (send elem :serialize s)
       )
     ;; hadmap_msgs/Point[] _pts_left
     (write-long (length _pts_left) s)
     (dolist (elem _pts_left)
       (send elem :serialize s)
       )
     ;; hadmap_msgs/Point[] _pts_right
     (write-long (length _pts_right) s)
     (dolist (elem _pts_right)
       (send elem :serialize s)
       )
     ;; float64[] _len_integral
     (write-long (length _len_integral) s)
     (dotimes (i (length _len_integral))
       (sys::poke (elt _len_integral i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _speed_limit
       (sys::poke _speed_limit (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _line_left_type
       (write-byte _line_left_type s)
     ;; uint8 _line_right_type
       (write-byte _line_right_type s)
     ;; int32 _resign_id
       (write-long _resign_id s)
     ;; float32 _residual_len
       (sys::poke _residual_len (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; hadmap_msgs/Point _pt_start
     (send _pt_start :deserialize buf ptr-) (incf ptr- (send _pt_start :serialization-length))
   ;; hadmap_msgs/Point _pt_end
     (send _pt_end :deserialize buf ptr-) (incf ptr- (send _pt_end :serialization-length))
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
   ;; hadmap_msgs/Point[] _pts_center
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_center (let (r) (dotimes (i n) (push (instance hadmap_msgs::Point :init) r)) r))
     (dolist (elem- _pts_center)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; hadmap_msgs/Point[] _pts_left
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_left (let (r) (dotimes (i n) (push (instance hadmap_msgs::Point :init) r)) r))
     (dolist (elem- _pts_left)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; hadmap_msgs/Point[] _pts_right
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pts_right (let (r) (dotimes (i n) (push (instance hadmap_msgs::Point :init) r)) r))
     (dolist (elem- _pts_right)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float64[] _len_integral
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _len_integral (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _len_integral i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64 _speed_limit
     (setq _speed_limit (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _line_left_type
     (setq _line_left_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _line_right_type
     (setq _line_right_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int32 _resign_id
     (setq _resign_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _residual_len
     (setq _residual_len (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hadmap_msgs::Lane :md5sum-) "b50505f45a3b08e2ee38ee2c2f0b9f41")
(setf (get hadmap_msgs::Lane :datatype-) "hadmap_msgs/Lane")
(setf (get hadmap_msgs::Lane :definition-)
      "int32 id

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



(provide :hadmap_msgs/Lane "b50505f45a3b08e2ee38ee2c2f0b9f41")


