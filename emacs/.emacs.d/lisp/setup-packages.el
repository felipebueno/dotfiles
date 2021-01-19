;; (require 'package)

;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/"))

;; (package-initialize)

;; (when (not package-archive-contents)
;;   (package-refresh-contents))

(condition-case nil
    (require 'use-package)
  (file-error
   (require 'package)
   (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
   (package-initialize)
   (package-refresh-contents)
   (package-install 'use-package)
   (require 'use-package)))

(defvar my-packages '(
                      better-defaults
                      expand-region
                      elisp-slime-nav
                      flx-ido
                      ido-yes-or-no
                      idle-highlight-mode
                      lua-mode
                      magit
                      multiple-cursors
                      paredit
                      scpaste
                      smex
                      undo-tree
                      rainbow-delimiters
                      highlight-parentheses
                      cyberpunk-theme
                      material-theme
                      ample-theme
                      ;; START python stuff
                      elpy ;; Emacs Lisp Python Environment
                      ;; END python stuff
                      ;; START php stuff
                      php-mode
                      web-mode
                      ;; END php stuff
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; LSP stuff
(use-package lsp-mode :ensure t)
(use-package lsp-ui :ensure t) ;; UI for LSP

(use-package projectile :ensure t) ;; project management
(use-package yasnippet
  :ensure t
  :config (yas-global-mode)) ;; snipets

(use-package company :ensure t) ;; Auto-complete

;; Dart stuff
(use-package lsp-dart
  :ensure t
  :hook (dart-mode . lsp))

(provide 'setup-packages)
