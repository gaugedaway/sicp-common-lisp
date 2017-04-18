(defun count-leaves (tree)
  (reduce #'+ (mapcar (lambda (x)
                        (if (not (consp x))
                            1
                            (count-leaves x)))
                      tree)))
