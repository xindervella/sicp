(define (sum-of-squares x y)
  (+ (square x)
     (square y)))

(define (bigger x y)
  (if (> x y)
    x
    y))

(define (smalller x y)
  (if (> x y)
    y
    x))

(define (sum-biggers-squares x y z)
  (sum-of-squares (bigger x y)                      ; bigger one
                  (bigger (smalller x y ) z)))      ; another bigger
