;; whitespace - because it's evil

(setq column-number-mode t
      indicate-empty-lines t
      truncate-lines t)
(setq whitespace-action '(auto-cleanup)
      whitespace-style '(face tabs trailing lines-tail indentation empty))
(add-hook-to-modes code-modes 'whitespace-mode)
(setq-default indent-tabs-mode nil)
