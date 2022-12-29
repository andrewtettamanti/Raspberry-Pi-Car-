; Auto-generated. Do not edit!


(cl:in-package freenove_base-msg)


;//! \htmlinclude motor_msg.msg.html

(cl:defclass <motor_msg> (roslisp-msg-protocol:ros-message)
  ((left_Upper_Wheel
    :reader left_Upper_Wheel
    :initarg :left_Upper_Wheel
    :type cl:integer
    :initform 0)
   (left_Lower_Wheel
    :reader left_Lower_Wheel
    :initarg :left_Lower_Wheel
    :type cl:integer
    :initform 0)
   (right_Upper_Wheel
    :reader right_Upper_Wheel
    :initarg :right_Upper_Wheel
    :type cl:integer
    :initform 0)
   (right_Lower_Wheel
    :reader right_Lower_Wheel
    :initarg :right_Lower_Wheel
    :type cl:integer
    :initform 0))
)

(cl:defclass motor_msg (<motor_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motor_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motor_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name freenove_base-msg:<motor_msg> is deprecated: use freenove_base-msg:motor_msg instead.")))

(cl:ensure-generic-function 'left_Upper_Wheel-val :lambda-list '(m))
(cl:defmethod left_Upper_Wheel-val ((m <motor_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:left_Upper_Wheel-val is deprecated.  Use freenove_base-msg:left_Upper_Wheel instead.")
  (left_Upper_Wheel m))

(cl:ensure-generic-function 'left_Lower_Wheel-val :lambda-list '(m))
(cl:defmethod left_Lower_Wheel-val ((m <motor_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:left_Lower_Wheel-val is deprecated.  Use freenove_base-msg:left_Lower_Wheel instead.")
  (left_Lower_Wheel m))

(cl:ensure-generic-function 'right_Upper_Wheel-val :lambda-list '(m))
(cl:defmethod right_Upper_Wheel-val ((m <motor_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:right_Upper_Wheel-val is deprecated.  Use freenove_base-msg:right_Upper_Wheel instead.")
  (right_Upper_Wheel m))

(cl:ensure-generic-function 'right_Lower_Wheel-val :lambda-list '(m))
(cl:defmethod right_Lower_Wheel-val ((m <motor_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:right_Lower_Wheel-val is deprecated.  Use freenove_base-msg:right_Lower_Wheel instead.")
  (right_Lower_Wheel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motor_msg>) ostream)
  "Serializes a message object of type '<motor_msg>"
  (cl:let* ((signed (cl:slot-value msg 'left_Upper_Wheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'left_Lower_Wheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_Upper_Wheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_Lower_Wheel)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motor_msg>) istream)
  "Deserializes a message object of type '<motor_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_Upper_Wheel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_Lower_Wheel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_Upper_Wheel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_Lower_Wheel) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motor_msg>)))
  "Returns string type for a message object of type '<motor_msg>"
  "freenove_base/motor_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motor_msg)))
  "Returns string type for a message object of type 'motor_msg"
  "freenove_base/motor_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motor_msg>)))
  "Returns md5sum for a message object of type '<motor_msg>"
  "e24da12eec5391bbb4b843a4cfaed882")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motor_msg)))
  "Returns md5sum for a message object of type 'motor_msg"
  "e24da12eec5391bbb4b843a4cfaed882")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motor_msg>)))
  "Returns full string definition for message of type '<motor_msg>"
  (cl:format cl:nil "int32 left_Upper_Wheel~%int32 left_Lower_Wheel~%int32 right_Upper_Wheel~%int32 right_Lower_Wheel~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motor_msg)))
  "Returns full string definition for message of type 'motor_msg"
  (cl:format cl:nil "int32 left_Upper_Wheel~%int32 left_Lower_Wheel~%int32 right_Upper_Wheel~%int32 right_Lower_Wheel~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motor_msg>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motor_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'motor_msg
    (cl:cons ':left_Upper_Wheel (left_Upper_Wheel msg))
    (cl:cons ':left_Lower_Wheel (left_Lower_Wheel msg))
    (cl:cons ':right_Upper_Wheel (right_Upper_Wheel msg))
    (cl:cons ':right_Lower_Wheel (right_Lower_Wheel msg))
))
