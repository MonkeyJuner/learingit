
(cl:in-package :asdf)

(defsystem "simulator_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Rate" :depends-on ("_package_Rate"))
    (:file "_package_Rate" :depends-on ("_package"))
    (:file "SetState" :depends-on ("_package_SetState"))
    (:file "_package_SetState" :depends-on ("_package"))
  ))