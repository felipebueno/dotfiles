(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

(defvar my-packages
  '(
		use-package
    better-defaults
    expand-region
    idle-highlight-mode
    magit
    multiple-cursors
    paredit
    undo-tree
    rainbow-delimiters
    highlight-parentheses
    web-mode
    helm
    go-mode
    eglot
    avy ;; TODO Aprender a usar
    which-key ;; TODO Aprender a usar direito
    helm-xref
    flycheck
    yasnippet
    zig-mode
    rg ;; ripgrep https://github.com/dajva/rg.el
    w3m
    helm-w3m
    )
  )

(when (cl-find-if-not #'package-installed-p my-packages)
  (package-refresh-contents)
  (mapc #'package-install my-packages))

;; TODO Move config below to the correct place
;; sample `helm' configuration use https://github.com/emacs-helm/helm/ for details
(helm-mode)
(require 'helm-xref)
(define-key global-map [remap find-file] #'helm-find-files)
(define-key global-map [remap execute-extended-command] #'helm-M-x)
(define-key global-map [remap switch-to-buffer] #'helm-mini)

(which-key-mode)

(use-package projectile :ensure t) ;; project management
(use-package yasnippet
  :ensure t
  :config (yas-global-mode)) ;; snipets

(use-package company :ensure t) ;; Auto-complete

(use-package dap-mode :ensure t)

(provide 'setup-packages)
