(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(A 1 10)
(A 0 (A 1 9))
(* 2 (A 0 (A 1 8)))
(* 2 (* 2 (A 0 (A 1 7))))
(* 2 (* 2 (* 2 (A 0 (A 1 6)))))
(* 2 (* 2 (* 2 (* 2 (A 0 (A 1 5))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 4)))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 3))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 2)))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (A 0 (A 1 1))))))))))
(* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 (* 2 2)))))))))

(A 2 4)
(A 1 (A 2 3))
(A 0 (- (A 2 3) 1))
(* 2 (- (A 2 3) 1))
(* 2 (- (A 1 (A 2 2)) 1))
(* 2 (- (A 0 (- (A 2 2) 1)) 1))
(* 2 (- (* 2 (- (A 2 2) 1)) 1))
(* 2 (- (* 2 (- (* 2 (- (A 2 1) 1)) 1)) 1))
(* 2 (- (* 2 (- (* 2 (- 2 1)) 1)) 1))
(* 2 (- (* 2 (- (* 2 1) 1)) 1))
(* 2 (- (* 2 (- 2 1)) 1))
(* 2 (- (* 2 1) 1))
(* 2 (- 2 1))
(* 2 1)
2









