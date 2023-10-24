;; Auto-generated. Do not edit!


(when (boundp 'unicon::Stop)
  (if (not (find-package "UNICON"))
    (make-package "UNICON"))
  (shadow 'Stop (find-package "UNICON")))
(unless (find-package "UNICON::STOP")
  (make-package "UNICON::STOP"))
(unless (find-package "UNICON::STOPREQUEST")
  (make-package "UNICON::STOPREQUEST"))
(unless (find-package "UNICON::STOPRESPONSE")
  (make-package "UNICON::STOPRESPONSE"))

(in-package "ROS")





(defclass unicon::StopRequest
  :super ros::object
  :slots (_message ))

(defmethod unicon::StopRequest
  (:init
   (&key
    ((:message __message) "")
    )
   (send-super :init)
   (setq _message (string __message))
   self)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass unicon::StopResponse
  :super ros::object
  :slots (_result ))

(defmethod unicon::StopResponse
  (:init
   (&key
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _result (round __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass unicon::Stop
  :super ros::object
  :slots ())

(setf (get unicon::Stop :md5sum-) "094fea5bf24fa26870a84bcc4ec8c441")
(setf (get unicon::Stop :datatype-) "unicon/Stop")
(setf (get unicon::Stop :request) unicon::StopRequest)
(setf (get unicon::Stop :response) unicon::StopResponse)

(defmethod unicon::StopRequest
  (:response () (instance unicon::StopResponse :init)))

(setf (get unicon::StopRequest :md5sum-) "094fea5bf24fa26870a84bcc4ec8c441")
(setf (get unicon::StopRequest :datatype-) "unicon/StopRequest")
(setf (get unicon::StopRequest :definition-)
      "string message
---
uint8 result
")

(setf (get unicon::StopResponse :md5sum-) "094fea5bf24fa26870a84bcc4ec8c441")
(setf (get unicon::StopResponse :datatype-) "unicon/StopResponse")
(setf (get unicon::StopResponse :definition-)
      "string message
---
uint8 result
")



(provide :unicon/Stop "094fea5bf24fa26870a84bcc4ec8c441")


