; Auto-generated. Do not edit!


(cl:in-package unicon-srv)


;//! \htmlinclude Stop-request.msg.html

(cl:defclass <Stop-request> (roslisp-msg-protocol:ros-message)
  ((message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass Stop-request (<Stop-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unicon-srv:<Stop-request> is deprecated: use unicon-srv:Stop-request instead.")))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <Stop-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unicon-srv:message-val is deprecated.  Use unicon-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop-request>) ostream)
  "Serializes a message object of type '<Stop-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop-request>) istream)
  "Deserializes a message object of type '<Stop-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop-request>)))
  "Returns string type for a service object of type '<Stop-request>"
  "unicon/StopRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop-request)))
  "Returns string type for a service object of type 'Stop-request"
  "unicon/StopRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop-request>)))
  "Returns md5sum for a message object of type '<Stop-request>"
  "094fea5bf24fa26870a84bcc4ec8c441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop-request)))
  "Returns md5sum for a message object of type 'Stop-request"
  "094fea5bf24fa26870a84bcc4ec8c441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop-request>)))
  "Returns full string definition for message of type '<Stop-request>"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop-request)))
  "Returns full string definition for message of type 'Stop-request"
  (cl:format cl:nil "string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop-request
    (cl:cons ':message (message msg))
))
;//! \htmlinclude Stop-response.msg.html

(cl:defclass <Stop-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Stop-response (<Stop-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Stop-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Stop-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name unicon-srv:<Stop-response> is deprecated: use unicon-srv:Stop-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <Stop-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader unicon-srv:result-val is deprecated.  Use unicon-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Stop-response>) ostream)
  "Serializes a message object of type '<Stop-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Stop-response>) istream)
  "Deserializes a message object of type '<Stop-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'result)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Stop-response>)))
  "Returns string type for a service object of type '<Stop-response>"
  "unicon/StopResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop-response)))
  "Returns string type for a service object of type 'Stop-response"
  "unicon/StopResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Stop-response>)))
  "Returns md5sum for a message object of type '<Stop-response>"
  "094fea5bf24fa26870a84bcc4ec8c441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Stop-response)))
  "Returns md5sum for a message object of type 'Stop-response"
  "094fea5bf24fa26870a84bcc4ec8c441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Stop-response>)))
  "Returns full string definition for message of type '<Stop-response>"
  (cl:format cl:nil "uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Stop-response)))
  "Returns full string definition for message of type 'Stop-response"
  (cl:format cl:nil "uint8 result~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Stop-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Stop-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Stop-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Stop)))
  'Stop-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Stop)))
  'Stop-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Stop)))
  "Returns string type for a service object of type '<Stop>"
  "unicon/Stop")