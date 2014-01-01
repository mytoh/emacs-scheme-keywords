
(eval-when-compile
  (require 'cl-lib))


(cl-defun r7rs:add-keywords (face-name keyword-rules)
  (let* ((keyword-list (mapcar #'(lambda (x)
                                   (symbol-name (cdr x)))
                               keyword-rules))
         (keyword-regexp (concat "(\\("
                                 (regexp-opt keyword-list)
                                 "\\)[) \n]")))
    (my-log "adding keywords for face "
            (propertize (symbol-name face-name) 'face 'font-lock-variable-name-face)
            " on scheme mode")
    (font-lock-add-keywords 'scheme-mode
                            `((,keyword-regexp 1 ',face-name))))
  (mapc #'(lambda (x)
            (put (cdr x)
                 'scheme-indent-function
                 (car x)))
        keyword-rules))

(font-lock-add-keywords 'scheme-mode
                        `(
                          ;; (export some-function)
                          (,(rx (and
                                 (syntax open-parenthesis)"export" (one-or-more (in " \t\n"))
                                 (submatch
                                  (one-or-more (or (syntax word)
                                                   (syntax symbol)
                                                   (in " \t\n"))))))
                           1  'font-lock-variable-name-face)

                          ;; ,@
                          (,(rx ",@")
                           0 'r7rs:face-string)
                          ;; #`
                          (,(rx (submatch "#`\"")
                                (submatch (one-or-more any))
                                (submatch  "\""))
                           (1 'r7rs:face-regexp)
                           (2 'r7rs:face-regexp)
                           (3 'r7rs:face-regexp)
                           )
                          ;; #t #f
                          (,(rx (or  "#t" "#f"))
                           0 'r7rs:face-boolean)

                          ;; *some-variable*
                          (,(rx "*"
                                (submatch
                                 (one-or-more
                                  any))
                                "*")
                           0 'r7rs:face-constant)

                          ;; keyword symbol
                          (,(rx (one-or-more (not (syntax word)))
                                ":" (one-or-more (or (syntax word)
                                                     (syntax symbol))))
                           0 'r7rs:face-constant)

                          ;; symbol
                          (,(rx (one-or-more (not (syntax word)))
                                "'" (one-or-more (or (syntax word)
                                                     (syntax symbol))))
                           0 'r7rs:face-string)

                          ;; library name
                          (,(rx (syntax open-parenthesis) (or "library" "define-library")
                                (one-or-more (in " \t\n"))
                                (syntax open-parenthesis)
                                (submatch (one-or-more (or (syntax word)
                                                           (syntax symbol)
                                                           (in " \t\n")))))
                           0 'r7rs:face-library-name)

                          ;; character literal #\x
                          (,(rx "#" "\\" (one-or-more (or (syntax word)
                                                          (syntax symbol))))
                           0 'r7rs:face-character)

                          ;; named let
                          (,(rx (syntax open-parenthesis) "let"
                                (one-or-more space)
                                (submatch (one-or-more (or (syntax word)
                                                           (syntax symbol))))
                                (* space)
                                (syntax open-parenthesis))
                           1 'r7rs:face-constant)
                          ))


(require 'r7rs-fundamental "scheme-keywords/r7rs/r7rs-fundamental")

(require 'r7rs-base "scheme-keywords/r7rs/r7rs-base")
(require 'r7rs-char "scheme-keywords/r7rs/r7rs-char")
(require 'r7rs-cxr "scheme-keywords/r7rs/r7rs-cxr")
(require 'r7rs-file "scheme-keywords/r7rs/r7rs-file")
(require 'r7rs-face "scheme-keywords/r7rs/r7rs-face")
(require 'r7rs-process-context "scheme-keywords/r7rs/r7rs-process-context")
(require 'r7rs-eval "scheme-keywords/r7rs/r7rs-eval")
(require 'r7rs-lazy "scheme-keywords/r7rs/r7rs-lazy")
(require 'r7rs-load "scheme-keywords/r7rs/r7rs-load")
(require 'r7rs-read "scheme-keywords/r7rs/r7rs-read")
(require 'r7rs-repl "scheme-keywords/r7rs/r7rs-repl")
(require 'r7rs-time "scheme-keywords/r7rs/r7rs-time")
(require 'r7rs-write "scheme-keywords/r7rs/r7rs-write")
(require 'r7rs-complex "scheme-keywords/r7rs/r7rs-complex")
(require 'r7rs-inexact "scheme-keywords/r7rs/r7rs-inexact")



(cl-defun r7rs:mode-start ()
  (r7rs:add-faces)
  (r7rs:add-fundamental)
  (r7rs:add-base)
  (r7rs:add-char)
  (r7rs:add-cxr)
  (r7rs:add-file)
  (r7rs:add-process-context)
  (r7rs:add-eval)
  (r7rs:add-lazy)
  (r7rs:add-load)
  (r7rs:add-read)
  (r7rs:add-repl)
  (r7rs:add-time)
  (r7rs:add-write)
  (r7rs:add-inexact)
  (r7rs:add-complex))

;;;###autoload
(define-minor-mode r7rs-mode
  :init-value nil
  :lighter " r7rs"
  :group 'languages
  (if r7rs-mode
      (r7rs:mode-start)))

(provide 'r7rs)
