(add-hook 'after-init-hook (lambda () (load-theme 'cyberpunk t)))
(add-hook 'after-init-hook 'global-undo-tree-mode)
;;(add-hook 'after-init-hook '(lambda () (yas-global-mode 1)))
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'prog-mode-hook  'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook  'rainbow-identifiers-mode)

;; Clojure
;;(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)
;;(require 'clj-refactor)
(add-hook 'clojure-mode-hook 'clj-refactor-mode)
(provide 'setup-hooks)
