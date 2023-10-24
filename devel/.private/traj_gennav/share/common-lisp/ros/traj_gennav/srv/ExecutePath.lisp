; Auto-generated. Do not edit!


(cl:in-package traj_gennav-srv)


;//! \htmlinclude ExecutePath-request.msg.html

(cl:defclass <ExecutePath-request> (roslisp-msg-protocol:ros-message)
  ((filename
    :reader filename
    :initarg :filename
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass ExecutePath-request (<ExecutePath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traj_gennav-srv:<ExecutePath-request> is deprecated: use traj_gennav-srv:ExecutePath-request instead.")))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <ExecutePath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader traj_gennav-srv:filename-val is deprecated.  Use traj_gennav-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePath-request>) ostream)
  "Serializes a message object of type '<ExecutePath-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'filename) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePath-request>) istream)
  "Deserializes a message object of type '<ExecutePath-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'filename) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePath-request>)))
  "Returns string type for a service object of type '<ExecutePath-request>"
  "traj_gennav/ExecutePathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePath-request)))
  "Returns string type for a service object of type 'ExecutePath-request"
  "traj_gennav/ExecutePathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePath-request>)))
  "Returns md5sum for a message object of type '<ExecutePath-request>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePath-request)))
  "Returns md5sum for a message object of type 'ExecutePath-request"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePath-request>)))
  "Returns full string definition for message of type '<ExecutePath-request>"
  (cl:format cl:nil "# Message to specify .yaml mission file to load~%std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePath-request)))
  "Returns full string definition for message of type 'ExecutePath-request"
  (cl:format cl:nil "# Message to specify .yaml mission file to load~%std_msgs/String filename~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePath-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePath-request
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude ExecutePath-response.msg.html

(cl:defclass <ExecutePath-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ExecutePath-response (<ExecutePath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ExecutePath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ExecutePath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name traj_gennav-srv:<ExecutePath-response> is deprecated: use traj_gennav-srv:ExecutePath-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ExecutePath-response>) ostream)
  "Serializes a message object of type '<ExecutePath-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ExecutePath-response>) istream)
  "Deserializes a message object of type '<ExecutePath-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ExecutePath-response>)))
  "Returns string type for a service object of type '<ExecutePath-response>"
  "traj_gennav/ExecutePathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePath-response)))
  "Returns string type for a service object of type 'ExecutePath-response"
  "traj_gennav/ExecutePathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ExecutePath-response>)))
  "Returns md5sum for a message object of type '<ExecutePath-response>"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ExecutePath-response)))
  "Returns md5sum for a message object of type 'ExecutePath-response"
  "716e25f9d9dc76ceba197f93cbf05dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ExecutePath-response>)))
  "Returns full string definition for message of type '<ExecutePath-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ExecutePath-response)))
  "Returns full string definition for message of type 'ExecutePath-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ExecutePath-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ExecutePath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ExecutePath-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ExecutePath)))
  'ExecutePath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ExecutePath)))
  'ExecutePath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ExecutePath)))
  "Returns string type for a service object of type '<ExecutePath>"
  "traj_gennav/ExecutePath")