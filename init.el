;; Enable MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

;; Load init files
(mapcar
 (lambda (f) (load-file f))
 (file-expand-wildcards "~/.emacs.d/init/*.el"))

;; custom
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'noerror)

;; Tabs should die in a fire
(setq-default indent-tabs-mode nil)

;; This will bootstrap a new emacs install
(defun mp-bootstrap ()
  (interactive)
  (package-refresh-contents)
  (mapc #'(lambda (package)
	   (unless (package-installed-p package)
	     (package-install package)))
	'(haskell-mode
          hi2
          flycheck
          web-mode
          ;; not available in elpa yet
          ;; haskell-flycheck
	  erlang
	  go-mode
	  yaml-mode
	  rust-mode
	  company-ghc
	  ace-jump-mode
          hamlet-mode
          puppet-mode)))
