
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-write ()
  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-function
   '((1 . display)
     (1 . write-shared)
     (1 . write)
     (1 . write-simple))))

(provide 'r7rs-write)
