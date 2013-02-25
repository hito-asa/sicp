(define (pascal r c) (cond ((= r c) 1) ((= c 1) 1) (else (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c)))))
