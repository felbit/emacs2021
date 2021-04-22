;;; init-org.el --- Org-Mode config -*- lexical-binding: t -*-

(straight-use-package 'org)
(global-set-key "\C-ca" 'org-agenda)

(straight-use-package 'org-journal)
(setq org-journal-dir "~/Documents/Journal")

;; nicer indentation
(setq org-startup-indented t)
(setq org-edit-src-content-indentation 0)

(provide 'init-org)
