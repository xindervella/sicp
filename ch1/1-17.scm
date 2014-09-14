(define (multi a b)
  (define (double n)
    (+ n n))

  (define (halve n)
    (/ n 2))

  (cond ((= b 0)
         0)
        ((even? b)
         (double (multi a (halve b))))
        (else
          (+ a (multi a (- b 1))))))
