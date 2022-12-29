; Auto-generated. Do not edit!


(cl:in-package freenove_base-srv)


;//! \htmlinclude ultrasonic_srv-request.msg.html

(cl:defclass <ultrasonic_srv-request> (roslisp-msg-protocol:ros-message)
  ((activate
    :reader activate
    :initarg :activate
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ultrasonic_srv-request (<ultrasonic_srv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasonic_srv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasonic_srv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name freenove_base-srv:<ultrasonic_srv-request> is deprecated: use freenove_base-srv:ultrasonic_srv-request instead.")))

(cl:ensure-generic-function 'activate-val :lambda-list '(m))
(cl:defmethod activate-val ((m <ultrasonic_srv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-srv:activate-val is deprecated.  Use freenove_base-srv:activate instead.")
  (activate m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasonic_srv-request>) ostream)
  "Serializes a message object of type '<ultrasonic_srv-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'activate) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasonic_srv-request>) istream)
  "Deserializes a message object of type '<ultrasonic_srv-request>"
    (cl:setf (cl:slot-value msg 'activate) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasonic_srv-request>)))
  "Returns string type for a service object of type '<ultrasonic_srv-request>"
  "freenove_base/ultrasonic_srvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasonic_srv-request)))
  "Returns string type for a service object of type 'ultrasonic_srv-request"
  "freenove_base/ultrasonic_srvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasonic_srv-request>)))
  "Returns md5sum for a message object of type '<ultrasonic_srv-request>"
  "f243fa36d849f4a9e106af7b84e04939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasonic_srv-request)))
  "Returns md5sum for a message object of type 'ultrasonic_srv-request"
  "f243fa36d849f4a9e106af7b84e04939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasonic_srv-request>)))
  "Returns full string definition for message of type '<ultrasonic_srv-request>"
  (cl:format cl:nil "bool activate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasonic_srv-request)))
  "Returns full string definition for message of type 'ultrasonic_srv-request"
  (cl:format cl:nil "bool activate~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasonic_srv-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasonic_srv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasonic_srv-request
    (cl:cons ':activate (activate msg))
))
;//! \htmlinclude ultrasonic_srv-response.msg.html

(cl:defclass <ultrasonic_srv-response> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type cl:integer
    :initform 0))
)

(cl:defclass ultrasonic_srv-response (<ultrasonic_srv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultrasonic_srv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultrasonic_srv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name freenove_base-srv:<ultrasonic_srv-response> is deprecated: use freenove_base-srv:ultrasonic_srv-response instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <ultrasonic_srv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-srv:distance-val is deprecated.  Use freenove_base-srv:distance instead.")
  (distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultrasonic_srv-response>) ostream)
  "Serializes a message object of type '<ultrasonic_srv-response>"
  (cl:let* ((signed (cl:slot-value msg 'distance)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultrasonic_srv-response>) istream)
  "Deserializes a message object of type '<ultrasonic_srv-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'distance) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultrasonic_srv-response>)))
  "Returns string type for a service object of type '<ultrasonic_srv-response>"
  "freenove_base/ultrasonic_srvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasonic_srv-response)))
  "Returns string type for a service object of type 'ultrasonic_srv-response"
  "freenove_base/ultrasonic_srvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultrasonic_srv-response>)))
  "Returns md5sum for a message object of type '<ultrasonic_srv-response>"
  "f243fa36d849f4a9e106af7b84e04939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultrasonic_srv-response)))
  "Returns md5sum for a message object of type 'ultrasonic_srv-response"
  "f243fa36d849f4a9e106af7b84e04939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultrasonic_srv-response>)))
  "Returns full string definition for message of type '<ultrasonic_srv-response>"
  (cl:format cl:nil "int32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultrasonic_srv-response)))
  "Returns full string definition for message of type 'ultrasonic_srv-response"
  (cl:format cl:nil "int32 distance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultrasonic_srv-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultrasonic_srv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ultrasonic_srv-response
    (cl:cons ':distance (distance msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ultrasonic_srv)))
  'ultrasonic_srv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ultrasonic_srv)))
  'ultrasonic_srv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultrasonic_srv)))
  "Returns string type for a service object of type '<ultrasonic_srv>"
  "freenove_base/ultrasonic_srv")