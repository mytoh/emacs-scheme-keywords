
(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-file ()
  (scheme-keywords:add-keywords
   'scheme-keywords:r7rs-function
   '((1 . call-with-input-file)
     (1 . call-with-output-file)
     (1 . delete-file)
     (1 . file-exists?)
     (1 . open-binary-input-file)
     (1 . open-binary-output-file)
     (1 . open-input-file)
     (1 . open-output-file)
     (1 . with-input-from-file)
     (1 . with-output-to-file))))

(provide 'r7rs-file)
