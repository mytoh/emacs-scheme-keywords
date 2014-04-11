 ;;; -*- coding: utf-8 -*-

(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-fundamental ()
  (scheme-keywords:add-keywords
   'scheme-keywords:r7rs-syntax
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
