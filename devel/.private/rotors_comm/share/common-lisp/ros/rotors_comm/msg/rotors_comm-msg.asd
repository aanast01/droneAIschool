
(cl:in-package :asdf)

(defsystem "rotors_comm-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :nav_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BoolStamped" :depends-on ("_package_BoolStamped"))
    (:file "_package_BoolStamped" :depends-on ("_package"))
    (:file "PPComTopology" :depends-on ("_package_PPComTopology"))
    (:file "_package_PPComTopology" :depends-on ("_package"))
    (:file "WindSpeed" :depends-on ("_package_WindSpeed"))
    (:file "_package_WindSpeed" :depends-on ("_package"))
  ))