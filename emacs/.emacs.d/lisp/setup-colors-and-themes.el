;; (require 'moe-theme)
;; (add-hook 'after-init-hook (lambda ()
;;                              (add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/moe-theme-20150815.1956")
;;                              ;;(load-theme 'moe-light t)
;;                              (load-theme 'moe-dark t)
;;                              (moe-theme-set-color 'green)))

(add-hook 'prog-mode-hook  'rainbow-delimiters-mode)

(provide 'setup-colors-and-themes)
