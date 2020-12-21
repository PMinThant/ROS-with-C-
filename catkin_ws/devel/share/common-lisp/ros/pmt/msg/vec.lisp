; Auto-generated. Do not edit!


(cl:in-package pmt-msg)


;//! \htmlinclude vec.msg.html

(cl:defclass <vec> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass vec (<vec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pmt-msg:<vec> is deprecated: use pmt-msg:vec instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <vec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pmt-msg:x-val is deprecated.  Use pmt-msg:x instead.")
  (x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vec>) ostream)
  "Serializes a message object of type '<vec>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'x))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vec>) istream)
  "Deserializes a message object of type '<vec>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vec>)))
  "Returns string type for a message object of type '<vec>"
  "pmt/vec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vec)))
  "Returns string type for a message object of type 'vec"
  "pmt/vec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vec>)))
  "Returns md5sum for a message object of type '<vec>"
  "c5012a429e390f4ddcf2e02fa7cb0fc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vec)))
  "Returns md5sum for a message object of type 'vec"
  "c5012a429e390f4ddcf2e02fa7cb0fc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vec>)))
  "Returns full string definition for message of type '<vec>"
  (cl:format cl:nil "float64[] x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vec)))
  "Returns full string definition for message of type 'vec"
  (cl:format cl:nil "float64[] x~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vec>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vec>))
  "Converts a ROS message object to a list"
  (cl:list 'vec
    (cl:cons ':x (x msg))
))
