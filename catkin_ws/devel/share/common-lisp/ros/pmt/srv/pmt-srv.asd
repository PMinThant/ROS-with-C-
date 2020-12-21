
(cl:in-package :asdf)

(defsystem "pmt-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "pmtsrv" :depends-on ("_package_pmtsrv"))
    (:file "_package_pmtsrv" :depends-on ("_package"))
  ))