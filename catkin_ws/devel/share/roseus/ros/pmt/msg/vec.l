;; Auto-generated. Do not edit!


(when (boundp 'pmt::vec)
  (if (not (find-package "PMT"))
    (make-package "PMT"))
  (shadow 'vec (find-package "PMT")))
(unless (find-package "PMT::VEC")
  (make-package "PMT::VEC"))

(in-package "ROS")
;;//! \htmlinclude vec.msg.html


(defclass pmt::vec
  :super ros::object
  :slots (_x ))

(defmethod pmt::vec
  (:init
   (&key
    ((:x __x) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x __x)
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:serialization-length
   ()
   (+
    ;; float64[] _x
    (* 8    (length _x)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[] _x
     (write-long (length _x) s)
     (dotimes (i (length _x))
       (sys::poke (elt _x i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[] _x
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get pmt::vec :md5sum-) "c5012a429e390f4ddcf2e02fa7cb0fc8")
(setf (get pmt::vec :datatype-) "pmt/vec")
(setf (get pmt::vec :definition-)
      "float64[] x

")



(provide :pmt/vec "c5012a429e390f4ddcf2e02fa7cb0fc8")


