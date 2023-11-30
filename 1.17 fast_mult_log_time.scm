(define (log-mult a b)
  (cond ((= b 0) 0)
        ((even? b) (log-mult (double a) (halve b)))
        (else (+ a (log-mult a (- b 1))))))

(define (double a) (* 2 a))

(define (halve a) (/ a 2))
