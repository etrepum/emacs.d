(setq lisp-modes '(clojure
                   emacs-lisp
                   scheme)
      code-modes (apply #'append
                        (list lisp-modes
                              '(erlang
                                haskell
                                python
                                ruby
                                sh
                                vhdl))))

(global-set-key
 (kbd "C-c n")
 (lambda ()
   (interactive)
   (delete-trailing-whitespace)
   (untabify (point-min) (point-max))
   (indent-region (point-min) (point-max))))

(global-set-key (kbd "C-c r") 'align-regexp)

(add-hook-to-modes
 code-modes
 (lambda ()
   (local-set-key (kbd "C-m") 'newline-and-indent)))
