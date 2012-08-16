;; ido

(require 'ido)
(ido-mode t)
(setq ido-auto-merge-work-directories-length nil
      ido-create-new-buffer 'always
      ido-enable-flex-matching t
      ido-enable-prefix nil
      ido-handle-duplicate-virtual-buffers 2
      ido-max-prospects 10
      ido-use-filename-at-point 'guess
      ido-use-virtual-buffers t)

;; not specifically ido but still handy short-cut
(defalias 'yes-or-no-p 'y-or-n-p)
