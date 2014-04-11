
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-eval ()
  (scheme-keywords:add-keywords
   'scheme-keywords:r7rs-syntax
   '((1 . eval)
     (1 . environment))))

(provide 'r7rs-eval)
