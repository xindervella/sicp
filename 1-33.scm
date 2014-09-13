(define (filtered-accumulate combine null-value term a next b valid?)
  (define (iter i result)
    (cond ((> i b)
           result)
          ((valid? i)
           (iter (next i) (combine (term i) result)))
          (else
            (iter (next i) result))))
  (iter a null-value))

(define (coprime? i n)
  (and (< i n)
       (= 1 (gcd i n))))

(define (product-of-coprimes n)
  (filtered-accumulate *
                       1
                       (lambda (x) x)
                       1
                       (lambda (x) (+ x 1))
                       n
                       (lambda (x) (coprime? x n))))
