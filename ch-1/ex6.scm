(define (square x) (* x x))
(define (good-enough guess x) 
  (< (abs (- (square guess) x)) 0.0001))
(define (improve guess x) 
  (/ (+ (/ x guess) guess) 2))

(define (square-root guess x) 
  (if (good-enough guess x) 
    guess 
    (square-root (improve guess x) x) ))
(define (sqrt-1 x) (square-root 1.0 x))

(define (new-if predicate then-clause else-clause) 
  (cond (predicate then-clause)
        (else else-clause)))
(define (square-root-t guess x) 
  (new-if (good-enough guess x) 
          guess 
          (square-root-t (improve guess x) x)))

(square 5)
(abs -1)
(good-enough 1.73205 3)
(good-enough 1.8 3)
(improve 1 2)
(improve (improve 1 2) 2)
(square-root 1 3)
(sqrt-1 3)
(new-if (= 2 1) 22 33)
(new-if (> 2 1) 22 33)
;(square-root-t 1 3)
;(sqrt-1 900000000000000000000000000000000000000000000000000000000000000000000000000000000000)

