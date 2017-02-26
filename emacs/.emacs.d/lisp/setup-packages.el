(require 'package)

;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;;(add-to-list 'package-archives
;;             '("melpa" . "https://melpa.org/packages/"))

(add-to-list 'package-archives
             '("marmalade" . "https://marmalade-repo.org/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(
                      better-defaults
                      company
                      elisp-slime-nav
                      flx-ido
                      ido-ubiquitous
                      idle-highlight-mode
                      lua-mode
                      ;; magit ;; only for emacs 24.4 :(
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
