
(cl-defun r7rs:add-char ()
  (r7rs:add-keywords
   'r7rs:face-function
   '((1 . char-alphabetic?  )
     (1 . char-ci<?         )
     (1 . char-ci>=?        )
     (1 . char-downcase)
     (1 . char-lower-case?  )
     (1 . char-upcase)
     (1 . char-whitespace?  )
     (1 . string-ci<=?      )
     (1 . string-ci=?       )
     (1 . string-ci>?       )
     (1 . string-foldcase)

     (1 . char-ci<=?        )
     (1 . char-ci=?         )
     (1 . char-ci>?         )
     (1 . char-foldcase)
     (1 . char-numeric?     )
     (1 . char-upper-case?  )
     (1 . digit-value)
     (1 . string-ci<?       )
     (1 . string-ci>=?      )
     (1 . string-downcase)
     (1 . string-upcase)
     )))

(provide 'r7rs-char)