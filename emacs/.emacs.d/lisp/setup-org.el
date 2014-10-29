;; Toggle inline images
(add-hook 'org-mode-hook
           (lambda ()
             (local-set-key (kbd "M-i") 'org-toggle-inline-images)))

;; (run-at-time "00:59" 3600 'org-save-all-org-buffers)

(setq org-special-ctrl-a/e t)
(setq org-special-ctrl-k t)

(provide 'setup-org)
