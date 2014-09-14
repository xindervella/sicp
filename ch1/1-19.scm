(define (fib n)
  (define (fib-iter a b p q n)
    (cond ((= n 0)
           b)
          ((even? n)
           (fib-iter a
                     b
                     (+ (square p) (square q))
                     (+ (* 2 p q) (square q))
                     (/ n 2)))
          (else
            (fib-iter (+ (* b q) (* a q) (* a p))
                      (+ (* b p) (* a q))
                      p
                      q
                      (- n 1)))))
  (fib-iter 1 0 0 1 n))

;;; http://sicp.readthedocs.org/en/latest/chp1/19.html
;;; http://mathhelpforum.com/number-theory/179966-o-log-n-algorithm-computing-fibonacci-numbers-sicp-ex-1-19-a.html
;;; http://www.ics.uci.edu/~eppstein/161/960109.html
