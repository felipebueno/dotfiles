(setq source-directory "~/devel/src/emacs")

;; Enable mouse actions on terminal - https://bitheap.org/mouseterm/
(unless window-system
  (xterm-mouse-mode 1)
  (global-set-key [mouse-4] '(lambda ()
                               (interactive)
                               (scroll-down 1)))
  (global-set-key [mouse-5] '(lambda ()
                               (interactive)
                               (scroll-up 1))))

;; Enables the kill-ring to interact with the clipboard when running Emacs from a Mac OSX terminal (without losing full kill-ring functionality) https://github.com/wesen/emacs/blob/master/pbcopy.el
(require 'pbcopy)
(turn-on-pbcopy)

;; GC Optimization - https://github.com/lewang/flx#gc-optimization
(setq gc-cons-threshold 20000000)

;; Use Emacs terminfo, not system terminfo
(setq system-uses-terminfo nil)

(put 'narrow-to-region 'disabled nil)

(setq ring-bell-function #'ignore)

(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; Allow pasting selection outside of Emacs
(setq x-select-enable-clipboard t)

;; Auto refresh buffers
(global-auto-revert-mode 1)

;; Also auto refresh dired, but be quiet about it
(setq global-auto-revert-non-file-buffers t)
(setq auto-revert-verbose nil)

;; Show keystrokes in progress
(setq echo-keystrokes 0.1)

;; Move files to trash when deleting
(setq delete-by-moving-to-trash t)

;; Transparently open compressed files
(auto-compression-mode t)

;; Enable syntax highlighting for older Emacsen that have it off
(global-font-lock-mode t)

;; UTF-8 everywhere
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)

;; Lines should be 80 characters wide, not 72
(setq fill-column 80)

;; Save a list of recent files visited. (open recent file with C-x f)
(recentf-mode 1)
(setq recentf-max-saved-items 100) ;; just 20 is too recent

(setq eval-expression-print-level nil)

(when (fboundp 'winner-mode)
  (winner-mode 1))

(provide 'setup-defaults)
