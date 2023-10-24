;; Auto-generated. Do not edit!


(when (boundp 'traj_gennav::ReadPathFromFile)
  (if (not (find-package "TRAJ_GENNAV"))
    (make-package "TRAJ_GENNAV"))
  (shadow 'ReadPathFromFile (find-package "TRAJ_GENNAV")))
(unless (find-package "TRAJ_GENNAV::READPATHFROMFILE")
  (make-package "TRAJ_GENNAV::READPATHFROMFILE"))
(unless (find-package "TRAJ_GENNAV::READPATHFROMFILEREQUEST")
  (make-package "TRAJ_GENNAV::READPATHFROMFILEREQUEST"))
(unless (find-package "TRAJ_GENNAV::READPATHFROMFILERESPONSE")
  (make-package "TRAJ_GENNAV::READPATHFROMFILERESPONSE"))

(in-package "ROS")

(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))




(defclass traj_gennav::ReadPathFromFileRequest
  :super ros::object
  :slots (_filename ))

(defmethod traj_gennav::ReadPathFromFileRequest
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

(defclass traj_gennav::ReadPathFromFileResponse
  :super ros::object
  :slots ())

(defmethod traj_gennav::ReadPathFromFileResponse
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

(defclass traj_gennav::ReadPathFromFile
  :super ros::object
  :slots ())

(setf (get traj_gennav::ReadPathFromFile :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get traj_gennav::ReadPathFromFile :datatype-) "traj_gennav/ReadPathFromFile")
(setf (get traj_gennav::ReadPathFromFile :request) traj_gennav::ReadPathFromFileRequest)
(setf (get traj_gennav::ReadPathFromFile :response) traj_gennav::ReadPathFromFileResponse)

(defmethod traj_gennav::ReadPathFromFileRequest
  (:response () (instance traj_gennav::ReadPathFromFileResponse :init)))

(setf (get traj_gennav::ReadPathFromFileRequest :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get traj_gennav::ReadPathFromFileRequest :datatype-) "traj_gennav/ReadPathFromFileRequest")
(setf (get traj_gennav::ReadPathFromFileRequest :definition-)
      "# Message to specify .yaml mission file to load
std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---
")

(setf (get traj_gennav::ReadPathFromFileResponse :md5sum-) "716e25f9d9dc76ceba197f93cbf05dc7")
(setf (get traj_gennav::ReadPathFromFileResponse :datatype-) "traj_gennav/ReadPathFromFileResponse")
(setf (get traj_gennav::ReadPathFromFileResponse :definition-)
      "# Message to specify .yaml mission file to load
std_msgs/String filename

================================================================================
MSG: std_msgs/String
string data
---
")



(provide :traj_gennav/ReadPathFromFile "716e25f9d9dc76ceba197f93cbf05dc7")


