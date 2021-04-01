;;; lang-clojure.el

(straight-use-package 'clojure-mode)
(straight-use-package 'cider)
(straight-use-package 'clj-refactor)
(straight-use-package 'cider-hydra)
(straight-use-package 'flycheck-clj-kondo)

(defun felbit/clojure-mode-hook ()
  (clj-refactor-mode 1)
  (cider-hydra-mode 1)
  (cljr-add-keybindings-with-prefix "C-c C-r"))

(add-hook 'clojure-mode-hook #'felbit/clojure-mode-hook)

(provide 'lang-clojure)
