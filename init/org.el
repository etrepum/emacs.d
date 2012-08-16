;; org-mode

(add-hook
 'org-mode-hook
 (lambda ()
   (auto-revert-mode 1) ;; we may be editing org-mode in >1 editor
   (local-set-key (kbd "C-c s") 'org-sort)
   (local-set-key (kbd "C-c b") 'org-ido-switchb)
   (local-set-key
    (kbd "C-c v")
    (lambda () ;; Toggle the visibility of blocked TODOs
      (interactive)
      (setq org-agenda-dim-blocked-tasks
            (if (eq org-agenda-dim-blocked-tasks nil)
                'invisible nil))))))

(setq org-agenda-custom-commands
      '(("vc" "View @COMPUTER" tags "+TODO=\"TODO\"+\@COMPUTER" nil)
        ("ve" "View @ERRAND"   tags "+TODO=\"TODO\"+\@ERRAND"   nil)
        ("vp" "View @PHONE"    tags "+TODO=\"TODO\"+\@PHONE"    nil)
        ("vr" "View @READ"     tags "+TODO=\"TODO\"+\@READ"     nil)
        ("vs" "View @SHOP"     tags "+TODO=\"TODO\"+\@SHOP"     nil)
        ("vw" "View @WORK"     tags "+TODO=\"TODO\"+\@WORK"     nil))
      org-agenda-dim-blocked-tasks 'invisible
      org-agenda-files '("~/org")
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-deadline-prewarning-if-scheduled t
      org-agenda-skip-scheduled-if-done t
      org-agenda-todo-ignore-deadlines 'far
      org-agenda-todo-ignore-scheduled 'all
      org-archive-location "~/.emacs.d/org-archive/%s::"
      org-babel-load-languages '((ditaa . t) (dot . t) (ruby . t) (clojure . t)
                                 (python . t) (sh . t) (emacs-lisp . t))
      org-capture-templates '(("t" "Todo" entry
                               (file "~/org/inbox.org")
                               "* TODO %?" CAPTURED %u))
      org-clock-idle-time 15
      org-completion-use-ido t
      org-default-notes-file "~/org/inbox.org"
      org-directory "~/org"
      org-enable-priority-commands nil
      org-enforce-todo-checkbox-dependencies t
      org-enforce-todo-dependencies t
      org-export-latex-tables-centered t
      org-hide-leading-stars t
      org-mobile-directory "~/Dropbox/MobileOrg"
      org-mobile-inbox-for-pull "~/org/from-mobile.org"
      org-mobile-use-encryption t
      org-log-done 'time
      org-log-into-drawer t
      org-log-repeat 'time
      org-modules '(org-bbdb
                    org-bibtex
                    org-crypt
                    org-docview
                    org-gnus
                    org-info
                    org-jsinfo
                    org-habit
                    org-irc
                    org-mew
                    org-mhe
                    org-rmail
                    org-vm
                    org-wl
                    org-w3m)
      org-odd-levels-only t
      org-outline-path-complete-in-steps nil
      org-refile-allow-creating-parent-nodes 'confirm
      org-refile-use-outline-path 'file
      org-refile-targets '((nil :maxlevel . 3)
                           (org-agenda-files :maxlevel . 1))
      org-return-follows-link t
      org-src-tab-acts-natively t
      org-src-fontify-natively t
      org-src-window-setup 'current-window
      org-stuck-projects '("+TODO=\"PROJ\"" ("TODO") nil "")
      org-tag-alist '(("@COMPUTER" . ?c)
                      ("@ERRAND"   . ?e)
                      ("@HOME"     . ?h)
                      ("@PHONE"    . ?p)
                      ("@READ"     . ?r)
                      ("@SHOP"     . ?s)
                      ("@WORK"     . ?w))
      org-todo-keywords '((sequence "PROJ(p!)" "TODO(t!)"
                                    "|"
                                    "DONE(d!)")
                          (sequence "|"
                                    "SKIP(s@)"))
      org-todo-repeat-to-state "TODO"
      org-use-sub-superscripts '{})

(define-key global-map (kbd "C-c a") 'org-agenda)
(define-key global-map (kbd "C-c c") 'org-capture)
