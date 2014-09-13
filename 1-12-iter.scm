(define (pascal row col)
  (/ (factorial row)
     (* (factorial col)
        (factorial (- row col)))))

(define (factorial n)
  (define (factor-iter product count max-count)
    (if (> count max-count)
      product
      (factor-iter (* count product)
                   (+ count 1)
                   max-count)))
  (factor-iter 1 1 n))
