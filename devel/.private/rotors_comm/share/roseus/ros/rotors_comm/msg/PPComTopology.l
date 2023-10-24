;; Auto-generated. Do not edit!


(when (boundp 'rotors_comm::PPComTopology)
  (if (not (find-package "ROTORS_COMM"))
    (make-package "ROTORS_COMM"))
  (shadow 'PPComTopology (find-package "ROTORS_COMM")))
(unless (find-package "ROTORS_COMM::PPCOMTOPOLOGY")
  (make-package "ROTORS_COMM::PPCOMTOPOLOGY"))

(in-package "ROS")
;;//! \htmlinclude PPComTopology.msg.html
(if (not (find-package "NAV_MSGS"))
  (ros::roseus-add-msgs "nav_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rotors_comm::PPComTopology
  :super ros::object
  :slots (_header _node_id _node_role _node_alive _node_odom _range ))

(defmethod rotors_comm::PPComTopology
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:node_id __node_id) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:node_role __node_role) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:node_alive __node_alive) (let (r) (dotimes (i 0) (push nil r)) r))
    ((:node_odom __node_odom) ())
    ((:range __range) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _node_id __node_id)
   (setq _node_role __node_role)
   (setq _node_alive __node_alive)
   (setq _node_odom __node_odom)
   (setq _range __range)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:node_id
   (&optional __node_id)
   (if __node_id (setq _node_id __node_id)) _node_id)
  (:node_role
   (&optional __node_role)
   (if __node_role (setq _node_role __node_role)) _node_role)
  (:node_alive
   (&optional __node_alive)
   (if __node_alive (setq _node_alive __node_alive)) _node_alive)
  (:node_odom
   (&rest __node_odom)
   (if (keywordp (car __node_odom))
       (send* _node_odom __node_odom)
     (progn
       (if __node_odom (setq _node_odom (car __node_odom)))
       _node_odom)))
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _node_id
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _node_id)) 4
    ;; string[] _node_role
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _node_role)) 4
    ;; bool[] _node_alive
    (* 1    (length _node_alive)) 4
    ;; nav_msgs/Odometry[] _node_odom
    (apply #'+ (send-all _node_odom :serialization-length)) 4
    ;; float32[] _range
    (* 4    (length _range)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _node_id
     (write-long (length _node_id) s)
     (dolist (elem _node_id)
       (write-long (length elem) s) (princ elem s)
       )
     ;; string[] _node_role
     (write-long (length _node_role) s)
     (dolist (elem _node_role)
       (write-long (length elem) s) (princ elem s)
       )
     ;; bool[] _node_alive
     (write-long (length _node_alive) s)
     (dotimes (i (length _node_alive))
       (if (elt _node_alive i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; nav_msgs/Odometry[] _node_odom
     (write-long (length _node_odom) s)
     (dolist (elem _node_odom)
       (send elem :serialize s)
       )
     ;; float32[] _range
     (write-long (length _range) s)
     (dotimes (i (length _range))
       (sys::poke (elt _range i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _node_id
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_id (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _node_id i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; string[] _node_role
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_role (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _node_role i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; bool[] _node_alive
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_alive (make-list n))
     (dotimes (i n)
     (setf (elt _node_alive i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;; nav_msgs/Odometry[] _node_odom
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _node_odom (let (r) (dotimes (i n) (push (instance nav_msgs::Odometry :init) r)) r))
     (dolist (elem- _node_odom)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; float32[] _range
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _range (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _range i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get rotors_comm::PPComTopology :md5sum-) "3539f38cd38808600ac8586b8226ebc8")
(setf (get rotors_comm::PPComTopology :datatype-) "rotors_comm/PPComTopology")
(setf (get rotors_comm::PPComTopology :definition-)
      "Header header

# IDs of the nodes
string[] node_id

# Role of the node
string[] node_role

# Dead of alive
bool[] node_alive

# Odometry of the node
nav_msgs/Odometry[] node_odom

# Distance measurent as 1xM array from the NxN disMatrix
float32[] range
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: nav_msgs/Odometry
# This represents an estimate of a position and velocity in free space.  
# The pose in this message should be specified in the coordinate frame given by header.frame_id.
# The twist in this message should be specified in the coordinate frame given by the child_frame_id
Header header
string child_frame_id
geometry_msgs/PoseWithCovariance pose
geometry_msgs/TwistWithCovariance twist

================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :rotors_comm/PPComTopology "3539f38cd38808600ac8586b8226ebc8")


