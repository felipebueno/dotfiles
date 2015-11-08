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

(require 'setup-clojure)
;;(require 'setup-python)

(require 'setup-helm)
;;(require 'setup-ggtags)

(require 'setup-kawa)

(require 'setup-scratch-buffer)







;; use web-mode for .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js$" . web-mode))

;; http://www.flycheck.org/manual/latest/index.html
(require 'flycheck)

;; turn on flychecking globally
(add-hook 'after-init-hook #'global-flycheck-mode)

;; disable jshint since we prefer eslint checking

(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(javascript-jshint)))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; disable json-jsonlist checking for json files
(setq-default flycheck-disabled-checkers
              (append flycheck-disabled-checkers
                      '(json-jsonlist)))

;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)









(setq custom-file "~/.emacs.d/lisp/custom.el")
(if (file-exists-p custom-file)
    (load-file custom-file))

(require 'setup-colors-and-themes)

;;(toggle-frame-fullscreen)

