;; Auto-generated. Do not edit!


(when (boundp 'traj_gennav::ExecutePath)
  (if (not (find-package "TRAJ_GENNAV"))
    (make-package "TRAJ_GENNAV"))
  (shadow 'ExecutePath (find-package "TRAJ_GENNAV")))
(unless (find-package "TRAJ_GENNAV::EXECUTEPATH")
  (make-package "TRAJ_GENNAV::EXECUTEPATH"))
(unless (find-package "TRAJ_GENNAV::EXECUTEPATHREQUEST")
  (make-package "TRAJ_GENNAV::EXECUTEPATHREQUEST"))
(unless (find-package "TRAJ_GENNAV::EXECUTEPATHRESPONSE")
  (make-package "TRAJ_GENNAV::EXECUTEPATHRESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass traj_gennav::ExecutePathRequest
  :super ros::object
  :slots (_filename ))

(defmethod traj_gennav::ExecutePathRequest
  (:init
   (&key
    ((:filename __filename) (instance std_msgs::String :init))
    )
   (send-super :init)
   (setq _filename __filename)
   self)
  (:filename
   (&rest __filename)
   (if (keywordp (car __filename))
       (send* _filename __filename)
     (progn
       (if __filename (setq _filename (car __filename)))
       _filename)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/String _filename
    (send _filename :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/String _filename
       (send _filename :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/String _filename
     (send _filename :deserialize buf ptr-) (incf ptr- (send _filename :serialization-length))
   ;;
   self)
  )

(defclass traj_gennav::ExecutePathResponse
  :super ros::object
  :slots ())

(defmethod traj_gennav::ExecutePathResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass traj_gennav::ExecutePath
  :super ros::object
  :slots ())

(setf (get traj_gennav::ExecutePath :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get traj_gennav::ExecutePath :datatype-) "traj_gennav/ExecutePath")
(setf (get traj_gennav::ExecutePath :request) traj_gennav::ExecutePathRequest)
(setf (get traj_gennav::ExecutePath :response) traj_gennav::ExecutePathResponse)

(defmethod traj_gennav::ExecutePathRequest
  (:response () (instance traj_gennav::ExecutePathResponse :init)))

(setf (get traj_gennav::ExecutePathRequest :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get traj_gennav::ExecutePathRequest :datatype-) "traj_gennav/ExecutePathRequest")
(setf (get traj_gennav::ExecutePathRequest :definition-)
      "# Message to specify .yaml mission file to load
std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---
")

(setf (get traj_gennav::ExecutePathResponse :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get traj_gennav::ExecutePathResponse :datatype-) "traj_gennav/ExecutePathResponse")
(setf (get traj_gennav::ExecutePathResponse :definition-)
      "# Message to specify .yaml mission file to load
std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---
")



(provide :traj_gennav/ExecutePath "716e25f9d9dc76ceba197f93cbf05dc7")


