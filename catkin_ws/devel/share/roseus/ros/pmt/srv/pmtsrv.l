;; Auto-generated. Do not edit!


(when (boundp 'pmt::pmtsrv)
  (if (not (find-package "PMT"))
    (make-package "PMT"))
  (shadow 'pmtsrv (find-package "PMT")))
(unless (find-package "PMT::PMTSRV")
  (make-package "PMT::PMTSRV"))
(unless (find-package "PMT::PMTSRVREQUEST")
  (make-package "PMT::PMTSRVREQUEST"))
(unless (find-package "PMT::PMTSRVRESPONSE")
  (make-package "PMT::PMTSRVRESPONSE"))

(in-package "ROS")





(defclass pmt::pmtsrvRequest
  :super ros::object
  :slots (_A _B _C ))

(defmethod pmt::pmtsrvRequest
  (:init
   (&key
    ((:A __A) 0)
    ((:B __B) 0)
    ((:C __C) 0)
    )
   (send-super :init)
   (setq _A (round __A))
   (setq _B (round __B))
   (setq _C (round __C))
   self)
  (:A
   (&optional __A)
   (if __A (setq _A __A)) _A)
  (:B
   (&optional __B)
   (if __B (setq _B __B)) _B)
  (:C
   (&optional __C)
   (if __C (setq _C __C)) _C)
  (:serialization-length
   ()
   (+
    ;; int32 _A
    4
    ;; int32 _B
    4
    ;; int32 _C
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _A
       (write-long _A s)
     ;; int32 _B
       (write-long _B s)
     ;; int32 _C
       (write-long _C s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _A
     (setq _A (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _B
     (setq _B (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _C
     (setq _C (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pmt::pmtsrvResponse
  :super ros::object
  :slots (_G ))

(defmethod pmt::pmtsrvResponse
  (:init
   (&key
    ((:G __G) 0)
    )
   (send-super :init)
   (setq _G (round __G))
   self)
  (:G
   (&optional __G)
   (if __G (setq _G __G)) _G)
  (:serialization-length
   ()
   (+
    ;; int32 _G
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _G
       (write-long _G s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _G
     (setq _G (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pmt::pmtsrv
  :super ros::object
  :slots ())

(setf (get pmt::pmtsrv :md5sum-) "dcb5cd4885c92b4d86b7f754d9c5db05")
(setf (get pmt::pmtsrv :datatype-) "pmt/pmtsrv")
(setf (get pmt::pmtsrv :request) pmt::pmtsrvRequest)
(setf (get pmt::pmtsrv :response) pmt::pmtsrvResponse)

(defmethod pmt::pmtsrvRequest
  (:response () (instance pmt::pmtsrvResponse :init)))

(setf (get pmt::pmtsrvRequest :md5sum-) "dcb5cd4885c92b4d86b7f754d9c5db05")
(setf (get pmt::pmtsrvRequest :datatype-) "pmt/pmtsrvRequest")
(setf (get pmt::pmtsrvRequest :definition-)
      "int32 A
int32 B
int32 C
---
int32 G
")

(setf (get pmt::pmtsrvResponse :md5sum-) "dcb5cd4885c92b4d86b7f754d9c5db05")
(setf (get pmt::pmtsrvResponse :datatype-) "pmt/pmtsrvResponse")
(setf (get pmt::pmtsrvResponse :definition-)
      "int32 A
int32 B
int32 C
---
int32 G
")



(provide :pmt/pmtsrv "dcb5cd4885c92b4d86b7f754d9c5db05")


