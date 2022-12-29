; Auto-generated. Do not edit!


(cl:in-package freenove_base-msg)


;//! \htmlinclude open_cv_control_msg.msg.html

(cl:defclass <open_cv_control_msg> (roslisp-msg-protocol:ros-message)
  ((switch
    :reader switch
    :initarg :switch
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass open_cv_control_msg (<open_cv_control_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <open_cv_control_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'open_cv_control_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name freenove_base-msg:<open_cv_control_msg> is deprecated: use freenove_base-msg:open_cv_control_msg instead.")))

(cl:ensure-generic-function 'switch-val :lambda-list '(m))
(cl:defmethod switch-val ((m <open_cv_control_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:switch-val is deprecated.  Use freenove_base-msg:switch instead.")
  (switch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <open_cv_control_msg>) ostream)
  "Serializes a message object of type '<open_cv_control_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'switch) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <open_cv_control_msg>) istream)
  "Deserializes a message object of type '<open_cv_control_msg>"
    (cl:setf (cl:slot-value msg 'switch) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<open_cv_control_msg>)))
  "Returns string type for a message object of type '<open_cv_control_msg>"
  "freenove_base/open_cv_control_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'open_cv_control_msg)))
  "Returns string type for a message object of type 'open_cv_control_msg"
  "freenove_base/open_cv_control_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<open_cv_control_msg>)))
  "Returns md5sum for a message object of type '<open_cv_control_msg>"
  "edf4418cb54ddc10e1d7f39bd43124c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'open_cv_control_msg)))
  "Returns md5sum for a message object of type 'open_cv_control_msg"
  "edf4418cb54ddc10e1d7f39bd43124c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<open_cv_control_msg>)))
  "Returns full string definition for message of type '<open_cv_control_msg>"
  (cl:format cl:nil "bool switch~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'open_cv_control_msg)))
  "Returns full string definition for message of type 'open_cv_control_msg"
  (cl:format cl:nil "bool switch~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <open_cv_control_msg>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <open_cv_control_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'open_cv_control_msg
    (cl:cons ':switch (switch msg))
))
