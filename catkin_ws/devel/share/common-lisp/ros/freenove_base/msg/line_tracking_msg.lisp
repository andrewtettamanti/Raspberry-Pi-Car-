; Auto-generated. Do not edit!


(cl:in-package freenove_base-msg)


;//! \htmlinclude line_tracking_msg.msg.html

(cl:defclass <line_tracking_msg> (roslisp-msg-protocol:ros-message)
  ((left
    :reader left
    :initarg :left
    :type cl:boolean
    :initform cl:nil)
   (right
    :reader right
    :initarg :right
    :type cl:boolean
    :initform cl:nil)
   (mid
    :reader mid
    :initarg :mid
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass line_tracking_msg (<line_tracking_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <line_tracking_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'line_tracking_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name freenove_base-msg:<line_tracking_msg> is deprecated: use freenove_base-msg:line_tracking_msg instead.")))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <line_tracking_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:left-val is deprecated.  Use freenove_base-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <line_tracking_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:right-val is deprecated.  Use freenove_base-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'mid-val :lambda-list '(m))
(cl:defmethod mid-val ((m <line_tracking_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader freenove_base-msg:mid-val is deprecated.  Use freenove_base-msg:mid instead.")
  (mid m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <line_tracking_msg>) ostream)
  "Serializes a message object of type '<line_tracking_msg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'left) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'right) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'mid) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <line_tracking_msg>) istream)
  "Deserializes a message object of type '<line_tracking_msg>"
    (cl:setf (cl:slot-value msg 'left) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'right) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'mid) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<line_tracking_msg>)))
  "Returns string type for a message object of type '<line_tracking_msg>"
  "freenove_base/line_tracking_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'line_tracking_msg)))
  "Returns string type for a message object of type 'line_tracking_msg"
  "freenove_base/line_tracking_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<line_tracking_msg>)))
  "Returns md5sum for a message object of type '<line_tracking_msg>"
  "8464e379cfd80108cb0e774a6e6ad425")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'line_tracking_msg)))
  "Returns md5sum for a message object of type 'line_tracking_msg"
  "8464e379cfd80108cb0e774a6e6ad425")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<line_tracking_msg>)))
  "Returns full string definition for message of type '<line_tracking_msg>"
  (cl:format cl:nil "bool left~%bool right~%bool mid~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'line_tracking_msg)))
  "Returns full string definition for message of type 'line_tracking_msg"
  (cl:format cl:nil "bool left~%bool right~%bool mid~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <line_tracking_msg>))
  (cl:+ 0
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <line_tracking_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'line_tracking_msg
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':mid (mid msg))
))
