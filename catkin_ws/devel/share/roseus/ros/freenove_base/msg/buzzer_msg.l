;; Auto-generated. Do not edit!


(when (boundp 'freenove_base::buzzer_msg)
  (if (not (find-package "FREENOVE_BASE"))
    (make-package "FREENOVE_BASE"))
  (shadow 'buzzer_msg (find-package "FREENOVE_BASE")))
(unless (find-package "FREENOVE_BASE::BUZZER_MSG")
  (make-package "FREENOVE_BASE::BUZZER_MSG"))

(in-package "ROS")
;;//! \htmlinclude buzzer_msg.msg.html


(defclass freenove_base::buzzer_msg
  :super ros::object
  :slots (_command ))

(defmethod freenove_base::buzzer_msg
  (:init
   (&key
    ((:command __command) nil)
    )
   (send-super :init)
   (setq _command __command)
   self)
  (:command
   (&optional (__command :null))
   (if (not (eq __command :null)) (setq _command __command)) _command)
  (:serialization-length
   ()
   (+
    ;; bool _command
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _command
       (if _command (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _command
     (setq _command (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get freenove_base::buzzer_msg :md5sum-) "01134d7a2df15c0112a6a1d7df9d666d")
(setf (get freenove_base::buzzer_msg :datatype-) "freenove_base/buzzer_msg")
(setf (get freenove_base::buzzer_msg :definition-)
      "bool command
")



(provide :freenove_base/buzzer_msg "01134d7a2df15c0112a6a1d7df9d666d")


