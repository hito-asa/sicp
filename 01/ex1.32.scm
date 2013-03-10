(define (accumulate combiner null-value term a next b)
  (define (iter a result)
    (if (> a b) result
      (iter (next a) (combiner (term a) result))))
  (iter a null-value))

(define (accumulate combiner null-value term a next b)
  (if (> a b) null-value
      (combiner (term a) (product term (next a) next b))))

(define (sum a b)
  (define (inc n) (+ n 1))
  (define (comb x y) (+ x y))
  (define (val x) x)
  (accumulate comb 0 val a inc b))

(define (product a b)
  (define (inc n) (+ n 1))
  (define (comb x y) (* x y))
  (define (val x) x)
  (accumulate comb 1 val a inc b))

