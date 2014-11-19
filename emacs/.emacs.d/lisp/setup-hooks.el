(add-hook 'after-init-hook 'cyberpunk-init)
(add-hook 'after-init-hook 'global-undo-tree-mode)
(add-hook 'after-init-hook 'yas-global-mode)
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook #'rainbow-delimiters-mode)

(provide 'setup-hooks)
