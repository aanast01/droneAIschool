; Auto-generated. Do not edit!


(cl:in-package traj_gennav-srv)


;//! \htmlinclude ReadPathFromFile-request.msg.html

(cl:defclass <ReadPathFromFile-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ReadPathFromFile-request (<ReadPathFromFile-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadPathFromFile-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadPathFromFile-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traj_gennav-srv:<ReadPathFromFile-request> is deprecated: use traj_gennav-srv:ReadPathFromFile-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <ReadPathFromFile-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traj_gennav-srv:filename-val is deprecated.  Use traj_gennav-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadPathFromFile-request>) ostream)
  "Serializes a message object of type '<ReadPathFromFile-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filename) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadPathFromFile-request>) istream)
  "Deserializes a message object of type '<ReadPathFromFile-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filename) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadPathFromFile-request>)))
  "Returns string type for a service object of type '<ReadPathFromFile-request>"
  "traj_gennav/ReadPathFromFileRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPathFromFile-request)))
  "Returns string type for a service object of type 'ReadPathFromFile-request"
  "traj_gennav/ReadPathFromFileRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadPathFromFile-request>)))
  "Returns md5sum for a message object of type '<ReadPathFromFile-request>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadPathFromFile-request)))
  "Returns md5sum for a message object of type 'ReadPathFromFile-request"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadPathFromFile-request>)))
  "Returns full string definition for message of type '<ReadPathFromFile-request>"
  (cl:format cl:nil "# Message to specify .yaml mission file to load~%std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadPathFromFile-request)))
  "Returns full string definition for message of type 'ReadPathFromFile-request"
  (cl:format cl:nil "# Message to specify .yaml mission file to load~%std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadPathFromFile-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadPathFromFile-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadPathFromFile-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude ReadPathFromFile-response.msg.html

(cl:defclass <ReadPathFromFile-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ReadPathFromFile-response (<ReadPathFromFile-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadPathFromFile-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadPathFromFile-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traj_gennav-srv:<ReadPathFromFile-response> is deprecated: use traj_gennav-srv:ReadPathFromFile-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadPathFromFile-response>) ostream)
  "Serializes a message object of type '<ReadPathFromFile-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadPathFromFile-response>) istream)
  "Deserializes a message object of type '<ReadPathFromFile-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadPathFromFile-response>)))
  "Returns string type for a service object of type '<ReadPathFromFile-response>"
  "traj_gennav/ReadPathFromFileResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPathFromFile-response)))
  "Returns string type for a service object of type 'ReadPathFromFile-response"
  "traj_gennav/ReadPathFromFileResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadPathFromFile-response>)))
  "Returns md5sum for a message object of type '<ReadPathFromFile-response>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadPathFromFile-response)))
  "Returns md5sum for a message object of type 'ReadPathFromFile-response"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadPathFromFile-response>)))
  "Returns full string definition for message of type '<ReadPathFromFile-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadPathFromFile-response)))
  "Returns full string definition for message of type 'ReadPathFromFile-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadPathFromFile-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadPathFromFile-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadPathFromFile-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadPathFromFile)))
  'ReadPathFromFile-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadPathFromFile)))
  'ReadPathFromFile-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPathFromFile)))
  "Returns string type for a service object of type '<ReadPathFromFile>"
  "traj_gennav/ReadPathFromFile")