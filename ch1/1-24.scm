(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0)
         #t)
        ((fermat-test n)
         (fast-prime? n (- times 1)))
        (else
          #f)))

(define (expmod base e m)
  (cond ((== e 0)
         1)
        ((even? e)
         (remainder (square (expmod base (/ e 2) m)) m))
        (else
          (remainder (* base (expmod base (- e 1) m)) m))))
