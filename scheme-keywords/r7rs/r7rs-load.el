
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-load ()
  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-function
   '((1 . load))))

(provide 'r7rs-load)
