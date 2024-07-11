; Auto-generated. Do not edit!


(cl:in-package puppy_control2-msg)


;//! \htmlinclude ServoControl.msg.html

(cl:defclass <ServoControl> (roslisp-msg-protocol:ros-message)
  ((frontleftx
    :reader frontleftx
    :initarg :frontleftx
    :type cl:float
    :initform 0.0)
   (frontleftz
    :reader frontleftz
    :initarg :frontleftz
    :type cl:float
    :initform 0.0)
   (frontrightx
    :reader frontrightx
    :initarg :frontrightx
    :type cl:float
    :initform 0.0)
   (frontrightz
    :reader frontrightz
    :initarg :frontrightz
    :type cl:float
    :initform 0.0)
   (backleftx
    :reader backleftx
    :initarg :backleftx
    :type cl:float
    :initform 0.0)
   (backleftz
    :reader backleftz
    :initarg :backleftz
    :type cl:float
    :initform 0.0)
   (backrightx
    :reader backrightx
    :initarg :backrightx
    :type cl:float
    :initform 0.0)
   (backrightz
    :reader backrightz
    :initarg :backrightz
    :type cl:float
    :initform 0.0))
)

(cl:defclass ServoControl (<ServoControl>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoControl>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoControl)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name puppy_control2-msg:<ServoControl> is deprecated: use puppy_control2-msg:ServoControl instead.")))

(cl:ensure-generic-function 'frontleftx-val :lambda-list '(m))
(cl:defmethod frontleftx-val ((m <ServoControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppy_control2-msg:frontleftx-val is deprecated.  Use puppy_control2-msg:frontleftx instead.")
  (frontleftx m))

(cl:ensure-generic-function 'frontleftz-val :lambda-list '(m))
(cl:defmethod frontleftz-val ((m <ServoControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppy_control2-msg:frontleftz-val is deprecated.  Use puppy_control2-msg:frontleftz instead.")
  (frontleftz m))

(cl:ensure-generic-function 'frontrightx-val :lambda-list '(m))
(cl:defmethod frontrightx-val ((m <ServoControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppy_control2-msg:frontrightx-val is deprecated.  Use puppy_control2-msg:frontrightx instead.")
  (frontrightx m))

(cl:ensure-generic-function 'frontrightz-val :lambda-list '(m))
(cl:defmethod frontrightz-val ((m <ServoControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppy_control2-msg:frontrightz-val is deprecated.  Use puppy_control2-msg:frontrightz instead.")
  (frontrightz m))

(cl:ensure-generic-function 'backleftx-val :lambda-list '(m))
(cl:defmethod backleftx-val ((m <ServoControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppy_control2-msg:backleftx-val is deprecated.  Use puppy_control2-msg:backleftx instead.")
  (backleftx m))

(cl:ensure-generic-function 'backleftz-val :lambda-list '(m))
(cl:defmethod backleftz-val ((m <ServoControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppy_control2-msg:backleftz-val is deprecated.  Use puppy_control2-msg:backleftz instead.")
  (backleftz m))

(cl:ensure-generic-function 'backrightx-val :lambda-list '(m))
(cl:defmethod backrightx-val ((m <ServoControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppy_control2-msg:backrightx-val is deprecated.  Use puppy_control2-msg:backrightx instead.")
  (backrightx m))

(cl:ensure-generic-function 'backrightz-val :lambda-list '(m))
(cl:defmethod backrightz-val ((m <ServoControl>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader puppy_control2-msg:backrightz-val is deprecated.  Use puppy_control2-msg:backrightz instead.")
  (backrightz m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoControl>) ostream)
  "Serializes a message object of type '<ServoControl>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontleftx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontleftz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontrightx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'frontrightz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'backleftx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'backleftz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'backrightx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'backrightz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoControl>) istream)
  "Deserializes a message object of type '<ServoControl>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontleftx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontleftz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontrightx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'frontrightz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'backleftx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'backleftz) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'backrightx) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'backrightz) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoControl>)))
  "Returns string type for a message object of type '<ServoControl>"
  "puppy_control2/ServoControl")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoControl)))
  "Returns string type for a message object of type 'ServoControl"
  "puppy_control2/ServoControl")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoControl>)))
  "Returns md5sum for a message object of type '<ServoControl>"
  "326b3455b95de3ececfaa8d7b1eb8c40")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoControl)))
  "Returns md5sum for a message object of type 'ServoControl"
  "326b3455b95de3ececfaa8d7b1eb8c40")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoControl>)))
  "Returns full string definition for message of type '<ServoControl>"
  (cl:format cl:nil "float32 frontleftx~%float32 frontleftz~%~%float32 frontrightx~%float32 frontrightz~%~%float32 backleftx~%float32 backleftz~%~%float32 backrightx~%float32 backrightz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoControl)))
  "Returns full string definition for message of type 'ServoControl"
  (cl:format cl:nil "float32 frontleftx~%float32 frontleftz~%~%float32 frontrightx~%float32 frontrightz~%~%float32 backleftx~%float32 backleftz~%~%float32 backrightx~%float32 backrightz~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoControl>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoControl>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoControl
    (cl:cons ':frontleftx (frontleftx msg))
    (cl:cons ':frontleftz (frontleftz msg))
    (cl:cons ':frontrightx (frontrightx msg))
    (cl:cons ':frontrightz (frontrightz msg))
    (cl:cons ':backleftx (backleftx msg))
    (cl:cons ':backleftz (backleftz msg))
    (cl:cons ':backrightx (backrightx msg))
    (cl:cons ':backrightz (backrightz msg))
))
