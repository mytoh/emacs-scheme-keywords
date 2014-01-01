 ;;; -*- coding: utf-8 -*-


(cl-defun r7rs:add-fundamental ()
  (r7rs:add-keywords
   'r7rs:face-syntax
   '((2 . library)
     (2 . define-library)
     (0 . export)
     (0 . import)
     (0 . except)
     (0 . only)
     (0 . rename)
     (0 . prefix)
     (0 . srfi))))


(provide 'r7rs-fundamental)
