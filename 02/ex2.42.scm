(define (enumerate-interval low high)
  (if (> low high)
      (list)
      (cons low (enumerate-interval (+ 1 low) high))))

(define (filter pred seq)
  (cond ((null? seq) (list))
        ((pred (car seq))
         (cons (car seq)
               (filter pred (cdr seq))))
        (else (filter pred (cdr seq)))))

(define (flatmap proc seq)
  (accumulate append (list) (map proc seq)))

(define (accumulate op init seq)
  (if (null? seq)
      init
      (op (car seq)
          (accumulate op init (cdr seq)))))

(define (queens board-size)
  (define (queen-cols k)
    (if (= k 0)
        (list empty-board)
        (filter
         (lambda (positions) (safe? k positions))
         (flatmap
          (lambda (rest-of-queens)
            (map (lambda (new-row)
                   (adjoin-position new-row k rest-of-queens))
                 (enumerate-interval 1 board-size)))
          (queen-cols (- k 1))))))
  (queen-cols board-size))


(define empty-board '())

(define (adjoin-position row col positions)
       (cons (cons row col) positions))

(define get-row car)
(define get-col cdr)

(define (safe? col positions)
  (let loop ((row (get-row (car positions)))
             (prev-positions (cdr positions)))
    (if (pair? prev-positions)
        (let* ((prev-position (car prev-positions))
               (prev-row (get-row prev-position))
               (prev-col (get-col prev-position))
               (row-delta (- row prev-row))
               (col-delta (- col prev-col)))
          (cond ((= row prev-row) #f)
                ((= col-delta (abs row-delta)) #f)
                 (else (loop row (cdr prev-positions)))))
        #t)))

