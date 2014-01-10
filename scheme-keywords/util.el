;;; utils.el -*- lexical-binding: t -*-

(eval-when-compile
  (require 'cl-lib))

(cl-defmacro scheme-keywords:log (&rest messages)
  `(progn
     (message (concat (propertize ">> " 'face 'font-lock-doc-face)
                      ,@messages) " ...")))

(cl-defun scheme-keywords:add-keywords (face-name keyword-rules)
  (let* ((keyword-list (mapcar #'(lambda (x)
                                   (symbol-name (cdr x)))
                               keyword-rules))
         (keyword-regexp (concat "(\\("
                                 (regexp-opt keyword-list)
                                 "\\)\\>")))
    (scheme-keywords:log "adding keywords for face "
                         (propertize (symbol-name face-name) 'face 'font-lock-variable-name-face)
                         " on scheme mode")
    (font-lock-add-keywords 'scheme-mode
                            `((,keyword-regexp 1 ',face-name))))
  (mapc #'(lambda (x)
            (put (cdr x)
                 'scheme-indent-function
                 (car x)))
        keyword-rules))

(provide 'scheme-keywords-util)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
