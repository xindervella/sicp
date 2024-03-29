(load "1-42.scm")
;(define  (repeated f n)
;  (if (= n 1)
;    f
;    (compose f (repeated f (- n 1)))))

(define (repeated f n)
  (define (iter i repeated-f)
    (if (= i 1)
      repeated-f
      (iter (- i 1)
            (compose f repeated-f))))
  (iter n f))
