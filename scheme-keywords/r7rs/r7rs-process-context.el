
 ;;; -*- coding: utf-8 -*-

(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-process-context ()
  (scheme-keywords:add-keywords
   'scheme-keywords:r7rs-syntax
   '((1 . command-line)
     (1 . emergency-exit)
     (1 . exit)
     (1 . get-environment-variable)
     (1 . get-environment-variables))))


(provide 'r7rs-process-context)
