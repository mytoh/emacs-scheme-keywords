
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-repl ()
  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-function
   '((1 . interaction-environment))))

(provide 'r7rs-repl)
