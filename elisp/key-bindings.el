;;; key-bindings.el -*- lexical-binding: t -*-

(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq mac-control-modifier 'control)
(setq ns-right-alternate-modifier nil)

(straight-use-package 'which-key)
(which-key-setup-minibuffer)
(setq which-key-popup-type 'minibuffer)
(which-key-mode)

(provide 'key-bindings)
