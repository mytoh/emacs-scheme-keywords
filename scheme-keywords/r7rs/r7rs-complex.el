
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-complex ()
  (scheme-keywords:add-keywords
   'scheme-keywords:r7rs-function
   '((1 . angle)
     (1 . magnitude)
     (1 . make-rectangular)

     (1 . imag-part)
     (1 . make-polar)
     (1 . real-part)

     )))

(provide 'r7rs-complex)
