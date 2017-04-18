(defun accumulate-n (op init seqs)
  (if (null (car seqs))
      nil
      (cons (reduce op (mapcar #'car seqs) :initial-value init)
            (accumulate-n op init (mapcar #'cdr seqs)))))
