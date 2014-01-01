
(require 'srfi-1 "scheme-keywords/srfi/srfi-1")
(require 'srfi-13 "scheme-keywords/srfi/srfi-13")
(require 'srfi-37 "scheme-keywords/srfi/srfi-37")
(require 'srfi-39 "scheme-keywords/srfi/srfi-39")
(require 'srfi-48 "scheme-keywords/srfi/srfi-48")

(cl-defun srfi:mode-start ()
  (srfi:add-srfi-1)
  (srfi:add-srfi-13)
  (srfi:add-srfi-37)
  (srfi:add-srfi-39)
  (srfi:add-srfi-48))

(provide 'scheme-keywords-srfi)
