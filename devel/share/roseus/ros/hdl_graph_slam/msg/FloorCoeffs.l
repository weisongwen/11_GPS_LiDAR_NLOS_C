;; Auto-generated. Do not edit!


(when (boundp 'hdl_graph_slam::FloorCoeffs)
  (if (not (find-package "HDL_GRAPH_SLAM"))
    (make-package "HDL_GRAPH_SLAM"))
  (shadow 'FloorCoeffs (find-package "HDL_GRAPH_SLAM")))
(unless (find-package "HDL_GRAPH_SLAM::FLOORCOEFFS")
  (make-package "HDL_GRAPH_SLAM::FLOORCOEFFS"))

(in-package "ROS")
;;//! \htmlinclude FloorCoeffs.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hdl_graph_slam::FloorCoeffs
  :super ros::object
  :slots (_header _coeffs ))

(defmethod hdl_graph_slam::FloorCoeffs
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:coeffs __coeffs) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _coeffs __coeffs)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:coeffs
   (&optional __coeffs)
   (if __coeffs (setq _coeffs __coeffs)) _coeffs)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[] _coeffs
    (* 4    (length _coeffs)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[] _coeffs
     (write-long (length _coeffs) s)
     (dotimes (i (length _coeffs))
       (sys::poke (elt _coeffs i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[] _coeffs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _coeffs (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _coeffs i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get hdl_graph_slam::FloorCoeffs :md5sum-) "c0861e5afa0bb6c1fd931e1b78404b45")
(setf (get hdl_graph_slam::FloorCoeffs :datatype-) "hdl_graph_slam/FloorCoeffs")
(setf (get hdl_graph_slam::FloorCoeffs :definition-)
      "Header header

float32[] coeffs

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
# 0: no frame
# 1: global frame
string frame_id

")



(provide :hdl_graph_slam/FloorCoeffs "c0861e5afa0bb6c1fd931e1b78404b45")


