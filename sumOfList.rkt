#lang racket

(list "1" "2" "3" "50")

(define (sumUpRecursive nums)
  (if
    (empty? nums)
    0
    (+ (first nums) (sumUpRecursive(rest nums)))))
(require racket/trace)
(trace sumUpRecursive)



(define (sumUpTailRecursive lst sum)
  (define (iter lst sum)
    (cond
      [(empty? lst) sum]
      [else (+ sum (first lst) (iter (rest lst) sum))]))
  (iter lst 0))
(trace sumUpTailRecursive)