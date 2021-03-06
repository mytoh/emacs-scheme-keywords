;; faces

(require 'scheme-keywords-util "scheme-keywords/util")

(cl-defun scheme-keywords:make-face (name fore)
  (make-face name)
  (set-face-foreground name fore))

(defface scheme-keywords:r7rs-syntax
  '((t :inherit font-lock-builtin-face))
  "face for r7rs syntax")

(cl-defun scheme-keywords:r7rs-add-faces ()
  (cl-dolist (p '((scheme-keywords:r7rs-function "#66D9EF")
                  (scheme-keywords:r7rs-string "#f24f47")
                  (scheme-keywords:r7rs-character "#fee1a2")
                  (scheme-keywords:r7rs-number "#b5ae5b")
                  (scheme-keywords:r7rs-boolean "#ffbe5c")
                  (scheme-keywords:r7rs-delimiter "#ababab")
                  (scheme-keywords:r7rs-constant "#e9c3b9")
                  (scheme-keywords:r7rs-comment "#ababab")
                  (scheme-keywords:r7rs-multicomment "#ababab")
                  (scheme-keywords:r7rs-error "#ababab")
                  (scheme-keywords:r7rs-library-name "#e95a9e")
                  (scheme-keywords:r7rs-module-macro "#9399ab")
                  (scheme-keywords:r7rs-module-syntax "#93c9ab")
                  (scheme-keywords:r7rs-module-function "#3b5993")
                  (scheme-keywords:r7rs-module-procedure "#3b9993")
                  (scheme-keywords:r7rs-module-method "#c3b9a9")
                  (scheme-keywords:r7rs-module-charset "#9bc993")
                  (scheme-keywords:r7rs-module-class "#ebc893")
                  (scheme-keywords:r7rs-module-parameter "#e999b3")
                  (scheme-keywords:r7rs-module-name "#6a93cc")
                  (scheme-keywords:r7rs-regexp "#7ea978")
                  (scheme-keywords:r7rs-srfi62-comment "#ababab")
                  (scheme-keywords:r7rs-sharpbang "#ababab")
                  (scheme-keywords:r7rs-include "#ababab")
                  (scheme-keywords:r7rs-interpolation "#ababab")
                  (scheme-keywords:r7rs-export-symbol "#c39bac")))
    (scheme-keywords:log "making face " (symbol-name (car p)))
    (scheme-keywords:make-face (car p) (cadr p))))

(scheme-keywords:r7rs-add-faces)

(provide 'scheme-keywords-face)
