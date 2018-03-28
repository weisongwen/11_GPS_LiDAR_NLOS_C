; Auto-generated. Do not edit!


(cl:in-package hdl_graph_slam-msg)


;//! \htmlinclude FloorCoeffs.msg.html

(cl:defclass <FloorCoeffs> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (coeffs
    :reader coeffs
    :initarg :coeffs
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FloorCoeffs (<FloorCoeffs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FloorCoeffs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FloorCoeffs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hdl_graph_slam-msg:<FloorCoeffs> is deprecated: use hdl_graph_slam-msg:FloorCoeffs instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FloorCoeffs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_graph_slam-msg:header-val is deprecated.  Use hdl_graph_slam-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'coeffs-val :lambda-list '(m))
(cl:defmethod coeffs-val ((m <FloorCoeffs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hdl_graph_slam-msg:coeffs-val is deprecated.  Use hdl_graph_slam-msg:coeffs instead.")
  (coeffs m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FloorCoeffs>) ostream)
  "Serializes a message object of type '<FloorCoeffs>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'coeffs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'coeffs))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FloorCoeffs>) istream)
  "Deserializes a message object of type '<FloorCoeffs>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'coeffs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'coeffs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FloorCoeffs>)))
  "Returns string type for a message object of type '<FloorCoeffs>"
  "hdl_graph_slam/FloorCoeffs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloorCoeffs)))
  "Returns string type for a message object of type 'FloorCoeffs"
  "hdl_graph_slam/FloorCoeffs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FloorCoeffs>)))
  "Returns md5sum for a message object of type '<FloorCoeffs>"
  "c0861e5afa0bb6c1fd931e1b78404b45")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FloorCoeffs)))
  "Returns md5sum for a message object of type 'FloorCoeffs"
  "c0861e5afa0bb6c1fd931e1b78404b45")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FloorCoeffs>)))
  "Returns full string definition for message of type '<FloorCoeffs>"
  (cl:format cl:nil "Header header~%~%float32[] coeffs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FloorCoeffs)))
  "Returns full string definition for message of type 'FloorCoeffs"
  (cl:format cl:nil "Header header~%~%float32[] coeffs~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FloorCoeffs>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'coeffs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FloorCoeffs>))
  "Converts a ROS message object to a list"
  (cl:list 'FloorCoeffs
    (cl:cons ':header (header msg))
    (cl:cons ':coeffs (coeffs msg))
))
