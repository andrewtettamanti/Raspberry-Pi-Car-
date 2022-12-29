;; Auto-generated. Do not edit!


(when (boundp 'freenove_base::motor_msg)
  (if (not (find-package "FREENOVE_BASE"))
    (make-package "FREENOVE_BASE"))
  (shadow 'motor_msg (find-package "FREENOVE_BASE")))
(unless (find-package "FREENOVE_BASE::MOTOR_MSG")
  (make-package "FREENOVE_BASE::MOTOR_MSG"))

(in-package "ROS")
;;//! \htmlinclude motor_msg.msg.html


(defclass freenove_base::motor_msg
  :super ros::object
  :slots (_left_Upper_Wheel _left_Lower_Wheel _right_Upper_Wheel _right_Lower_Wheel ))

(defmethod freenove_base::motor_msg
  (:init
   (&key
    ((:left_Upper_Wheel __left_Upper_Wheel) 0)
    ((:left_Lower_Wheel __left_Lower_Wheel) 0)
    ((:right_Upper_Wheel __right_Upper_Wheel) 0)
    ((:right_Lower_Wheel __right_Lower_Wheel) 0)
    )
   (send-super :init)
   (setq _left_Upper_Wheel (round __left_Upper_Wheel))
   (setq _left_Lower_Wheel (round __left_Lower_Wheel))
   (setq _right_Upper_Wheel (round __right_Upper_Wheel))
   (setq _right_Lower_Wheel (round __right_Lower_Wheel))
   self)
  (:left_Upper_Wheel
   (&optional __left_Upper_Wheel)
   (if __left_Upper_Wheel (setq _left_Upper_Wheel __left_Upper_Wheel)) _left_Upper_Wheel)
  (:left_Lower_Wheel
   (&optional __left_Lower_Wheel)
   (if __left_Lower_Wheel (setq _left_Lower_Wheel __left_Lower_Wheel)) _left_Lower_Wheel)
  (:right_Upper_Wheel
   (&optional __right_Upper_Wheel)
   (if __right_Upper_Wheel (setq _right_Upper_Wheel __right_Upper_Wheel)) _right_Upper_Wheel)
  (:right_Lower_Wheel
   (&optional __right_Lower_Wheel)
   (if __right_Lower_Wheel (setq _right_Lower_Wheel __right_Lower_Wheel)) _right_Lower_Wheel)
  (:serialization-length
   ()
   (+
    ;; int32 _left_Upper_Wheel
    4
    ;; int32 _left_Lower_Wheel
    4
    ;; int32 _right_Upper_Wheel
    4
    ;; int32 _right_Lower_Wheel
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _left_Upper_Wheel
       (write-long _left_Upper_Wheel s)
     ;; int32 _left_Lower_Wheel
       (write-long _left_Lower_Wheel s)
     ;; int32 _right_Upper_Wheel
       (write-long _right_Upper_Wheel s)
     ;; int32 _right_Lower_Wheel
       (write-long _right_Lower_Wheel s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _left_Upper_Wheel
     (setq _left_Upper_Wheel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _left_Lower_Wheel
     (setq _left_Lower_Wheel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_Upper_Wheel
     (setq _right_Upper_Wheel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_Lower_Wheel
     (setq _right_Lower_Wheel (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get freenove_base::motor_msg :md5sum-) "e24da12eec5391bbb4b843a4cfaed882")
(setf (get freenove_base::motor_msg :datatype-) "freenove_base/motor_msg")
(setf (get freenove_base::motor_msg :definition-)
      "int32 left_Upper_Wheel
int32 left_Lower_Wheel
int32 right_Upper_Wheel
int32 right_Lower_Wheel
")



(provide :freenove_base/motor_msg "e24da12eec5391bbb4b843a4cfaed882")


