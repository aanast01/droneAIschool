; Auto-generated. Do not edit!


(cl:in-package drone_school-srv)


;//! \htmlinclude CreatePPComTopic-request.msg.html

(cl:defclass <CreatePPComTopic-request> (roslisp-msg-protocol:ros-message)
  ((source
    :reader source
    :initarg :source
    :type cl:string
    :initform "")
   (targets
    :reader targets
    :initarg :targets
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (topic_name
    :reader topic_name
    :initarg :topic_name
    :type cl:string
    :initform "")
   (package_name
    :reader package_name
    :initarg :package_name
    :type cl:string
    :initform "")
   (message_type
    :reader message_type
    :initarg :message_type
    :type cl:string
    :initform ""))
)

(cl:defclass CreatePPComTopic-request (<CreatePPComTopic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreatePPComTopic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreatePPComTopic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_school-srv:<CreatePPComTopic-request> is deprecated: use drone_school-srv:CreatePPComTopic-request instead.")))

(cl:ensure-generic-function 'source-val :lambda-list '(m))
(cl:defmethod source-val ((m <CreatePPComTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_school-srv:source-val is deprecated.  Use drone_school-srv:source instead.")
  (source m))

(cl:ensure-generic-function 'targets-val :lambda-list '(m))
(cl:defmethod targets-val ((m <CreatePPComTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_school-srv:targets-val is deprecated.  Use drone_school-srv:targets instead.")
  (targets m))

(cl:ensure-generic-function 'topic_name-val :lambda-list '(m))
(cl:defmethod topic_name-val ((m <CreatePPComTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_school-srv:topic_name-val is deprecated.  Use drone_school-srv:topic_name instead.")
  (topic_name m))

(cl:ensure-generic-function 'package_name-val :lambda-list '(m))
(cl:defmethod package_name-val ((m <CreatePPComTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_school-srv:package_name-val is deprecated.  Use drone_school-srv:package_name instead.")
  (package_name m))

(cl:ensure-generic-function 'message_type-val :lambda-list '(m))
(cl:defmethod message_type-val ((m <CreatePPComTopic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_school-srv:message_type-val is deprecated.  Use drone_school-srv:message_type instead.")
  (message_type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreatePPComTopic-request>) ostream)
  "Serializes a message object of type '<CreatePPComTopic-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'source))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'source))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'targets))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'targets))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'topic_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'topic_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'package_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'package_name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message_type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message_type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreatePPComTopic-request>) istream)
  "Deserializes a message object of type '<CreatePPComTopic-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'source) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'source) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'targets) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'targets)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'topic_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'topic_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'package_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'package_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message_type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message_type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreatePPComTopic-request>)))
  "Returns string type for a service object of type '<CreatePPComTopic-request>"
  "drone_school/CreatePPComTopicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreatePPComTopic-request)))
  "Returns string type for a service object of type 'CreatePPComTopic-request"
  "drone_school/CreatePPComTopicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreatePPComTopic-request>)))
  "Returns md5sum for a message object of type '<CreatePPComTopic-request>"
  "04b00a4c4e03cffa324c24830dde7e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreatePPComTopic-request)))
  "Returns md5sum for a message object of type 'CreatePPComTopic-request"
  "04b00a4c4e03cffa324c24830dde7e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreatePPComTopic-request>)))
  "Returns full string definition for message of type '<CreatePPComTopic-request>"
  (cl:format cl:nil "string source            # Source of the topic~%string[] targets         # Names of nodes that can receive this message,~%                         # set to 'all' if all nodes can receive the message~%string topic_name~%string package_name~%string message_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreatePPComTopic-request)))
  "Returns full string definition for message of type 'CreatePPComTopic-request"
  (cl:format cl:nil "string source            # Source of the topic~%string[] targets         # Names of nodes that can receive this message,~%                         # set to 'all' if all nodes can receive the message~%string topic_name~%string package_name~%string message_type~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreatePPComTopic-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'source))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'targets) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:length (cl:slot-value msg 'topic_name))
     4 (cl:length (cl:slot-value msg 'package_name))
     4 (cl:length (cl:slot-value msg 'message_type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreatePPComTopic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CreatePPComTopic-request
    (cl:cons ':source (source msg))
    (cl:cons ':targets (targets msg))
    (cl:cons ':topic_name (topic_name msg))
    (cl:cons ':package_name (package_name msg))
    (cl:cons ':message_type (message_type msg))
))
;//! \htmlinclude CreatePPComTopic-response.msg.html

(cl:defclass <CreatePPComTopic-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass CreatePPComTopic-response (<CreatePPComTopic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CreatePPComTopic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CreatePPComTopic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drone_school-srv:<CreatePPComTopic-response> is deprecated: use drone_school-srv:CreatePPComTopic-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <CreatePPComTopic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drone_school-srv:result-val is deprecated.  Use drone_school-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CreatePPComTopic-response>) ostream)
  "Serializes a message object of type '<CreatePPComTopic-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CreatePPComTopic-response>) istream)
  "Deserializes a message object of type '<CreatePPComTopic-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CreatePPComTopic-response>)))
  "Returns string type for a service object of type '<CreatePPComTopic-response>"
  "drone_school/CreatePPComTopicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreatePPComTopic-response)))
  "Returns string type for a service object of type 'CreatePPComTopic-response"
  "drone_school/CreatePPComTopicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CreatePPComTopic-response>)))
  "Returns md5sum for a message object of type '<CreatePPComTopic-response>"
  "04b00a4c4e03cffa324c24830dde7e4a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CreatePPComTopic-response)))
  "Returns md5sum for a message object of type 'CreatePPComTopic-response"
  "04b00a4c4e03cffa324c24830dde7e4a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CreatePPComTopic-response>)))
  "Returns full string definition for message of type '<CreatePPComTopic-response>"
  (cl:format cl:nil "string result            # Return 'succeeded' for 'failed'~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CreatePPComTopic-response)))
  "Returns full string definition for message of type 'CreatePPComTopic-response"
  (cl:format cl:nil "string result            # Return 'succeeded' for 'failed'~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CreatePPComTopic-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CreatePPComTopic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CreatePPComTopic-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CreatePPComTopic)))
  'CreatePPComTopic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CreatePPComTopic)))
  'CreatePPComTopic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CreatePPComTopic)))
  "Returns string type for a service object of type '<CreatePPComTopic>"
  "drone_school/CreatePPComTopic")