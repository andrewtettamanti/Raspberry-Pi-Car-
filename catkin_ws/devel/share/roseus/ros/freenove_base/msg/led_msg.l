;; Auto-generated. Do not edit!


(when (boundp 'freenove_base::led_msg)
  (if (not (find-package "FREENOVE_BASE"))
    (make-package "FREENOVE_BASE"))
  (shadow 'led_msg (find-package "FREENOVE_BASE")))
(unless (find-package "FREENOVE_BASE::LED_MSG")
  (make-package "FREENOVE_BASE::LED_MSG"))

(in-package "ROS")
;;//! \htmlinclude led_msg.msg.html


(defclass freenove_base::led_msg
  :super ros::object
  :slots (_r _g _b ))

(defmethod freenove_base::led_msg
  (:init
   (&key
    ((:r __r) 0)
    ((:g __g) 0)
    ((:b __b) 0)
    )
   (send-super :init)
   (setq _r (round __r))
   (setq _g (round __g))
   (setq _b (round __b))
   self)
  (:r
   (&optional __r)
   (if __r (setq _r __r)) _r)
  (:g
   (&optional __g)
   (if __g (setq _g __g)) _g)
  (:b
   (&optional __b)
   (if __b (setq _b __b)) _b)
  (:serialization-length
   ()
   (+
    ;; int32 _r
    4
    ;; int32 _g
    4
    ;; int32 _b
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _r
       (write-long _r s)
     ;; int32 _g
       (write-long _g s)
     ;; int32 _b
       (write-long _b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _r
     (setq _r (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _g
     (setq _g (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _b
     (setq _b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get freenove_base::led_msg :md5sum-) "84687e3e5559ed0c71018e843bbfb5cd")
(setf (get freenove_base::led_msg :datatype-) "freenove_base/led_msg")
(setf (get freenove_base::led_msg :definition-)
      "int32 r
int32 g
int32 b
")



(provide :freenove_base/led_msg "84687e3e5559ed0c71018e843bbfb5cd")


