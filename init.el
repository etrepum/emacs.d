;; Enable MELPA
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;; Load init files
(mapcar
 (lambda (f) (load-file f))
 (file-expand-wildcards "~/.emacs.d/init/*.el"))

;; custom
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'noerror)

;; This will bootstrap a new emacs install
(defun mp-bootstrap ()
  (interactive)
  (package-refresh-contents)
  (mapc '(lambda (package)
	   (unless (package-installed-p package)
	     (package-install package)))
	'(ghc
	  erlang
	  go-mode
	  yaml-mode
	  rust-mode
	  company-ghc)))
