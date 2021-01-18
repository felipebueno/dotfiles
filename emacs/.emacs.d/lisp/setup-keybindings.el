(require 'view)
;; Enter view-mode for read-only files
(setq view-read-only t)
(define-key view-mode-map "n" 'next-line)
(define-key view-mode-map "p" 'previous-line)
(define-key view-mode-map "j" 'next-line)
(define-key view-mode-map "k" 'previous-line)

(global-set-key (kbd "C-a") 'smart-beginning-of-line)


;; Edit init.el
(global-set-key (kbd "<f5>")
                (lambda ()
                  (interactive)
                  (find-file (expand-file-name user-init-file user-emacs-directory))))


;; https://github.com/magnars/multiple-cursors.el
;; From active region to multiple cursors:
(global-set-key (kbd "<f6>") 'mc/mark-next-like-this)
(global-set-key (kbd "<f7>") 'mc/mark-previous-like-this)
(global-set-key (kbd "<f8>") 'mc/mark-all-like-this)


;; Toggle fullscreen
(global-set-key [f11] 'toggle-frame-fullscreen)


;; Use shell-like backspace C-h, rebind help to F1
(define-key key-translation-map [?\C-h] [?\C-?])
(global-set-key (kbd "<f1>") 'help-command)
(global-set-key (kbd "M-h") 'backward-kill-word)
(global-set-key (kbd "C-M-h") 'backward-kill-word)

;; stuff with M-t
(global-unset-key (kbd "M-t")) ;; which used to be transpose-words
(global-set-key (kbd "M-t w") 'transpose-words)
(global-set-key (kbd "M-t s") 'transpose-sexps)


;; Use M-w for copy-line if no active region
(global-set-key (kbd "M-w") 'save-region-or-current-line)
;;(global-set-key (kbd "C-w") 'kill-region-or-current-line)
(global-set-key (kbd "C-S-d") 'duplicate-line)

(global-set-key (kbd "C-w") 'er/expand-region)
(global-set-key (kbd "C-M-w") 'er/contract-region)

(global-set-key (kbd "ESC <right>") 'paredit-forward-slurp-sexp)
(global-set-key (kbd "ESC <left>") 'paredit-forward-barf-sexp)

(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))
(global-set-key (kbd "<left>") 'shrink-window-horizontally)
(global-set-key (kbd "<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "<up>") 'shrink-window)
(global-set-key (kbd "<down>") 'enlarge-window)

;; Shortcuts for move-text (installed thru melpa)
(global-set-key (kbd "C-S-p") 'move-text-up)
(global-set-key (kbd "C-S-n") 'move-text-down)

;;(global-unset-key (kbd "C-x C-o"))
(global-set-key (kbd "C-x C-o") 'projectile-find-file)

(global-set-key (kbd "C-o") 'open-next-line)
(global-set-key (kbd "M-o") 'open-previous-line)
(global-set-key [C-S-return]   'open-next-line)
(global-set-key [S-return] 'open-previous-line)

;; Autoindent open-*-lines
(defvar newline-and-indent t
  "Modify the behavior of the open-*-line functions to cause them to autoindent.")

(provide 'setup-keybindings)
