
(require 'scheme-keywords-util "scheme-keywords/util")

(cl-defun srfi:add-srfi-1 ()
  (scheme-keywords:add-keywords
   'font-lock-builtin-face
   '((1 . remove)
     (1 . partition)
     (1 . member)
     (1 . map)
     (1 . for-each)
     (1 . fold-right)
     (1 . find)
     (1 . filter)
     (1 . cons*)
     (1 . assoc)
     (1 . set-cdr!)
     (1 . set-car!)
     (1 . reverse)
     (1 . pair?)
     (1 . null?)
     (1 . memv)
     (1 . memq)
     (1 . list-ref)
     (1 . list)
     (1 . length)
     (1 . cons)
     (1 . cdr)
     (1 . cddr)
     (1 . cdddr)
     (1 . cddddr)
     (1 . cdddar)
     (1 . cddar)
     (1 . cddadr)
     (1 . cddaar)
     (1 . cdar)
     (1 . cdadr)
     (1 . cdaddr)
     (1 . cdadar)
     (1 . cdaar)
     (1 . cdaadr)
     (1 . cdaaar)
     (1 . car)
     (1 . cadr)
     (1 . caddr)
     (1 . cadddr)
     (1 . caddar)
     (1 . cadar)
     (1 . cadadr)
     (1 . cadaar)
     (1 . caar)
     (1 . caadr)
     (1 . caaddr)
     (1 . caadar)
     (1 . caaar)
     (1 . caaadr)
     (1 . caaaar)
     (1 . assv)
     (1 . assq)
     (1 . append)
     (1 . lset-diff+intersection!)
     (1 . lset-xor!)
     (1 . lset-difference!)
     (1 . lset-intersection!)
     (1 . lset-union!)
     (1 . lset-diff+intersection)
     (1 . lset-xor)
     (1 . lset-difference)
     (1 . lset-intersection)
     (1 . lset-union)
     (1 . lset-adjoin)
     (1 . lset=)
     (1 . lset<=)
     (1 . reverse!)
     (1 . alist-delete!)
     (1 . alist-delete)
     (1 . delete-duplicates!)
     (1 . delete-duplicates)
     (1 . alist-copy)
     (1 . alist-cons)
     (1 . delete!)
     (1 . delete)
     (1 . break!)
     (1 . span!)
     (1 . break)
     (1 . span)
     (1 . take-while!)
     (1 . drop-while)
     (1 . take-while)
     (1 . list-index)
     (1 . every)
     (1 . any)
     (1 . find-tail)
     (1 . remove!)
     (1 . partition!)
     (1 . filter!)
     (1 . map-in-order)
     (1 . filter-map)
     (1 . pair-for-each)
     (1 . map!)
     (1 . append-map!)
     (1 . append-map)
     (1 . reduce-right)
     (1 . pair-fold-right)
     (1 . unfold-right)
     (1 . reduce)
     (1 . pair-fold)
     (1 . fold)
     (1 . unfold)
     (1 . concatenate!)
     (1 . concatenate)
     (1 . append-reverse!)
     (1 . append-reverse)
     (1 . append!)
     (1 . count)
     (1 . unzip5)
     (1 . unzip4)
     (1 . unzip3)
     (1 . unzip2)
     (1 . unzip1)
     (1 . zip)
     (1 . last-pair)
     (1 . last)
     (1 . split-at!)
     (1 . split-at)
     (1 . drop-right!)
     (1 . take!)
     (1 . drop-right)
     (1 . take-right)
     (1 . drop)
     (1 . take)
     (1 . car+cdr)
     (1 . tenth)
     (1 . ninth)
     (1 . eighth)
     (1 . seventh)
     (1 . sixth)
     (1 . fifth)
     (1 . 10fourth)
     (1 . third)
     (1 . second)
     (1 . first)
     (1 . iota)
     (1 . length+)
     (1 . circular-list)
     (1 . list=)
     (1 . null-list?)
     (1 . not-pair?)
     (1 . dotted-list?)
     (1 . circular-list?)
     (1 . proper-list?)
     (1 . list-copy)
     (1 . list-tabulate)
     (1 . make-list)
     (1 . xcons)

     )))

(provide 'srfi-1)
