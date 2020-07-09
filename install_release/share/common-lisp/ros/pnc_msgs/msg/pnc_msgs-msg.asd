
(cl:in-package :asdf)

(defsystem "pnc_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :pncc_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Calibrate" :depends-on ("_package_Calibrate"))
    (:file "_package_Calibrate" :depends-on ("_package"))
    (:file "PathPoint" :depends-on ("_package_PathPoint"))
    (:file "_package_PathPoint" :depends-on ("_package"))
    (:file "PlanningCmd" :depends-on ("_package_PlanningCmd"))
    (:file "_package_PlanningCmd" :depends-on ("_package"))
    (:file "Trajectory" :depends-on ("_package_Trajectory"))
    (:file "_package_Trajectory" :depends-on ("_package"))
    (:file "TrajectoryPoint" :depends-on ("_package_TrajectoryPoint"))
    (:file "_package_TrajectoryPoint" :depends-on ("_package"))
    (:file "VehicleCmd" :depends-on ("_package_VehicleCmd"))
    (:file "_package_VehicleCmd" :depends-on ("_package"))
  ))