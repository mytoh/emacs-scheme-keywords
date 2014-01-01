
(require 'scheme-keywords-util "scheme-keywords/util")

(cl-defun srfi:add-srfi-48 ()
  (scheme-keywords:add-keywords
   'font-lock-builtin-face
   '((1 . format))))

(provide 'srfi-48)
