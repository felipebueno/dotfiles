(add-hook 'after-init-hook 'global-undo-tree-mode)
(add-hook 'after-init-hook '(lambda () (yas-global-mode 1)))
(add-hook 'after-init-hook 'global-company-mode)
(add-hook 'after-init-hook #'global-flycheck-mode)

(provide 'setup-hooks)
