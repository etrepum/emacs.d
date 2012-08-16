(defun add-hook-to-modes (modes hook)
  (dolist (mode modes)
    (add-hook (intern (concat (symbol-name mode) "-mode-hook")) hook)))
