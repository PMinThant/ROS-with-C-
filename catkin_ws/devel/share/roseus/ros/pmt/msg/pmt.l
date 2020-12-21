;; Auto-generated. Do not edit!


(when (boundp 'pmt::pmt)
  (if (not (find-package "PMT"))
    (make-package "PMT"))
  (shadow 'pmt (find-package "PMT")))
(unless (find-package "PMT::PMT")
  (make-package "PMT::PMT"))

(in-package "ROS")
;;//! \htmlinclude pmt.msg.html


(defclass pmt::pmt
  :super ros::object
  :slots (_A _B _C ))

(defmethod pmt::pmt
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

(setf (get pmt::pmt :md5sum-) "e7a68ce4e0b75a9719b4950a7069c9d4")
(setf (get pmt::pmt :datatype-) "pmt/pmt")
(setf (get pmt::pmt :definition-)
      "int32 A
int32 B
int32 C
")



(provide :pmt/pmt "e7a68ce4e0b75a9719b4950a7069c9d4")


