;;; lang-haskell.el -*- lexical-binding: t -*-

;; --------- Haskell Mode
(straight-use-package 'haskell-mode)

(custom-set-variables
 '(haskell-stylish-on-save t))

;; --------- Haskell Language Server
;; LSP setup currently only used in HLS. Move out of this file if used for
;; Clojure or anything else in the future...
(straight-use-package 'lsp-mode)
(straight-use-package 'lsp-ui)

;; You may remap xref-find-{definitions,references} (bound to M-. M-? by default):
;; (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
;; (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

(straight-use-package 'lsp-haskell)

(setq lsp-keymap-prefix "C-c l")

;; Code action suggestions are mostly stupid and wrong
(setq lsp-ui-sideline-show-code-actions nil)
(setq lsp-modeline-code-actions-enable nil)

(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)
(add-hook 'lsp-mode #'lsp-enable-which-key-integration)

(provide 'lang-haskell)
