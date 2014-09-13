(define dx 0.00001)

(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx))
          (f x)
          (f (+ x dx)))
       3)))

;(define (smooth-n-times f n)
;  (if (= n 0)
;    f
;    (smooth (smooth-n-times f (- n 1)))))
(load "1-43.scm")
(define (smooth-n-times f n)
  (let ((n-times-smooth (repeated smooth n)))
        (n-times-smooth f)))
