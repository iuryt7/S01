(defun process-list (lst)
  (mapcar (lambda (x) (if (>= x 4) (* x x) (/ x 2.0))) lst))

(defun combine-lists ()
  (append (process-list '(1 2 3)) (process-list '(4 5 6))))

(defun main ()
  (let ((result (combine-lists)))
    (format t "A lista combinada e processada é: ~a~%" result)))

;; Para executar:
(main)
