(define (fast-expt base n)
  (define (expt-iter base n result)
    (cond ((= n 0)
           result)
          ((even? n)
           (expt-iter (square base) (/ n 2) result))
          (else
            (expt-iter base (- n 1) (* base result)))))
  (expt-iter base n 1))
