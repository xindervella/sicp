(define (multi a b)
  (define (multi-iter a b product)
    (cond ((= b 0)
           product)
          ((even? b)
           (multi-iter (double a) (halve b) product))
          (else
            (multi-iter a (- b 1) (+ a product)))))

  (define (double n)
    (+ n n ))

  (define (halve n)
    (/ n 2))

  (multi-iter a b 0))
