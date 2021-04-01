;;; Comment

;; Emacs config with minimalism and speed in mind.
;; No packages I don't heavily use.
;; No shananigans.

;; WIP: This configuration is an active work in progress!
;; Use cases for Emacs:

;; TODO

;; - lsp key bindings
;; - Org Mode
;;   - Dev Journal
;;   - Task Management / Agenda
;;   - Babel (Literate Programming + Interactive Testing of Code Snippets)

;; ---------- Package Management ----------
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

;; Load path for local packages
(add-to-list 'load-path "~/.emacs.d/elisp/")

(require 'init-dev)
(require 'init-help)
(require 'init-ui)
(require 'key-bindings)
(require 'lang-clojure)
(require 'lang-haskell)
(require 'lang-lisp)
