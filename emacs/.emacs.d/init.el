(let ((minver 24))
  (unless (>= emacs-major-version minver)
    (error "This config file requires Emacs version v%s or higher." minver)))

(setq user-full-name "Felipe Bueno")
(setq user-mail-address "bueno.felipe@gmail.com")

(setq temporary-file-directory "~/.emacs.d/tmp")

;; Set path to dependencies
(setq lisp-dir
      (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path lisp-dir)

(require 'setup-packages)
(require 'setup-defaults)
(require 'setup-hooks)

(require 'setup-defuns)
(require 'setup-keybindings)

(require 'setup-eshell)
(require 'setup-org)

(require 'setup-js)
(require 'setup-clojure)

(require 'setup-helm)



;; BEGIN lua-mode things (move it to a setup-lua.el file)
(add-hook 'lua-mode-hook 'smartparens-mode)
;; END lua-mode




;; BEGIN move this to a setup-flx-ido.el
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)
(setq ido-enable-flex-matching t) ;; disable ido faces to see flx highlights.
(setq ido-use-faces nil)
;; END move this to a setup-flx-ido.el


;; BEGIN move this to a setup-projectile.el
(projectile-global-mode)
(setq projectile-enable-caching t)
;; END move this to a setup-projectile.el






(require 'setup-scratch-buffer)

(setq custom-file "~/.emacs.d/lisp/custom.el")
(if (file-exists-p custom-file)
    (load-file custom-file))

(require 'setup-colors-and-themes)
;;; init.el ends here
