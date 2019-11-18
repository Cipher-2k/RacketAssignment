(define (sumUpRecursive nums)
  (if
    (empty? nums)
    0
    (+ (first nums) (sumUpRecursive(rest nums)))))

(define (sumUpTailRecursive lst sum)
    (cond
      [(empty? lst) sum]
      [else (sumUpTailRecursive (rest lst) (+ sum (first lst)))])
)