(require 'package)

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

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
                      exec-path-from-shell
                      helm
                      idle-highlight-mode
                      ido-ubiquitous
                      magit
                      multiple-cursors
                      projectile
                      rainbow-delimiters
                      slime
                      smex
                      solarized-theme
                      starter-kit
                      starter-kit-lisp
                      tagedit ;; edit html tags like sexps
                      undo-tree
                      yasnippet
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup-packages)
