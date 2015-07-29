;;; scheme-keywords.el -*- lexical-binding: t -*-

(require 'scheme-keywords-r7rs "scheme-keywords/r7rs/r7rs")
(require 'scheme-keywords-srfi "scheme-keywords/srfi/srfi")

(defvar scheme-keywords-inhibit-message
  nil
  "silence messages if non-nil value.")

;;;###autoload
(define-minor-mode scheme-keywords-mode
  :init-value nil
  :lighter " scheme-keywords"
  :group 'languages
  (when scheme-keywords-mode
    (srfi:mode-start)
    (r7rs:mode-start)))

(provide 'scheme-keywords)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
