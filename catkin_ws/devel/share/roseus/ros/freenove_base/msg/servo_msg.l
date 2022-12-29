;; Auto-generated. Do not edit!


(when (boundp 'freenove_base::servo_msg)
  (if (not (find-package "FREENOVE_BASE"))
    (make-package "FREENOVE_BASE"))
  (shadow 'servo_msg (find-package "FREENOVE_BASE")))
(unless (find-package "FREENOVE_BASE::SERVO_MSG")
  (make-package "FREENOVE_BASE::SERVO_MSG"))

(in-package "ROS")
;;//! \htmlinclude servo_msg.msg.html


(defclass freenove_base::servo_msg
  :super ros::object
  :slots (_horizontal _vertical ))

(defmethod freenove_base::servo_msg
  (:init
   (&key
    ((:horizontal __horizontal) 0)
    ((:vertical __vertical) 0)
    )
   (send-super :init)
   (setq _horizontal (round __horizontal))
   (setq _vertical (round __vertical))
   self)
  (:horizontal
   (&optional __horizontal)
   (if __horizontal (setq _horizontal __horizontal)) _horizontal)
  (:vertical
   (&optional __vertical)
   (if __vertical (setq _vertical __vertical)) _vertical)
  (:serialization-length
   ()
   (+
    ;; int32 _horizontal
    4
    ;; int32 _vertical
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _horizontal
       (write-long _horizontal s)
     ;; int32 _vertical
       (write-long _vertical s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _horizontal
     (setq _horizontal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _vertical
     (setq _vertical (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get freenove_base::servo_msg :md5sum-) "811a705e34a03723eca077ed4732bcd1")
(setf (get freenove_base::servo_msg :datatype-) "freenove_base/servo_msg")
(setf (get freenove_base::servo_msg :definition-)
      "int32 horizontal
int32 vertical
")



(provide :freenove_base/servo_msg "811a705e34a03723eca077ed4732bcd1")


