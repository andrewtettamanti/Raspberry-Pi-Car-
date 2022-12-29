
(cl:in-package :asdf)

(defsystem "freenove_base-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ultrasonic_srv" :depends-on ("_package_ultrasonic_srv"))
    (:file "_package_ultrasonic_srv" :depends-on ("_package"))
  ))