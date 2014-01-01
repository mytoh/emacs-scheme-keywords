
(cl-defun r7rs:add-eval ()
  (r7rs:add-keywords
   'r7rs:face-syntax
   '((1 . eval)
     (1 . environment))))

(provide 'r7rs-eval)
