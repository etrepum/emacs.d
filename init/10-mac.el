(when (and (window-system) (eq system-type 'darwin))
  (progn
    (set-frame-font "Menlo-13")
    (let ((path (shell-command-to-string ". ~/.zshrc; echo -n $PATH")))
      (setenv "PATH" path)
      (setq exec-path
            (append (split-string-and-unquote path ":") exec-path)))))
