
(cl:in-package :asdf)

(defsystem "hdl_graph_slam-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "FloorCoeffs" :depends-on ("_package_FloorCoeffs"))
    (:file "_package_FloorCoeffs" :depends-on ("_package"))
  ))