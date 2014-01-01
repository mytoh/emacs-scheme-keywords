
(cl-defun r7rs:add-complex ()
  (r7rs:add-keywords
   'r7rs:face-function
   '((1 . angle)
     (1 . magnitude)
     (1 . make-rectangular)

     (1 . imag-part)
     (1 . make-polar)
     (1 . real-part)

     )))

(provide 'r7rs-complex)
