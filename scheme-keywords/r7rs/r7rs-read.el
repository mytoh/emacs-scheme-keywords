
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-read ()
  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-function
   '((1 . read))))

(provide 'r7rs-read)
