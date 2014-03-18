;;; srfi-8.el -*- lexical-binding: t -*-

(require 'scheme-keywords-util "scheme-keywords/util")

(cl-defun srfi:add-srfi-8 ()
  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-function
   '((1 . receive))))

(provide 'srfi-8)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
