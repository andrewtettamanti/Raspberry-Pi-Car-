;; Auto-generated. Do not edit!


(when (boundp 'freenove_base::open_cv_control_msg)
  (if (not (find-package "FREENOVE_BASE"))
    (make-package "FREENOVE_BASE"))
  (shadow 'open_cv_control_msg (find-package "FREENOVE_BASE")))
(unless (find-package "FREENOVE_BASE::OPEN_CV_CONTROL_MSG")
  (make-package "FREENOVE_BASE::OPEN_CV_CONTROL_MSG"))

(in-package "ROS")
;;//! \htmlinclude open_cv_control_msg.msg.html


(defclass freenove_base::open_cv_control_msg
  :super ros::object
  :slots (_switch ))

(defmethod freenove_base::open_cv_control_msg
  (:init
   (&key
    ((:switch __switch) nil)
    )
   (send-super :init)
   (setq _switch __switch)
   self)
  (:switch
   (&optional (__switch :null))
   (if (not (eq __switch :null)) (setq _switch __switch)) _switch)
  (:serialization-length
   ()
   (+
    ;; bool _switch
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _switch
       (if _switch (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _switch
     (setq _switch (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get freenove_base::open_cv_control_msg :md5sum-) "edf4418cb54ddc10e1d7f39bd43124c4")
(setf (get freenove_base::open_cv_control_msg :datatype-) "freenove_base/open_cv_control_msg")
(setf (get freenove_base::open_cv_control_msg :definition-)
      "bool switch
")



(provide :freenove_base/open_cv_control_msg "edf4418cb54ddc10e1d7f39bd43124c4")


