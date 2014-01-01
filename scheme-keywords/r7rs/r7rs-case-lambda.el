
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-case-lambda ()
  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-syntax
   '((1 . case-lambda))))

(provide 'r7rs-case-lambda)
