(let ((minver 23))
  (unless (>= emacs-major-version minver)
    (error "This config file requires Emacs version v%s or higher." minver)))

(setq user-full-name "Felipe Bueno")
(setq user-mail-address "bueno.felipe@gmail.com")

;; Set path to dependencies
(setq site-lisp-dir
      (expand-file-name "site-lisp" user-emacs-directory))

(setq lisp-dir
      (expand-file-name "lisp" user-emacs-directory))

(add-to-list 'load-path site-lisp-dir)
(add-to-list 'load-path lisp-dir)

(require 'setup-packages)
(require 'setup-defaults)
(require 'setup-defuns)
(require 'setup-hooks)
(require 'setup-keybindings)

(require 'setup-eshell)
(require 'setup-org)
;;(require 'setup-java)
;;(require 'setup-android)


;; OSX specific settings
(when (eq system-type 'darwin)
  (require 'setup-osx))

(require 'server)
(unless (server-running-p)
  (server-start))
