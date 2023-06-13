(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(defvar my-packages '(
                      better-defaults
                      expand-region
                      elisp-slime-nav
                      idle-highlight-mode
                      magit
                      multiple-cursors
                      paredit
                      scpaste
                      undo-tree
                      rainbow-delimiters
                      highlight-parentheses
                      web-mode
                      helm
                      sly
                      eglot
                      go-mode
                      ))

(when (cl-find-if-not #'package-installed-p my-packages)
  (package-refresh-contents)
  (mapc #'package-install my-packages))

;; LSP stuff
(use-package lsp-mode
  :ensure t
  :defer t
  :hook (lsp-mode . (lambda ()
                      (let ((lsp-keymap-prefix "C-c l"))
                        (lsp-enable-which-key-integration))))
  :init
  (setq lsp-keep-workspace-alive nil
        lsp-signature-doc-lines 5
        lsp-idle-delay 0.5
        lsp-prefer-capf t
        lsp-client-packages nil)
  :config
  (define-key lsp-mode-map (kbd "C-c l") lsp-command-map))
;; (use-package lsp-ui :ensure t) ;; UI for LSP


(use-package projectile :ensure t) ;; project management
(use-package yasnippet
  :ensure t
  :config (yas-global-mode)) ;; snipets

(use-package company :ensure t) ;; Auto-complete

;; Dart stuff
(use-package lsp-dart
  :ensure t
  :hook (dart-mode . lsp))

;; C & C++ stuff
(add-hook 'c-mode-hook 'lsp)
(add-hook 'c++-mode-hook 'lsp)



(provide 'setup-packages)
