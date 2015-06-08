(add-to-list 'load-path "~/src/ghc-mod/elisp")
(autoload 'ghc-mod-init "ghc-mod" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-mod-init)))
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
