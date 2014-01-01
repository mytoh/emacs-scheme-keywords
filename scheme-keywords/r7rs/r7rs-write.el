
(cl-defun r7rs:add-write ()
  (r7rs:add-keywords
   'r7rs:face-function
   '((1 . display)
     (1 . write-shared)
     (1 . write)
     (1 . write-simple))))

(provide 'r7rs-write)
