;;; init-dev.el -*- lexical-binding: t -*-

;; Auto complete with Company
(straight-use-package 'company-mode)
(add-hook 'after-init-hook 'global-company-mode)

;; Syntax Checking
(straight-use-package 'flycheck)

;; Pair all the things
(electric-pair-mode +1)

;; magic
(straight-use-package 'magit)

;; Projectile
(straight-use-package 'projectile)
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;; Single-buffer text search (replacing lsearch)
(straight-use-package 'ctrlf)
(ctrlf-mode +1)

(provide 'init-dev)
