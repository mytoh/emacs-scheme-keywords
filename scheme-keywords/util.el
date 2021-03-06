;;; utils.el -*- lexical-binding: t -*-

(eval-when-compile
  (require 'cl-lib))

(defcustom scheme-keywords-inhibit-message
  nil
  "silence messages if non-nil value.")

(cl-defmacro scheme-keywords:log (&rest messages)
  `(cl-locally
       (unless scheme-keywords-inhibit-message
         (message (concat (propertize ">> " 'face 'font-lock-doc-face)
                          ,@messages) " ..."))))

(cl-defun scheme-keywords:add-keywords (face-name keyword-rules)
  (let* ((keyword-list (mapcar (lambda (x)
                                 (symbol-name
                                  (if (consp x)
                                      (cdr x)
                                    x)))
                               keyword-rules))
         (keyword-regexp (concat "(\\("
                                 (regexp-opt keyword-list)
                                 "\\)\\>")))
    (scheme-keywords:log "adding keywords for face "
                         (propertize (symbol-name face-name) 'face 'font-lock-variable-name-face)
                         " on scheme mode")
    (font-lock-add-keywords 'scheme-mode
                            `((,keyword-regexp 1 ',face-name))))
  (mapc (lambda (x)
          (when (consp x)
            (put (cdr x)
                 'scheme-indent-function
                 (car x))))
        keyword-rules))

(provide 'scheme-keywords-util)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:
