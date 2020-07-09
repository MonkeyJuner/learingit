
(cl:in-package :asdf)

(defsystem "diagnose_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Control" :depends-on ("_package_Control"))
    (:file "_package_Control" :depends-on ("_package"))
    (:file "DiagnoseInfo" :depends-on ("_package_DiagnoseInfo"))
    (:file "_package_DiagnoseInfo" :depends-on ("_package"))
    (:file "KeyValue" :depends-on ("_package_KeyValue"))
    (:file "_package_KeyValue" :depends-on ("_package"))
    (:file "LidarAlignment" :depends-on ("_package_LidarAlignment"))
    (:file "_package_LidarAlignment" :depends-on ("_package"))
    (:file "Navigation" :depends-on ("_package_Navigation"))
    (:file "_package_Navigation" :depends-on ("_package"))
  ))