(define (inc x) (+ x 1))
(define (dec x) (- x 1))

(define (plus a b) 
  (if (= a 0) b (plus (dec a) (inc b))))

(define (plus2 a b) 
  (if (= a 0) b (inc (plus2 (dec a) b))))

(inc 1)
(dec 1)

(trace plus)
(plus 4 5)

(trace plus2)
(plus2 4 5)
