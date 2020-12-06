(asdf:defsystem :claw-soil
  :description "Wrapper for SOIL2 library"
  :version "0.0.1"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-utils :claw)
  :pathname "src/"
  :serial t
  :components ((:file "claw")
               (:module :soil-includes :pathname "lib/soil/src/")))
