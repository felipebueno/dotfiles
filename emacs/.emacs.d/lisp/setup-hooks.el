(add-hook 'after-init-hook 'cyberpunk-init)
(add-hook 'after-init-hook 'global-undo-tree-mode)
(add-hook 'after-init-hook 'yas-global-mode)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'prog-mode-hook  'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook  'rainbow-identifiers-mode)

(provide 'setup-hooks)
