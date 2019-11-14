#lang racket
;Function to merge two already sorted lists into one (Time Complexity O(n))
(define (merge flst slst)
  (cond
    [(empty? flst) slst]
    [(empty? slst) flst]
    [(< (first flst) (first slst))
     (cons (first flst) (merge (rest flst) slst))]
     [#t
      (cons (first slst) (merge flst (rest slst)))]))

(define (mergeSort lst)
  (cond
    [(or (empty? lst) (empty? (cdr lst))) lst]
    [(null? (cddr lst))
     (merge (list(car lst)) (cdr lst))]
    [#t
     (let ([mid (ceiling (/ (length lst) 2))])
       (merge (mergeSort (take lst mid))
              (mergeSort (drop lst mid)))
       )]
    ))