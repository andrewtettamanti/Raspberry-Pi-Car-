; Auto-generated. Do not edit!


(cl:in-package freenove_base-msg)


;//! \htmlinclude adc_msg.msg.html

(cl:defclass <adc_msg> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type cl:float
    :initform 0.0)
   (right
    :reader right
    :initarg :right
    :type cl:float
    :initform 0.0)
   (power
    :reader power
    :initarg :power
    :type cl:float
    :initform 0.0))
)

(cl:defclass adc_msg (<adc_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <adc_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'adc_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name freenove_base-msg:<adc_msg> is deprecated: use freenove_base-msg:adc_msg instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <adc_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:left-val is deprecated.  Use freenove_base-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <adc_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:right-val is deprecated.  Use freenove_base-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <adc_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:power-val is deprecated.  Use freenove_base-msg:power instead.")
  (power m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <adc_msg>) ostream)
  "Serializes a message object of type '<adc_msg>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'left))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'right))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <adc_msg>) istream)
  "Deserializes a message object of type '<adc_msg>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'left) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'power) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<adc_msg>)))
  "Returns string type for a message object of type '<adc_msg>"
  "freenove_base/adc_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'adc_msg)))
  "Returns string type for a message object of type 'adc_msg"
  "freenove_base/adc_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<adc_msg>)))
  "Returns md5sum for a message object of type '<adc_msg>"
  "87fdce4da0e9737b84d40aaf1c65c019")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'adc_msg)))
  "Returns md5sum for a message object of type 'adc_msg"
  "87fdce4da0e9737b84d40aaf1c65c019")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<adc_msg>)))
  "Returns full string definition for message of type '<adc_msg>"
  (cl:format cl:nil "float32 left~%float32 right~%float32 power~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'adc_msg)))
  "Returns full string definition for message of type 'adc_msg"
  (cl:format cl:nil "float32 left~%float32 right~%float32 power~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <adc_msg>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <adc_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'adc_msg
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':power (power msg))
))
