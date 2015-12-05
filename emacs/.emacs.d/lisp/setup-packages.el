(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; (add-to-list 'package-archives
;;              '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(better-defaults
                      cider
                      clj-refactor ;; https://github.com/clojure-emacs/clj-refactor.el/issues/184#issuecomment-130728613
                      clojure-mode
                      clojure-mode-extra-font-locking
                      clojure-snippets
                      company
                      cyberpunk-theme
                      dockerfile-mode
                      editorconfig
                      exec-path-from-shell
                      flycheck
                      flycheck-clojure
                      flycheck-color-mode-line
                      idle-highlight-mode
                      ido-ubiquitous
                      js2-mode
                      ;;json-mode
                      magit
                      markdown-mode
                      multiple-cursors
                      projectile
                      rainbow-delimiters
                      react-snippets
                      smex
                      solarized-theme
                      starter-kit
                      starter-kit-lisp
                      tagedit ;; edit html tags like sexps
                      undo-tree
                      web-mode
                      yaml-mode
                      yasnippet
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup-packages)
