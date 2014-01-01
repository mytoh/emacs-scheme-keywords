
(require 'scheme-keywords-util "scheme-keywords/util")

(cl-defun srfi:add-srfi-39 ()
  (scheme-keywords:add-keywords
   'font-lock-builtin-face
   '((1 . parameterize)
     (1 . make-parameter))))

(provide 'srfi-39)
