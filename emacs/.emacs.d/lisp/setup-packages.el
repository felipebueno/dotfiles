(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      paredit
                      clojure-mode
                      ;;clj-refactor
                      clojure-mode-extra-font-locking
                      cider
                      company
                      ido-ubiquitous
                      smex
                      projectile
                      rainbow-delimiters
                      starter-kit-lisp
                      cider-eval-sexp-fu
                      nrepl-eval-sexp-fu
                      ;; edit html tags like sexps
                      tagedit
                      magit
                      cyberpunk-theme
                      f
                      flycheck
                      helm
                      move-text
                      multiple-cursors
                      pkg-info
                      dash
                      find-file-in-project
                      idle-highlight-mode
                      undo-tree
                      yasnippet                      
                      ;; colorful parenthesis matching
                      rainbow-identifiers))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup-packages)
