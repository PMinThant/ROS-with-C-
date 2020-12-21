; Auto-generated. Do not edit!


(cl:in-package pmt-srv)


;//! \htmlinclude pmtsrv-request.msg.html

(cl:defclass <pmtsrv-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:integer
    :initform 0))
)

(cl:defclass pmtsrv-request (<pmtsrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pmtsrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pmtsrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pmt-srv:<pmtsrv-request> is deprecated: use pmt-srv:pmtsrv-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <pmtsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pmt-srv:A-val is deprecated.  Use pmt-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <pmtsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pmt-srv:B-val is deprecated.  Use pmt-srv:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <pmtsrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pmt-srv:C-val is deprecated.  Use pmt-srv:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pmtsrv-request>) ostream)
  "Serializes a message object of type '<pmtsrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'C)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pmtsrv-request>) istream)
  "Deserializes a message object of type '<pmtsrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pmtsrv-request>)))
  "Returns string type for a service object of type '<pmtsrv-request>"
  "pmt/pmtsrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pmtsrv-request)))
  "Returns string type for a service object of type 'pmtsrv-request"
  "pmt/pmtsrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pmtsrv-request>)))
  "Returns md5sum for a message object of type '<pmtsrv-request>"
  "dcb5cd4885c92b4d86b7f754d9c5db05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pmtsrv-request)))
  "Returns md5sum for a message object of type 'pmtsrv-request"
  "dcb5cd4885c92b4d86b7f754d9c5db05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pmtsrv-request>)))
  "Returns full string definition for message of type '<pmtsrv-request>"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pmtsrv-request)))
  "Returns full string definition for message of type 'pmtsrv-request"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pmtsrv-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pmtsrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'pmtsrv-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
;//! \htmlinclude pmtsrv-response.msg.html

(cl:defclass <pmtsrv-response> (roslisp-msg-protocol:ros-message)
  ((G
    :reader G
    :initarg :G
    :type cl:integer
    :initform 0))
)

(cl:defclass pmtsrv-response (<pmtsrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <pmtsrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'pmtsrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pmt-srv:<pmtsrv-response> is deprecated: use pmt-srv:pmtsrv-response instead.")))

(cl:ensure-generic-function 'G-val :lambda-list '(m))
(cl:defmethod G-val ((m <pmtsrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pmt-srv:G-val is deprecated.  Use pmt-srv:G instead.")
  (G m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <pmtsrv-response>) ostream)
  "Serializes a message object of type '<pmtsrv-response>"
  (cl:let* ((signed (cl:slot-value msg 'G)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <pmtsrv-response>) istream)
  "Deserializes a message object of type '<pmtsrv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'G) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<pmtsrv-response>)))
  "Returns string type for a service object of type '<pmtsrv-response>"
  "pmt/pmtsrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pmtsrv-response)))
  "Returns string type for a service object of type 'pmtsrv-response"
  "pmt/pmtsrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<pmtsrv-response>)))
  "Returns md5sum for a message object of type '<pmtsrv-response>"
  "dcb5cd4885c92b4d86b7f754d9c5db05")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'pmtsrv-response)))
  "Returns md5sum for a message object of type 'pmtsrv-response"
  "dcb5cd4885c92b4d86b7f754d9c5db05")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<pmtsrv-response>)))
  "Returns full string definition for message of type '<pmtsrv-response>"
  (cl:format cl:nil "int32 G~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'pmtsrv-response)))
  "Returns full string definition for message of type 'pmtsrv-response"
  (cl:format cl:nil "int32 G~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <pmtsrv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <pmtsrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'pmtsrv-response
    (cl:cons ':G (G msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'pmtsrv)))
  'pmtsrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'pmtsrv)))
  'pmtsrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'pmtsrv)))
  "Returns string type for a service object of type '<pmtsrv>"
  "pmt/pmtsrv")