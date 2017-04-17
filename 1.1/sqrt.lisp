(defun sqr (x)
  (* x x))

(defun avg (a b)
  (/ (+ a b) 2))

(defun my-sqrt (x)
  (defun improve (guess)
    (avg guess (/ x guess)))
  (defun good-enough? (guess)
    (< (abs (- (sqr guess) x)) 0.00001))
  (defun sqrt-iter (guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))
