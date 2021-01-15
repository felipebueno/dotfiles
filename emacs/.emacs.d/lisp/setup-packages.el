(require 'package)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
                      better-defaults
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
                      ))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup-packages)
