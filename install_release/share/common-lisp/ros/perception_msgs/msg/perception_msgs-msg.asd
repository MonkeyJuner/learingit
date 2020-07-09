
(cl:in-package :asdf)

(defsystem "perception_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Object" :depends-on ("_package_Object"))
    (:file "_package_Object" :depends-on ("_package"))
    (:file "Objects" :depends-on ("_package_Objects"))
    (:file "_package_Objects" :depends-on ("_package"))
    (:file "OgmPoint" :depends-on ("_package_OgmPoint"))
    (:file "_package_OgmPoint" :depends-on ("_package"))
    (:file "OgmPoints" :depends-on ("_package_OgmPoints"))
    (:file "_package_OgmPoints" :depends-on ("_package"))
  ))