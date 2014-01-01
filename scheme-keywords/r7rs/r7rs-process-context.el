 ;;; -*- coding: utf-8 -*-


(cl-defun r7rs:add-process-context ()
  (r7rs:add-keywords
   'r7rs:face-syntax
   '((1 . command-line)
     (1 . emergency-exit)
     (1 . exit)
     (1 . get-environment-variable)
     (1 . get-environment-variables))))


(provide 'r7rs-process-context)
