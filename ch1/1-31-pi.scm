(load "1-31-iter.scm")

(define (numer-term i)
  (cond ((= i 1)
         2)
        ((even? i)
         (+ i 2))
        (else
          (+ i 1))))

(define (denom-term i)
  (if (odd? i)
    (+ i 2)
    (+ i 1)))

(define (pi n)
  (* 4
     (exact->inexact
       (/ (product numer-term
                   1
                   (lambda (x) (+ x 1))
                   n)
          (product denom-term
                   1
                   (lambda (x) (+ x 1))
                   n)))))
