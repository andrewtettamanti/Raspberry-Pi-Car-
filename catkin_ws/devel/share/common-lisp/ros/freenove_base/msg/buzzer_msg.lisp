; Auto-generated. Do not edit!


(cl:in-package freenove_base-msg)


;//! \htmlinclude buzzer_msg.msg.html

(cl:defclass <buzzer_msg> (roslisp-msg-protocol:ros-message)
  ((command
    :reader command
    :initarg :command
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass buzzer_msg (<buzzer_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <buzzer_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'buzzer_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name freenove_base-msg:<buzzer_msg> is deprecated: use freenove_base-msg:buzzer_msg instead.")))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <buzzer_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:command-val is deprecated.  Use freenove_base-msg:command instead.")
  (command m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <buzzer_msg>) ostream)
  "Serializes a message object of type '<buzzer_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'command) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <buzzer_msg>) istream)
  "Deserializes a message object of type '<buzzer_msg>"
    (cl:setf (cl:slot-value msg 'command) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<buzzer_msg>)))
  "Returns string type for a message object of type '<buzzer_msg>"
  "freenove_base/buzzer_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'buzzer_msg)))
  "Returns string type for a message object of type 'buzzer_msg"
  "freenove_base/buzzer_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<buzzer_msg>)))
  "Returns md5sum for a message object of type '<buzzer_msg>"
  "01134d7a2df15c0112a6a1d7df9d666d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'buzzer_msg)))
  "Returns md5sum for a message object of type 'buzzer_msg"
  "01134d7a2df15c0112a6a1d7df9d666d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<buzzer_msg>)))
  "Returns full string definition for message of type '<buzzer_msg>"
  (cl:format cl:nil "bool command~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'buzzer_msg)))
  "Returns full string definition for message of type 'buzzer_msg"
  (cl:format cl:nil "bool command~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <buzzer_msg>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <buzzer_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'buzzer_msg
    (cl:cons ':command (command msg))
))
