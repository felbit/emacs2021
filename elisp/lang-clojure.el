;;; lang-clojure.el

(straight-use-package 'clojure-mode)
(straight-use-package 'cider)
;;(straight-use-package 'paredit)
(straight-use-package 'clj-refactor)
(straight-use-package 'cider-hydra)
(straight-use-package 'flycheck-clj-kondo)

(defun felbit/clojure-mode-hook ()
  (clj-refactor-mode 1)
  (cider-hydra-mode 1)
  ;;(paredit-mode 1)
  (cljr-add-keybindings-with-prefix "C-c C-r"))
(add-hook 'clojure-mode-hook #'felbit/clojure-mode-hook)

;; Restrict Clojure docstrings to a width of max 70 (-1) columns
(setq clojure-docstring-fill-column 69)

;; Save time and sort namespaces correctly for me
(defun joncol/clojure-mode-before-save-hook ()
  "Sort namespaces automatically before saving a Clojure file."
  (when (eq major-mode 'clojure-mode)
    (clojure-sort-ns)))
(add-hook 'before-save-hook #'joncol/clojure-mode-before-save-hook)

;; LSP-Clojure for Code Lens
(straight-use-package 'lsp-mode)
(add-hook 'clojure-mode-hook 'lsp)
(setq lsp-lens-enable t)

(provide 'lang-clojure)
