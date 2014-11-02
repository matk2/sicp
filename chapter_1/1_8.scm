(define (cbrt x)
  (define (cbrt-iter guess)
    (if (good-enough? guess)
        guess
        (cbrt-iter (improve guess))))

  (define (good-enough? guess)
    (< (abs (- 1.0 (/ guess (improve guess)))) 0.001))

  (define (improve guess)
    (/ (+ (/ x (square guess)) (* 2 guess)) 3))

  (cbrt-iter 1.0))
