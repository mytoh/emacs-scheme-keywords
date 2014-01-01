
(cl-defun r7rs:add-inexact ()
  (r7rs:add-keywords
   'r7rs:face-function
   '((1 . acos)
     (1 . atan)
     (1 . exp)
     (1 . infinite?)
     (1 . nan?)
     (1 . sqrt)

     (1 . asin)
     (1 . cos)
     (1 . finite?)
     (1 . log)
     (1 . sin)
     (1 . tan)

     )))

(provide 'r7rs-inexact)
