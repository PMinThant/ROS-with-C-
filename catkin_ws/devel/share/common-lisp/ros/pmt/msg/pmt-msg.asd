
(cl:in-package :asdf)

(defsystem "pmt-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pmt" :depends-on ("_package_pmt"))
    (:file "_package_pmt" :depends-on ("_package"))
    (:file "vec" :depends-on ("_package_vec"))
    (:file "_package_vec" :depends-on ("_package"))
  ))