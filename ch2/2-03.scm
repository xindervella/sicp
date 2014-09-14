(define (perimeter-rectangle r)
  (let ((len (length-of-rectangle r))
        (wid (width-of-rectangle r)))
    (* 2
       (+ len wid))))

(define (area-rectangle r)
  (* (length-of-rectangle r)
     (width-of-rectangle r)))


;;; rectangle constructor

(define (make-rectangle len wid)
  (cons len wid))

(define (length-rectangle r)
  (car r))

(define (width-rectangle r)
  (cdr r))

(load "2-02.scm")

(define (length-of-rectangle r)
  (let ((len (length-rectangle r)))
    (let ((start (start-segment len))
          (end (end-segment len)))
      (- (x-point end)
         (x-point start)))))
(define (width-of-rectangle r)
  (let ((wid (width-rectangle r)))
    (let ((start (start-segment wid))
          (end (end-segment wid)))
      (- (y-point end)
         (y-point start)))))


