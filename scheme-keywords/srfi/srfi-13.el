
(cl-defun srfi:add-srfi-13 ()
  (srfi:add-keywords
   'font-lock-builtin-face
   '((1 . list->string)
     (1 . string-append)
     (1 . string)
     (1 . string-set!)
     (1 . string-ref)
     (1 . string-length)
     (1 . make-string)
     (1 . string?)
     (1 . string-fill!)
     (1 . string-copy)
     (1 . string->list)
     (1 . string-replace)
     (1 . string-tokenize)
     (1 . string-join)
     (1 . string-null?)
     (1 . string-xcopy!)
     (1 . xsubstring)
     (1 . string-append/shared)
     (1 . string-concatenate-reverse/shared)
     (1 . string-concatenate-reverse)
     (1 . string-concatenate/shared)
     (1 . string-concatenate)
     (1 . reverse-list->string)
     (1 . string-reverse!)
     (1 . string-reverse)
     (1 . substring/shared)
     (1 . string-copy!)
     (1 . string-contains-ci)
     (1 . string-contains)
     (1 . string-suffix-ci?)
     (1 . string-suffix?)
     (1 . string-prefix-ci?)
     (1 . string-prefix?)
     (1 . string-suffix-length-ci)
     (1 . string-suffix-length)
     (1 . string-prefix-length-ci)
     (1 . string-prefix-length)
     (1 . string-count)
     (1 . string-skip-right)
     (1 . string-skip)
     (1 . string-index-right)
     (1 . string-index)
     (1 . string-delete)
     (1 . string-filter)
     (1 . string-trim-both)
     (1 . string-trim-right)
     (1 . string-trim)
     (1 . string-pad-right)
     (1 . string-pad)
     (1 . string-drop-right)
     (1 . string-drop)
     (1 . string-take-right)
     (1 . string-take)
     (1 . string-titlecase!)
     (1 . string-upcase!)
     (1 . string-downcase!)
     (1 . string-titlecase)
     (1 . string-upcase)
     (1 . string-downcase)
     (1 . string-ci<>)
     (1 . string-ci>=)
     (1 . string-ci<=)
     (1 . string-ci>)
     (1 . string-ci<)
     (1 . string-ci=)
     (1 . string<>)
     (1 . string>=)
     (1 . string<=)
     (1 . string>)
     (1 . string<)
     (1 . string=)
     (1 . string-compare-ci)
     (1 . string-compare)
     (1 . string-hash-ci)
     (1 . string-hash)
     (1 . string-any)
     (1 . string-every)
     (1 . string-for-each-index)
     (1 . string-for-each)
     (1 . string-tabulate)
     (1 . string-unfold-right)
     (1 . string-fold-right)
     (1 . string-unfold)
     (1 . string-fold)
     (1 . string-map!)
     (1 . string-map)
     )))

(provide 'srfi-13)