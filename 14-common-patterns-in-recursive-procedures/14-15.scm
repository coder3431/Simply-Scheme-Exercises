; Write merge, a procedure that takes two sentences of numbers as arguments.
; Each sentence must consist of numbers in increasing order. Merge should return a single
; sentence containing all of the numbers, in order. (We’ll use this in the next chapter as
; part of a sorting algorithm.)
;
; > (merge ’(4 7 18 40 99) ’(3 6 9 12 24 36 50))
; (3 4 6 7 9 12 18 24 36 40 50 99)

(define (merge s1 s2)
    (cond ((empty? s1) s2)
          ((empty? s2) s1)
          ((< (first s1) (first s2)) (se (first s1) (merge (bf s1) s2)))
          ((< (first s2) (first s1)) (se (first s2) (merge s1 (bf s2))))
          (else (se (first s1) (first s2) (merge (bf s1) (bf s2))))))
