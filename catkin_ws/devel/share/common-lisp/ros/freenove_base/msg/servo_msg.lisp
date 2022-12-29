; Auto-generated. Do not edit!


(cl:in-package freenove_base-msg)


;//! \htmlinclude servo_msg.msg.html

(cl:defclass <servo_msg> (roslisp-msg-protocol:ros-message)
  ((horizontal
    :reader horizontal
    :initarg :horizontal
    :type cl:integer
    :initform 0)
   (vertical
    :reader vertical
    :initarg :vertical
    :type cl:integer
    :initform 0))
)

(cl:defclass servo_msg (<servo_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <servo_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'servo_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name freenove_base-msg:<servo_msg> is deprecated: use freenove_base-msg:servo_msg instead.")))

(cl:ensure-generic-function 'horizontal-val :lambda-list '(m))
(cl:defmethod horizontal-val ((m <servo_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:horizontal-val is deprecated.  Use freenove_base-msg:horizontal instead.")
  (horizontal m))

(cl:ensure-generic-function 'vertical-val :lambda-list '(m))
(cl:defmethod vertical-val ((m <servo_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:vertical-val is deprecated.  Use freenove_base-msg:vertical instead.")
  (vertical m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <servo_msg>) ostream)
  "Serializes a message object of type '<servo_msg>"
  (cl:let* ((signed (cl:slot-value msg 'horizontal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'vertical)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <servo_msg>) istream)
  "Deserializes a message object of type '<servo_msg>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'horizontal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'vertical) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<servo_msg>)))
  "Returns string type for a message object of type '<servo_msg>"
  "freenove_base/servo_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'servo_msg)))
  "Returns string type for a message object of type 'servo_msg"
  "freenove_base/servo_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<servo_msg>)))
  "Returns md5sum for a message object of type '<servo_msg>"
  "811a705e34a03723eca077ed4732bcd1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'servo_msg)))
  "Returns md5sum for a message object of type 'servo_msg"
  "811a705e34a03723eca077ed4732bcd1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<servo_msg>)))
  "Returns full string definition for message of type '<servo_msg>"
  (cl:format cl:nil "int32 horizontal~%int32 vertical~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'servo_msg)))
  "Returns full string definition for message of type 'servo_msg"
  (cl:format cl:nil "int32 horizontal~%int32 vertical~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <servo_msg>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <servo_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'servo_msg
    (cl:cons ':horizontal (horizontal msg))
    (cl:cons ':vertical (vertical msg))
))
