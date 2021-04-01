;;; lang-haskell.el -*- lexical-binding: t -*-

(straight-use-package 'haskell-mode)

;; LSP setup currently only used in HLS. Move out of this file if used for
;; Clojure or anything else in the future...
(straight-use-package 'lsp-mode)
(straight-use-package 'lsp-ui)

;; You may remap xref-find-{definitions,references} (bound to M-. M-? by default):
(define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
(define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references)

(setq lsp-ui-peek-enable t)
(setq lsp-ui-doc-enable t)
(setq lsp-ui-doc-show-with-mouse 1)

(straight-use-package 'lsp-haskell)

(add-hook 'haskell-mode-hook #'lsp)
(add-hook 'haskell-literate-mode-hook #'lsp)

(provide 'lang-haskell)
