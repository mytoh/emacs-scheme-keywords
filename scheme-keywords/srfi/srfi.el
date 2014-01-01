
(eval-when-compile
  (require 'cl-lib))


(cl-defun srfi:add-keywords (face-name keyword-rules)
  (cl-letf* ((keyword-list (cl-mapcar #'(lambda (x)
                                          (symbol-name (cdr x)))
                                      keyword-rules))
             (keyword-regexp (cl-concatenate 'string
                                             "(\\("
                                             (regexp-opt keyword-list)
                                             "\\)[ \n]")))
    (my-log "adding keywords for face "
            (propertize (symbol-name face-name) 'face 'font-lock-variable-name-face)
            " on scheme mode")
    (font-lock-add-keywords 'scheme-mode
                            `((,keyword-regexp 1 ',face-name))))
  (cl-mapc #'(lambda (x)
               (put (cdr x)
                    'scheme-indent-function
                    (car x)))
           keyword-rules))


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

;;;###autoload
(define-minor-mode srfi-mode
  :init-value nil
  :lighter " srfi"
  :group 'languages
  (if srfi-mode
      (srfi:mode-start)))

(provide 'srfi)
