;; Auto-generated. Do not edit!


(when (boundp 'freenove_base::line_tracking_msg)
  (if (not (find-package "FREENOVE_BASE"))
    (make-package "FREENOVE_BASE"))
  (shadow 'line_tracking_msg (find-package "FREENOVE_BASE")))
(unless (find-package "FREENOVE_BASE::LINE_TRACKING_MSG")
  (make-package "FREENOVE_BASE::LINE_TRACKING_MSG"))

(in-package "ROS")
;;//! \htmlinclude line_tracking_msg.msg.html


(defclass freenove_base::line_tracking_msg
  :super ros::object
  :slots (_left _right _mid ))

(defmethod freenove_base::line_tracking_msg
  (:init
   (&key
    ((:left __left) nil)
    ((:right __right) nil)
    ((:mid __mid) nil)
    )
   (send-super :init)
   (setq _left __left)
   (setq _right __right)
   (setq _mid __mid)
   self)
  (:left
   (&optional (__left :null))
   (if (not (eq __left :null)) (setq _left __left)) _left)
  (:right
   (&optional (__right :null))
   (if (not (eq __right :null)) (setq _right __right)) _right)
  (:mid
   (&optional (__mid :null))
   (if (not (eq __mid :null)) (setq _mid __mid)) _mid)
  (:serialization-length
   ()
   (+
    ;; bool _left
    1
    ;; bool _right
    1
    ;; bool _mid
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _left
       (if _left (write-byte -1 s) (write-byte 0 s))
     ;; bool _right
       (if _right (write-byte -1 s) (write-byte 0 s))
     ;; bool _mid
       (if _mid (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _left
     (setq _left (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _right
     (setq _right (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _mid
     (setq _mid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get freenove_base::line_tracking_msg :md5sum-) "8464e379cfd80108cb0e774a6e6ad425")
(setf (get freenove_base::line_tracking_msg :datatype-) "freenove_base/line_tracking_msg")
(setf (get freenove_base::line_tracking_msg :definition-)
      "bool left
bool right
bool mid
")



(provide :freenove_base/line_tracking_msg "8464e379cfd80108cb0e774a6e6ad425")


