;; (require 'moe-theme)
;; (add-hook 'after-init-hook (lambda ()
;;                              (add-to-list 'custom-theme-load-path "~/.emacs.d/elpa/moe-theme-20150815.1956")
;;                              ;;(load-theme 'moe-light t)
;;                              (load-theme 'moe-dark t)
;;                              (moe-theme-set-color 'green)))

(defadvice load-theme
  (before theme-dont-propagate activate)
  (mapcar #'disable-theme custom-enabled-themes))

;; (add-hook 'after-init-hook
;;           (lambda () (load-theme 'solarized-light t)))

(add-hook 'prog-mode-hook  'rainbow-delimiters-mode)

(provide 'setup-colors-and-themes)
