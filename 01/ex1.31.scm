(define (product term a next b)
  (define (iter a result)
    (if (> a b) result
      (iter (next a) (* (term a) result))))
  (iter a 1))

(define (fact n)
  (define (inc x) (+ x 1))
  (define (ret x) x)
  (product ret 1 inc n))

(define (product term a next b)
  (if (> a b) 1
      (* (term a) (product term (next a) next b))))

