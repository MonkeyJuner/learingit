
(cl:in-package :asdf)

(defsystem "gnss_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "GnssImuInfo" :depends-on ("_package_GnssImuInfo"))
    (:file "_package_GnssImuInfo" :depends-on ("_package"))
    (:file "GnssInfo" :depends-on ("_package_GnssInfo"))
    (:file "_package_GnssInfo" :depends-on ("_package"))
  ))