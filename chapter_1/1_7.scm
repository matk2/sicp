(define (sqrt x)
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))

  (define (good-enough? guess)
    (< (abs (- 1.0 (/ guess (improve guess)))) 0.001))

  (define (improve guess) (average guess (/ x guess)))

  (sqrt-iter 1.0))

(define (average x y) (/ (+ x y) 2))
