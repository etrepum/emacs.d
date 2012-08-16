;; init
(mapcar
 (lambda (f) (load-file f))
 (file-expand-wildcards "~/.emacs.d/init/*.el"))

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (end-of-buffer)
      (eval-print-last-sexp))))
(setq el-get-git-shallow-clone t)
(mapcar
 (lambda (f) (add-to-list 'el-get-sources (el-get-read-recipe-file f)))
 (file-expand-wildcards "~/.emacs.d/recipes/*.rcp"))
(el-get 'sync (mapcar 'el-get-source-name el-get-sources))

;; custom
(setq custom-file (expand-file-name "~/.emacs.d/custom.el"))
(load custom-file 'noerror)
