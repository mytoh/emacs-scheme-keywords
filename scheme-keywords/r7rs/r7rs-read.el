
(cl-defun r7rs:add-read ()
  (r7rs:add-keywords
   'r7rs:face-function
   '((1 . read))))

(provide 'r7rs-read)
