(require 'package)

(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))

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
                      company-c-headers
                      ctags-update
                      cyberpunk-theme
                      dash
                      dired-rainbow
                      elpy
                      f
                      find-file-in-project
                      flycheck
                      ggtags
                      helm
                      idle-highlight-mode
                      ido-ubiquitous
                      magit
                      markdown-mode+
                      moe-theme
                      move-text
                      multiple-cursors
                      paredit
                      pkg-info
                      projectile
                      pyvenv
                      rainbow-delimiters
                      smex
                      sotclojure
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
