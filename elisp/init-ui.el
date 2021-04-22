;;; init-ui.el -*- lexical-binding: t -*-

;; get rid of all the clutter
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-default 'cursor-type 'bar)
(setq column-number-mode t)

(setq-default fill-column 80)

;; better M-x
(straight-use-package 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Themes
(straight-use-package 'solarized-theme)
(straight-use-package 'monokai-theme)
;;(load-theme 'solarized-light t)
(load-theme 'monokai t)

(setq inhibit-startup-message t)

(setq frame-inhibit-implied-resize t)

(straight-use-package 'doom-modeline)
(doom-modeline-mode 1)

(set-face-attribute 'default nil
		    :family "JetBrains Mono"
		    :height 140
		    :weight 'medium)
(set-face-attribute 'variable-pitch nil
		    :family "JetBrains Mono"
		    :height 1.0)
(set-face-attribute 'fixed-pitch nil
		    :family "JetBrains Mono"
		    :height 1.0)

;; get those fance ligatures right
(straight-use-package
 '(ligature :type git
	    :host github
	    :repo "mickeynp/ligature.el"))

(ligature-set-ligatures
 'prog-mode
 '("-|" "-~" "---" "-<<" "-<" "--" "->" "->>" "-->" "///" "/=" "/=="
   "/>" "//" "/*" "*>" "***" "*/" "<-" "<<-" "<=>" "<=" "<|" "<||"
   "<|||" "<|>" "<:" "<>" "<-<" "<<<" "<==" "<<=" "<=<" "<==>" "<-|"
   "<<" "<~>" "<=|" "<~~" "<~" "<$>" "<$" "<+>" "<+" "</>" "</" "<*"
   "<*>" "<->" "<!--" ":>" ":<" ":::" "::" ":?" ":?>" ":=" "::=" "=>>"
   "==>" "=/=" "=!=" "=>" "===" "=:=" "==" "!==" "!!" "!=" ">]" ">:"
   ">>-" ">>=" ">=>" ">>>" ">-" ">=" "&&&" "&&" "|||>" "||>" "|]"
   "|}" "|=>" "|->" "|=" "||-" "|-" "||=" "||" ".." ".?" ".=" ".-" "..<"
   "..." "+++" "+>" "++" "[||]" "[<" "[|" "{|" "??" "?." "?=" "?:" "##"
   "###" "####" "#[" "#{" "#=" "#!" "#:" "#_(" "#_" "#?" "#(" ";;" "_|_"
   "__" "~~" "~~>" "~>" "~-" "~@" "$>" "^=" "]#"))
;; Enables ligature checks globally in all buffers. You can also do it
;; per mode with `ligature-mode'.
(global-ligature-mode t)

;; Highlight TODO:s
(straight-use-package 'hl-todo)
(global-hl-todo-mode t)
(setq hl-todo-highlight-punctuation ":"
      hl-todo-keyword-faces
      `(("TODO"       warning bold)
        ("FIXME"      error bold)
        ("HACK"       font-lock-constant-face bold)
        ("REVIEW"     font-lock-keyword-face bold)
        ("NOTE"       success bold)
        ("DEPRECATED" font-lock-doc-face bold)))

;; I never ever want trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; better undo
(straight-use-package 'undo-tree)
(global-undo-tree-mode 1)

(provide 'init-ui)
