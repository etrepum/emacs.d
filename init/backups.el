;; backups

(setq backup-by-copying t
      backup-directory-alist '(("." . "~/.emacs.d/backup"))
      delete-old-versions t
      kept-new-versions 128
      kept-old-versions 128
      version-control t)
