;; Auto-generated. Do not edit!


(when (boundp 'freenove_base::ultrasonic_srv)
  (if (not (find-package "FREENOVE_BASE"))
    (make-package "FREENOVE_BASE"))
  (shadow 'ultrasonic_srv (find-package "FREENOVE_BASE")))
(unless (find-package "FREENOVE_BASE::ULTRASONIC_SRV")
  (make-package "FREENOVE_BASE::ULTRASONIC_SRV"))
(unless (find-package "FREENOVE_BASE::ULTRASONIC_SRVREQUEST")
  (make-package "FREENOVE_BASE::ULTRASONIC_SRVREQUEST"))
(unless (find-package "FREENOVE_BASE::ULTRASONIC_SRVRESPONSE")
  (make-package "FREENOVE_BASE::ULTRASONIC_SRVRESPONSE"))

(in-package "ROS")





(defclass freenove_base::ultrasonic_srvRequest
  :super ros::object
  :slots (_activate ))

(defmethod freenove_base::ultrasonic_srvRequest
  (:init
   (&key
    ((:activate __activate) nil)
    )
   (send-super :init)
   (setq _activate __activate)
   self)
  (:activate
   (&optional (__activate :null))
   (if (not (eq __activate :null)) (setq _activate __activate)) _activate)
  (:serialization-length
   ()
   (+
    ;; bool _activate
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _activate
       (if _activate (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _activate
     (setq _activate (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass freenove_base::ultrasonic_srvResponse
  :super ros::object
  :slots (_distance ))

(defmethod freenove_base::ultrasonic_srvResponse
  (:init
   (&key
    ((:distance __distance) 0)
    )
   (send-super :init)
   (setq _distance (round __distance))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:serialization-length
   ()
   (+
    ;; int32 _distance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _distance
       (write-long _distance s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _distance
     (setq _distance (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass freenove_base::ultrasonic_srv
  :super ros::object
  :slots ())

(setf (get freenove_base::ultrasonic_srv :md5sum-) "f243fa36d849f4a9e106af7b84e04939")
(setf (get freenove_base::ultrasonic_srv :datatype-) "freenove_base/ultrasonic_srv")
(setf (get freenove_base::ultrasonic_srv :request) freenove_base::ultrasonic_srvRequest)
(setf (get freenove_base::ultrasonic_srv :response) freenove_base::ultrasonic_srvResponse)

(defmethod freenove_base::ultrasonic_srvRequest
  (:response () (instance freenove_base::ultrasonic_srvResponse :init)))

(setf (get freenove_base::ultrasonic_srvRequest :md5sum-) "f243fa36d849f4a9e106af7b84e04939")
(setf (get freenove_base::ultrasonic_srvRequest :datatype-) "freenove_base/ultrasonic_srvRequest")
(setf (get freenove_base::ultrasonic_srvRequest :definition-)
      "bool activate
---
int32 distance
")

(setf (get freenove_base::ultrasonic_srvResponse :md5sum-) "f243fa36d849f4a9e106af7b84e04939")
(setf (get freenove_base::ultrasonic_srvResponse :datatype-) "freenove_base/ultrasonic_srvResponse")
(setf (get freenove_base::ultrasonic_srvResponse :definition-)
      "bool activate
---
int32 distance
")



(provide :freenove_base/ultrasonic_srv "f243fa36d849f4a9e106af7b84e04939")


