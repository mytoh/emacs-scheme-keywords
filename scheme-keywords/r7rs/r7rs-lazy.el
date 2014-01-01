
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-lazy ()
  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-function
   '((1 . delay)
     (1 . force)
     (1 . promise?)

     (1 . delay-force)
     (1 . make-promise)

     )))

(provide 'r7rs-lazy)
