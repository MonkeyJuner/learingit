
(cl:in-package :asdf)

(defsystem "visual_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Path" :depends-on ("_package_Path"))
    (:file "_package_Path" :depends-on ("_package"))
    (:file "PathPoint" :depends-on ("_package_PathPoint"))
    (:file "_package_PathPoint" :depends-on ("_package"))
    (:file "PathPoints" :depends-on ("_package_PathPoints"))
    (:file "_package_PathPoints" :depends-on ("_package"))
    (:file "VirtualWall" :depends-on ("_package_VirtualWall"))
    (:file "_package_VirtualWall" :depends-on ("_package"))
    (:file "VirtualWalls" :depends-on ("_package_VirtualWalls"))
    (:file "_package_VirtualWalls" :depends-on ("_package"))
  ))