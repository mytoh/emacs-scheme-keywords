
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-time ()
  (scheme-keywords:add-keywords
   'scheme-keywords:r7rs-function
   '((1 . current-jiffy)
     (1 . jiffies-per-second)
     (1 . current-second))))

(provide 'r7rs-time)
