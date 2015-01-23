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

(require 'setup-defaults)
(require 'setup-packages)
(require 'setup-defuns)
(require 'setup-keybindings)
(require 'setup-hooks)
(require 'setup-scratch-buffer)

(require 'setup-eshell)
(require 'setup-org)

;;(require 'setup-helm)
;;(require 'setup-java)
;;(require 'setup-android)

;; OSX specific settings
(when (eq system-type 'darwin)
  (require 'setup-osx))

(require 'server)
(unless (server-running-p)
  (server-start))

;; Clojure stuff
(require 'clojure-mode)
(require 'eval-sexp-fu)
(put-clojure-indent 'match 1)
(put-clojure-indent 'fact 1)
(put-clojure-indent 'go-while-let 1)
(put-clojure-indent 'facts 1)
(put-clojure-indent 'tabular 1)
(put-clojure-indent 'while-let 1)
(put-clojure-indent 'go-trace 0)
(setq cider-stacktrace-fill-column 80)
(setq cider-repl-result-prefix ";; => ")
(setq cider-repl-history-file "~/.cider-nrepl_history")
