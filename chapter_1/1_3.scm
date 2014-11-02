(define (sum-of-square-with-large-num a b c)
  (define minimum
    (cond ((and (<= a b) (<= a c)) a)
          ((and (<= b a) (<= b c)) b)
          (else c)))

  (cond ((= minimum a) (sum-of-square b c))
        ((= minimum b) (sum-of-square a c))
        (else (sum-of-square a b))))

(define (sum-of-square x y) (+ (square x) (square y)))
