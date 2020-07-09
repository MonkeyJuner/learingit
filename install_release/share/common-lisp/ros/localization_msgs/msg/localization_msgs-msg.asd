
(cl:in-package :asdf)

(defsystem "localization_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "StopPoint" :depends-on ("_package_StopPoint"))
    (:file "_package_StopPoint" :depends-on ("_package"))
    (:file "StopPoints" :depends-on ("_package_StopPoints"))
    (:file "_package_StopPoints" :depends-on ("_package"))
    (:file "VehicleState" :depends-on ("_package_VehicleState"))
    (:file "_package_VehicleState" :depends-on ("_package"))
  ))