;;; init.el -*- lexical-binding: t -*-

;;; Comment

;; Emacs config with minimalism and speed in mind.
;; No packages I don't heavily use.
;; No shananigans.

;; WIP: This configuration is an active work in progress!
;; Use cases for Emacs:
;; - Clojure Dev
;; - Haskell Dev
;; - Rust Dev
;; - Documentation via Org
;; - Task Management (Org)
;; - Git (magit)

;; TODO:
;; - lsp key bindings
;; - Org Mode
;;   - Dev Journal
;;   - Task Management / Agenda
;;   - Babel (Literate Programming + Interactive Testing of Code Snippets)

;; Using straight.el instead package.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; set exec-path to shell path
(straight-use-package 'exec-path-from-shell)
(exec-path-from-shell-initialize)


(add-to-list 'load-path
             (expand-file-name "elisp" user-emacs-directory))

(require 'init-dev)
(require 'init-help)
(require 'init-ui)
(require 'key-bindings)
(require 'lang-clojure)
(require 'lang-haskell)
(require 'lang-lisp)

;; unsorted stuff

;; Keep backup files and auto-save files in the backups directory
(setq backup-directory-alist '(("." . "~/.emacs.d/backup"))
    backup-by-copying t    ; Don't delink hardlinks
    version-control t      ; Use version numbers on backups
    delete-old-versions t  ; Automatically delete excess backups
    kept-new-versions 20   ; how many of the newest versions to keep
    kept-old-versions 5)   ; and how many of the old


(setq custom-file (concat user-emacs-directory "custom.el"))
(load custom-file 'noerror)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Selectrum is a better solution for incremental narrowing in Emacs, replacing
;; Helm, Ivy, and Ido.
(straight-use-package 'selectrum)
(selectrum-mode +1)

;; make selectrum more intelligent
(straight-use-package 'prescient)
(straight-use-package 'selectrum-prescient)
(selectrum-prescient-mode +1)

;; Make the `yes or no` prompts shorter
(defalias 'yes-or-no-p 'y-or-n-p)

;; replace highlighted text
(delete-selection-mode 1)

;; Neotree
(straight-use-package 'neotree)
(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; Thanks for watching!
;;; init.el ends here.
