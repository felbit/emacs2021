;;; key-bindings.el -*- lexical-binding: t -*-

;; no tabs - never
(setq-default indent-tabs-mode nil)

;; Mac Keyboard as Emacs Keyboard
(setq mac-option-modifier 'none)
(setq mac-command-modifier 'meta)
(setq mac-control-modifier 'control)

;; WhichKey?!
(straight-use-package 'which-key)
(which-key-setup-minibuffer)
(setq which-key-popup-type 'minibuffer)
(which-key-mode)

;; Expand Region
(straight-use-package 'expand-region)
(global-set-key (kbd "s-'") 'er/expand-region)
(global-set-key (kbd "s-\"") 'er/contract-region)

;; Jump reasonably
(straight-use-package 'crux)
(global-set-key (kbd "C-a") 'crux-move-beginning-of-line)

(provide 'key-bindings)
