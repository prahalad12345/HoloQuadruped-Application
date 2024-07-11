
(cl:in-package :asdf)

(defsystem "puppy_control2-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ServoControl" :depends-on ("_package_ServoControl"))
    (:file "_package_ServoControl" :depends-on ("_package"))
  ))