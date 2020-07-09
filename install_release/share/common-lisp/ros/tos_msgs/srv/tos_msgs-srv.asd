
(cl:in-package :asdf)

(defsystem "tos_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :tos_msgs-msg
)
  :components ((:file "_package")
    (:file "ShadowReply" :depends-on ("_package_ShadowReply"))
    (:file "_package_ShadowReply" :depends-on ("_package"))
    (:file "ShadowTarget" :depends-on ("_package_ShadowTarget"))
    (:file "_package_ShadowTarget" :depends-on ("_package"))
  ))