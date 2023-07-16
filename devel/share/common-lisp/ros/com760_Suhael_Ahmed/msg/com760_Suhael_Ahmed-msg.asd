
(cl:in-package :asdf)

(defsystem "com760_Suhael_Ahmed-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "b00856266LeaderInstruction" :depends-on ("_package_b00856266LeaderInstruction"))
    (:file "_package_b00856266LeaderInstruction" :depends-on ("_package"))
  ))