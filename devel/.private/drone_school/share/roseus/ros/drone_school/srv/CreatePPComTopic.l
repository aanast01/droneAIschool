;; Auto-generated. Do not edit!


(when (boundp 'drone_school::CreatePPComTopic)
  (if (not (find-package "DRONE_SCHOOL"))
    (make-package "DRONE_SCHOOL"))
  (shadow 'CreatePPComTopic (find-package "DRONE_SCHOOL")))
(unless (find-package "DRONE_SCHOOL::CREATEPPCOMTOPIC")
  (make-package "DRONE_SCHOOL::CREATEPPCOMTOPIC"))
(unless (find-package "DRONE_SCHOOL::CREATEPPCOMTOPICREQUEST")
  (make-package "DRONE_SCHOOL::CREATEPPCOMTOPICREQUEST"))
(unless (find-package "DRONE_SCHOOL::CREATEPPCOMTOPICRESPONSE")
  (make-package "DRONE_SCHOOL::CREATEPPCOMTOPICRESPONSE"))

(in-package "ROS")





(defclass drone_school::CreatePPComTopicRequest
  :super ros::object
  :slots (_source _targets _topic_name _package_name _message_type ))

(defmethod drone_school::CreatePPComTopicRequest
  (:init
   (&key
    ((:source __source) "")
    ((:targets __targets) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:topic_name __topic_name) "")
    ((:package_name __package_name) "")
    ((:message_type __message_type) "")
    )
   (send-super :init)
   (setq _source (string __source))
   (setq _targets __targets)
   (setq _topic_name (string __topic_name))
   (setq _package_name (string __package_name))
   (setq _message_type (string __message_type))
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:targets
   (&optional __targets)
   (if __targets (setq _targets __targets)) _targets)
  (:topic_name
   (&optional __topic_name)
   (if __topic_name (setq _topic_name __topic_name)) _topic_name)
  (:package_name
   (&optional __package_name)
   (if __package_name (setq _package_name __package_name)) _package_name)
  (:message_type
   (&optional __message_type)
   (if __message_type (setq _message_type __message_type)) _message_type)
  (:serialization-length
   ()
   (+
    ;; string _source
    4 (length _source)
    ;; string[] _targets
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _targets)) 4
    ;; string _topic_name
    4 (length _topic_name)
    ;; string _package_name
    4 (length _package_name)
    ;; string _message_type
    4 (length _message_type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _source
       (write-long (length _source) s) (princ _source s)
     ;; string[] _targets
     (write-long (length _targets) s)
     (dolist (elem _targets)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string _topic_name
       (write-long (length _topic_name) s) (princ _topic_name s)
     ;; string _package_name
       (write-long (length _package_name) s) (princ _package_name s)
     ;; string _message_type
       (write-long (length _message_type) s) (princ _message_type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _source
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _source (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _targets
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _targets (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _targets i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string _topic_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _topic_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _package_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _package_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _message_type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message_type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass drone_school::CreatePPComTopicResponse
  :super ros::object
  :slots (_result ))

(defmethod drone_school::CreatePPComTopicResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass drone_school::CreatePPComTopic
  :super ros::object
  :slots ())

(setf (get drone_school::CreatePPComTopic :md5sum-) "04b00a4c4e03cffa324c24830dde7e4a")
(setf (get drone_school::CreatePPComTopic :datatype-) "drone_school/CreatePPComTopic")
(setf (get drone_school::CreatePPComTopic :request) drone_school::CreatePPComTopicRequest)
(setf (get drone_school::CreatePPComTopic :response) drone_school::CreatePPComTopicResponse)

(defmethod drone_school::CreatePPComTopicRequest
  (:response () (instance drone_school::CreatePPComTopicResponse :init)))

(setf (get drone_school::CreatePPComTopicRequest :md5sum-) "04b00a4c4e03cffa324c24830dde7e4a")
(setf (get drone_school::CreatePPComTopicRequest :datatype-) "drone_school/CreatePPComTopicRequest")
(setf (get drone_school::CreatePPComTopicRequest :definition-)
      "string source            # Source of the topic
string[] targets         # Names of nodes that can receive this message,
                         # set to 'all' if all nodes can receive the message
string topic_name
string package_name
string message_type
---
string result            # Return 'succeeded' for 'failed'
")

(setf (get drone_school::CreatePPComTopicResponse :md5sum-) "04b00a4c4e03cffa324c24830dde7e4a")
(setf (get drone_school::CreatePPComTopicResponse :datatype-) "drone_school/CreatePPComTopicResponse")
(setf (get drone_school::CreatePPComTopicResponse :definition-)
      "string source            # Source of the topic
string[] targets         # Names of nodes that can receive this message,
                         # set to 'all' if all nodes can receive the message
string topic_name
string package_name
string message_type
---
string result            # Return 'succeeded' for 'failed'
")



(provide :drone_school/CreatePPComTopic "04b00a4c4e03cffa324c24830dde7e4a")


