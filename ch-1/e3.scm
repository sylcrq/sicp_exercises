(define (max a b) (if (> a b) a b))
(define (min a b) (if (< a b) a b))
(define (square x) (* x x))
(define (sum-of-squares a b) (+ (square a) (square b)))

(define (bigger-sum-of-squares a b c) 
  (cond ((= (max a b) a) (+ (square a) (square (max b c))))
        (else (+ (square b) (square (max a c))))))

(define (bigger-sum-of-squares-v2 a b c) 
  (cond ((= (max a b) a) (sum-of-squares a (max b c)))
        (else (sum-of-squares b (max a c)))))

(define (bigger-sum-of-squares-v3 a b c) 
  (sum-of-squares (max a b) (max (min a b) c)))

(max 2 3)
(min 2 3)
(square 4)
(sum-of-squares 2 3)
(bigger-sum-of-squares 2 3 4)
(bigger-sum-of-squares-v2 2 3 4)
(bigger-sum-of-squares-v3 2 3 4)

