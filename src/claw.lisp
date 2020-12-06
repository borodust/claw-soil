(cl:defpackage :soil
  (:use :cl))
(cl:defpackage :%soil
  (:use))
(cl:in-package :soil)

(claw.wrapper:defwrapper (soil::claw-soil
                          (:headers "SOIL2/SOIL2.h")
                          (:includes :soil-includes)
                          (:targets :local)
                          (:persistent nil)
                          (:language :c)
                          (:include-definitions "SOIL_\\w*"))
  :in-package :%soil
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :with-adapter (:static
                 :path "lib/adapter.c")
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :symbolicate-names (:in-pipeline
                      (:by-removing-prefixes "SOIL_")))
