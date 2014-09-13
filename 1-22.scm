(load "1-21.scm")
(define (continue-primes n count)

  (define (next-odd n)
    (if (odd? n)
      (+ n 2)
      (+ n 1)))

  (define (prime? n)
    (= n (smallest-divisor n)))

  (cond ((= count 0)
         (display "finished."))
        ((prime? n)
         (display n)
         (newline)
         (continue-primes (next-odd n) (- count 1)))
        (else
          (continue-primes (next-odd n) count))))
