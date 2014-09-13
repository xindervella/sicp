(define (f n)
  (f-iter 2 1 0 n))

(define (f-iter a b c count)
  (cond ((= count 0) c)
        (else (f-iter (+ a (* 2 b) (* 3 c))
                      a
                      b
                      (- count 1)))))
