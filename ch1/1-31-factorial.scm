(load "1-31-iter.scm")

(define (factorial n)
  (product (lambda (x) x)
           1
           (lambda (x) (+ x 1))
           n))
