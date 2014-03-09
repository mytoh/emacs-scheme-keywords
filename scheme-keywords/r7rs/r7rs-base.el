
;; r7rs base

(require 'scheme-keywords-util "scheme-keywords/util")
(require 'scheme-keywords-face "scheme-keywords/face")

(cl-defun r7rs:add-base ()
  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-syntax
   '((1 . define)
     (1 . define-record-type)
     (1 . define-syntax)
     (1 . define-values)
     (1 . define-library)
     (1 . lambda)
     (1 . set!)
     (1 . let*)
     (1 . let-syntax)
     (1 . letrec)
     (1 . letrec-syntax)
     (1 . if)
     (0 . cond)
     (1 . cond-expand)
     (1 . syntax-rules)
     (1 . case)
     (1 . when)
     (1 . unless)
     (1 . do)
     (1 . guard)
     (0 . begin)))

  (scheme-keywords:add-keywords
   'scheme-keywords:face-r7rs-function
   '((1 . *)
     (1 . +)
     (1 . ...)
     (1 . /)
     (1 . <)
     (1 . <=)
     (1 . =)
     (1 . =>)
     (1 . >)
     (1 . >=)
     (1 . abs)
     (1 . and)
     (1 . append)
     (1 . apply)
     (1 . assoc)
     (1 . assq)
     (1 . assv)
     (1 . binary-port?)
     (1 . boolean=?)
     (1 . boolean?)
     (1 . bytevector)
     (1 . bytevector-append)
     (1 . bytevector-copy)
     (1 . bytevector-copy!)
     (1 . bytevector-length)
     (1 . bytevector-u8-ref)
     (1 . bytevector-u8-set!)
     (1 . bytevector?)
     (1 . caar)
     (1 . cadr)
     (1 . call-with-current-continuation)
     (1 . call-with-port)
     (1 . call-with-values)
     (1 . call/cc)
     (1 . car)
     (1 . cdar)
     (1 . cddr)
     (1 . cdr)
     (1 . ceiling)
     (1 . char->integer)
     (1 . char-ready?)
     (1 . char<=?)
     (1 . char<?)
     (1 . char=?)
     (1 . char>=?)
     (1 . char>?)
     (1 . char?)
     (1 . close-input-port)
     (1 . close-output-port)
     (1 . close-port)
     (1 . complex?)
     (1 . cons)
     (1 . current-error-port)
     (1 . current-input-port)
     (1 . current-output-port)
     (1 . denominator)
     (1 . dynamic-wind)

     (1 . else)
     (1 . eof-object?)
     (1 . equal?)
     (1 . error)
     (1 . error-object-message)
     (1 . even?)
     (1 . exact-integer-sqrt)
     (1 . exact?)
     (1 . features)
     (1 . floor)
     (1 . floor-remainder)
     (1 . flush-output-port)
     (1 . gcd)
     (1 . get-output-string)
     (1 . include-ci)
     (1 . inexact?)
     (1 . input-port?)
     (1 . integer?)
     (1 . lcm)
     (1 . let)
     (1 . let*-values)
     (1 . let-values)
     (1 . letrec*)
     (1 . list)
     (1 . list->vector)
     (1 . list-ref)
     (1 . list-tail)
     (1 . make-bytevector)
     (1 . make-parameter)
     (1 . make-vector)
     (1 . max)
     (1 . memq)
     (1 . min)
     (1 . negative?)
     (1 . not)
     (1 . number->string)
     (1 . numerator)
     (1 . open-input-bytevector)
     (1 . open-output-bytevector)
     (1 . or)
     (1 . output-port?)
     (1 . parameterize)
     (1 . peek-u8)
     (1 . positive?)
     (1 . quasiquote)
     (1 . quotient)
     (1 . raise-continuable)
     (1 . rationalize)
     (1 . read-bytevector!)
     (1 . read-error?)
     (1 . read-string)
     (1 . real?)
     (1 . reverse)
     (1 . set-cdr!)
     (1 . string)
     (1 . string->number)
     (1 . string->utf8)
     (1 . string-append)

     (1 . eof-object)
     (1 . eq?)
     (1 . eqv?)
     (1 . error-object-irritants)
     (1 . error-object?)
     (1 . exact)
     (1 . exact-integer?)
     (1 . expt)
     (1 . file-error?)
     (1 . floor-quotient)
     (1 . floor/)
     (1 . for-each)
     (1 . get-output-bytevector)
     (1 . include)
     (1 . inexact)
     (1 . input-port-open?)
     (1 . integer->char)
     (1 . length)
     (1 . list->string)
     (1 . list-copy)
     (1 . list-set!)
     (1 . list?)
     (1 . make-list)
     (1 . make-string)
     (1 . map)
     (1 . member)
     (1 . memv)
     (1 . modulo)
     (1 . newline)
     (1 . null?)
     (1 . number?)
     (1 . odd?)
     (1 . open-input-string)
     (1 . open-output-string)
     (1 . output-port-open?)
     (1 . pair?)
     (1 . peek-char)
     (1 . port?)
     (1 . procedure?)
     (1 . quote)
     (1 . raise)
     (1 . rational?)
     (1 . read-bytevector)
     (1 . read-char)
     (1 . read-line)
     (1 . read-u8)
     (1 . remainder)
     (1 . round)
     (1 . set-car!)
     (1 . square)
     (1 . string->list)
     (1 . string->symbol)
     (1 . string->vector)
     (1 . string-copy)

     (1 . string-copy!)
     (1 . string-for-each)
     (1 . string-map)
     (1 . string-set!)
     (1 . string<?)
     (1 . string>=?)
     (1 . string?)
     (1 . symbol->string)
     (1 . symbol?)
     (1 . truncate)
     (1 . truncate-remainder)
     (1 . u8-ready?)
     (1 . unquote)
     (1 . utf8->string)
     (1 . vector)
     (1 . vector->string)
     (1 . vector-copy)
     (1 . vector-fill!)
     (1 . vector-length)
     (1 . vector-ref)
     (1 . vector?)
     (1 . with-exception-handler)
     (1 . write-char)
     (1 . write-u8)

     (1 . string-fill!)
     (1 . string-length)
     (1 . string-ref)
     (1 . string<=?)
     (1 . string=?)
     (1 . string>?)
     (1 . substring)
     (1 . symbol=?)
     (1 . syntax-error)
     (1 . textual-port?)
     (1 . truncate-quotient)
     (1 . truncate/)
     (1 . unquote-splicing)
     (1 . values)
     (1 . vector->list)
     (1 . vector-append)
     (1 . vector-copy!)
     (1 . vector-for-each)
     (1 . vector-map)
     (1 . vector-set!)
     (1 . write-bytevector)
     (1 . write-string)
     (1 . zero?)
     )))

(provide 'r7rs-base)
