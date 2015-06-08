(when (package-installed-p 'ace-jump-mode)
  (require 'ace-jump-mode)
  (define-key global-map (kbd "C-c SPC") 'ace-jump-mode))

