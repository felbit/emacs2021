;;; lang-lisp.el -*- lexical-binding: t -*-

;; General lisp support for Emacs Lisp, Clojure and Common Lisp

;; Playing with Parinfer as replacement for PerEdit
;; might also try Lispy?
(straight-use-package 'parinfer-rust-mode)
(setq parinfer-rust-auto-download t)              ; Auto-update parinfer-rust

(add-hook 'emacs-lisp-mode-hook 'parinfer-rust-mode)
(add-hook 'clojure-mode-hook 'parinfer-rust-mode)

(provide 'lang-lisp)
