;; Auto-generated. Do not edit!


(when (boundp 'hdl_graph_slam::SaveMap)
  (if (not (find-package "HDL_GRAPH_SLAM"))
    (make-package "HDL_GRAPH_SLAM"))
  (shadow 'SaveMap (find-package "HDL_GRAPH_SLAM")))
(unless (find-package "HDL_GRAPH_SLAM::SAVEMAP")
  (make-package "HDL_GRAPH_SLAM::SAVEMAP"))
(unless (find-package "HDL_GRAPH_SLAM::SAVEMAPREQUEST")
  (make-package "HDL_GRAPH_SLAM::SAVEMAPREQUEST"))
(unless (find-package "HDL_GRAPH_SLAM::SAVEMAPRESPONSE")
  (make-package "HDL_GRAPH_SLAM::SAVEMAPRESPONSE"))

(in-package "ROS")





(defclass hdl_graph_slam::SaveMapRequest
  :super ros::object
  :slots (_resolution _destination ))

(defmethod hdl_graph_slam::SaveMapRequest
  (:init
   (&key
    ((:resolution __resolution) 0.0)
    ((:destination __destination) "")
    )
   (send-super :init)
   (setq _resolution (float __resolution))
   (setq _destination (string __destination))
   self)
  (:resolution
   (&optional __resolution)
   (if __resolution (setq _resolution __resolution)) _resolution)
  (:destination
   (&optional __destination)
   (if __destination (setq _destination __destination)) _destination)
  (:serialization-length
   ()
   (+
    ;; float32 _resolution
    4
    ;; string _destination
    4 (length _destination)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _resolution
       (sys::poke _resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _destination
       (write-long (length _destination) s) (princ _destination s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _resolution
     (setq _resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _destination
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destination (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass hdl_graph_slam::SaveMapResponse
  :super ros::object
  :slots (_success ))

(defmethod hdl_graph_slam::SaveMapResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass hdl_graph_slam::SaveMap
  :super ros::object
  :slots ())

(setf (get hdl_graph_slam::SaveMap :md5sum-) "9b82c64d089149d300598523af304f22")
(setf (get hdl_graph_slam::SaveMap :datatype-) "hdl_graph_slam/SaveMap")
(setf (get hdl_graph_slam::SaveMap :request) hdl_graph_slam::SaveMapRequest)
(setf (get hdl_graph_slam::SaveMap :response) hdl_graph_slam::SaveMapResponse)

(defmethod hdl_graph_slam::SaveMapRequest
  (:response () (instance hdl_graph_slam::SaveMapResponse :init)))

(setf (get hdl_graph_slam::SaveMapRequest :md5sum-) "9b82c64d089149d300598523af304f22")
(setf (get hdl_graph_slam::SaveMapRequest :datatype-) "hdl_graph_slam/SaveMapRequest")
(setf (get hdl_graph_slam::SaveMapRequest :definition-)
      "float32 resolution
string destination
---
bool success

")

(setf (get hdl_graph_slam::SaveMapResponse :md5sum-) "9b82c64d089149d300598523af304f22")
(setf (get hdl_graph_slam::SaveMapResponse :datatype-) "hdl_graph_slam/SaveMapResponse")
(setf (get hdl_graph_slam::SaveMapResponse :definition-)
      "float32 resolution
string destination
---
bool success

")



(provide :hdl_graph_slam/SaveMap "9b82c64d089149d300598523af304f22")


