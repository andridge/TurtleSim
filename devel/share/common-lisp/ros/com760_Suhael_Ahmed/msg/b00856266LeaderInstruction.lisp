; Auto-generated. Do not edit!


(cl:in-package com760_Suhael_Ahmed-msg)


;//! \htmlinclude b00856266LeaderInstruction.msg.html

(cl:defclass <b00856266LeaderInstruction> (roslisp-msg-protocol:ros-message)
  ((instructionID
    :reader instructionID
    :initarg :instructionID
    :type cl:integer
    :initform 0)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass b00856266LeaderInstruction (<b00856266LeaderInstruction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <b00856266LeaderInstruction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'b00856266LeaderInstruction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name com760_Suhael_Ahmed-msg:<b00856266LeaderInstruction> is deprecated: use com760_Suhael_Ahmed-msg:b00856266LeaderInstruction instead.")))

(cl:ensure-generic-function 'instructionID-val :lambda-list '(m))
(cl:defmethod instructionID-val ((m <b00856266LeaderInstruction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com760_Suhael_Ahmed-msg:instructionID-val is deprecated.  Use com760_Suhael_Ahmed-msg:instructionID instead.")
  (instructionID m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <b00856266LeaderInstruction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader com760_Suhael_Ahmed-msg:message-val is deprecated.  Use com760_Suhael_Ahmed-msg:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <b00856266LeaderInstruction>) ostream)
  "Serializes a message object of type '<b00856266LeaderInstruction>"
  (cl:let* ((signed (cl:slot-value msg 'instructionID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <b00856266LeaderInstruction>) istream)
  "Deserializes a message object of type '<b00856266LeaderInstruction>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'instructionID) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<b00856266LeaderInstruction>)))
  "Returns string type for a message object of type '<b00856266LeaderInstruction>"
  "com760_Suhael_Ahmed/b00856266LeaderInstruction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'b00856266LeaderInstruction)))
  "Returns string type for a message object of type 'b00856266LeaderInstruction"
  "com760_Suhael_Ahmed/b00856266LeaderInstruction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<b00856266LeaderInstruction>)))
  "Returns md5sum for a message object of type '<b00856266LeaderInstruction>"
  "0322711d40d955a41c13dde39236d522")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'b00856266LeaderInstruction)))
  "Returns md5sum for a message object of type 'b00856266LeaderInstruction"
  "0322711d40d955a41c13dde39236d522")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<b00856266LeaderInstruction>)))
  "Returns full string definition for message of type '<b00856266LeaderInstruction>"
  (cl:format cl:nil "int64 instructionID~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'b00856266LeaderInstruction)))
  "Returns full string definition for message of type 'b00856266LeaderInstruction"
  (cl:format cl:nil "int64 instructionID~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <b00856266LeaderInstruction>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <b00856266LeaderInstruction>))
  "Converts a ROS message object to a list"
  (cl:list 'b00856266LeaderInstruction
    (cl:cons ':instructionID (instructionID msg))
    (cl:cons ':message (message msg))
))
