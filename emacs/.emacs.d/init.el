;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(let ((minver 24))
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
(require 'setup-hooks)

(require 'setup-defuns)
(require 'setup-keybindings)

(require 'setup-scratch-buffer)

(require 'setup-eshell)
(require 'setup-org)

(require 'server)
(unless (server-running-p)
  (server-start))

(require 'setup-clojure)

