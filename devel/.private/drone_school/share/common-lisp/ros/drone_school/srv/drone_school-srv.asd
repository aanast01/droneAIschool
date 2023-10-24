
(cl:in-package :asdf)

(defsystem "drone_school-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CreatePPComTopic" :depends-on ("_package_CreatePPComTopic"))
    (:file "_package_CreatePPComTopic" :depends-on ("_package"))
  ))