(add-hook 'after-init-hook 'cyberpunk-init)
(add-hook 'after-init-hook 'global-undo-tree-mode)
(add-hook 'after-init-hook 'yas-global-mode)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'prog-mode-hook  'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook  'rainbow-identifiers-mode)

;; Clojure
(add-hook 'cider-mode-hook 'cider-turn-on-eldoc-mode)
(add-hook 'cider-repl-mode-hook 'paredit-mode)

(provide 'setup-hooks)
