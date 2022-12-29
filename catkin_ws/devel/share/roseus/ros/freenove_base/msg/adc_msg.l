;; Auto-generated. Do not edit!


(when (boundp 'freenove_base::adc_msg)
  (if (not (find-package "FREENOVE_BASE"))
    (make-package "FREENOVE_BASE"))
  (shadow 'adc_msg (find-package "FREENOVE_BASE")))
(unless (find-package "FREENOVE_BASE::ADC_MSG")
  (make-package "FREENOVE_BASE::ADC_MSG"))

(in-package "ROS")
;;//! \htmlinclude adc_msg.msg.html


(defclass freenove_base::adc_msg
  :super ros::object
  :slots (_left _right _power ))

(defmethod freenove_base::adc_msg
  (:init
   (&key
    ((:left __left) 0.0)
    ((:right __right) 0.0)
    ((:power __power) 0.0)
    )
   (send-super :init)
   (setq _left (float __left))
   (setq _right (float __right))
   (setq _power (float __power))
   self)
  (:left
   (&optional __left)
   (if __left (setq _left __left)) _left)
  (:right
   (&optional __right)
   (if __right (setq _right __right)) _right)
  (:power
   (&optional __power)
   (if __power (setq _power __power)) _power)
  (:serialization-length
   ()
   (+
    ;; float32 _left
    4
    ;; float32 _right
    4
    ;; float32 _power
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _left
       (sys::poke _left (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _right
       (sys::poke _right (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _power
       (sys::poke _power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _left
     (setq _left (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _right
     (setq _right (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _power
     (setq _power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get freenove_base::adc_msg :md5sum-) "87fdce4da0e9737b84d40aaf1c65c019")
(setf (get freenove_base::adc_msg :datatype-) "freenove_base/adc_msg")
(setf (get freenove_base::adc_msg :definition-)
      "float32 left
float32 right
float32 power
")



(provide :freenove_base/adc_msg "87fdce4da0e9737b84d40aaf1c65c019")


