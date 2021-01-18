(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
                      better-defaults
                      expand-region
                      company
                      elisp-slime-nav
                      flx-ido
                      ido-yes-or-no
                      idle-highlight-mode
                      lua-mode
                      magit
                      multiple-cursors
                      paredit
                      projectile
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
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup-packages)
