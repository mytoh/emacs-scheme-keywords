
(cl-defun r7rs:add-repl ()
  (r7rs:add-keywords
   'r7rs:face-function
   '((1 . interaction-environment))))

(provide 'r7rs-repl)
