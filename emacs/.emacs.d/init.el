(let ((minver 24))
  (unless (>= emacs-major-version minver)
    (error "This config file requires Emacs version v%s or higher." minver)))

(setq temporary-file-directory "~/.emacs.d/tmp")
(setq find-function-C-source-directory "~/devel/tools/emacs/src")

;; Set path to dependencies
(setq lisp-dir
      (expand-file-name "lisp" user-emacs-directory))
(add-to-list 'load-path lisp-dir)

(setq custom-file "~/.emacs.d/lisp/custom.el")
(if (file-exists-p custom-file)
    (load-file custom-file))

(require 'setup-packages)
(require 'setup-defaults)
(require 'setup-defuns)
(require 'setup-keybindings)

;; BEGIN move this to a setup-projectile.el
(projectile-global-mode)
(setq projectile-enable-caching t)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
;; END move this to a setup-projectile.el

;; START hooks (require 'setup-hooks)
(add-hook 'after-init-hook 'global-undo-tree-mode)
(add-hook 'after-init-hook 'global-company-mode)

(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
(add-hook 'ielm-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-mode-hook             #'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
(add-hook 'scheme-mode-hook           #'enable-paredit-mode)

(add-hook 'emacs-lisp-mode-hook       #'rainbow-delimiters-mode)

(defun my-coding-hook ()
  (make-local-variable 'column-number-mode)
  (column-number-mode t)
  (highlight-parentheses-mode t)
  (if window-system (hl-line-mode t))
  (idle-highlight-mode t))
(add-hook 'emacs-lisp-mode-hook 'my-coding-hook)
;; END hooks

;; START SETUP helm
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
;; END SETUP helm

;; (add-hook 'after-init-hook (lambda () (load-theme 'tango-dark t)))

;; BEGIN Setup Odin
(add-to-list 'load-path "~/.emacs.d/elpaca/repos/odin-mode")
(add-to-list 'load-path "~/devel/tools/langs/ols")

(require 'odin-mode)

;; END Setup Odin

;; BEGIN Setup zig
(use-package eglot
  :ensure t
	:hook
	(zig-mode . eglot-ensure)
  ((odin-mode . eglot-ensure))
	:config
	(setq eglot-autoshutdown t)
  (add-to-list 'eglot-server-programs '(odin-mode . ("ols")))
	(add-to-list 'eglot-server-programs '(zig-mode . ("zls"))))
;; END Setup zig
