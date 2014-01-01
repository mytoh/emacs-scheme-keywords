
(require 'scheme-keywords-util "scheme-keywords/util")

(cl-defun srfi:add-srfi-37 ()
  (scheme-keywords:add-keywords
   'font-lock-builtin-face
   '((1 . args-fold)
     (1 . option))))

(provide 'srfi-37)
