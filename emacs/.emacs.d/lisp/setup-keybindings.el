(require 'view)
;; Enter view-mode for read-only files
(setq view-read-only t)
(define-key view-mode-map "n" 'next-line)
(define-key view-mode-map "p" 'previous-line)
(define-key view-mode-map "j" 'next-line)
(define-key view-mode-map "k" 'previous-line)

(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-x C-m") 'smex)

(global-set-key (kbd "<f12>") 'sr-speedbar-toggle)


;; Expand region (increases selected region by semantic units)
(global-set-key (kbd "C-'") 'er/expand-region)


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
(global-set-key [f11] 'toggle-fullscreen)


;; Use shell-like backspace C-h, rebind help to F1
(define-key key-translation-map [?\C-h] [?\C-?])

(global-set-key (kbd "<f1>") 'help-command)


;; Transpose stuff with M-t
(global-unset-key (kbd "M-t")) ;; which used to be transpose-words
(global-set-key (kbd "M-t w") 'transpose-words)
(global-set-key (kbd "M-t s") 'transpose-sexps)
(global-set-key (kbd "M-t p") 'transpose-params)


;; Use M-w for copy-line if no active region
(global-set-key (kbd "M-w") 'save-region-or-current-line)
(global-set-key (kbd "C-w") 'kill-region-or-current-line)
(global-set-key (kbd "M-S-d") 'duplicate-line)


(global-set-key [f12] 'neotree-toggle)
(global-set-key (kbd "ESC <right>") 'paredit-forward-slurp-sexp)
(global-set-key (kbd "ESC <left>") 'paredit-backward-barf-sexp)

(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))
(global-set-key (kbd "<left>") 'previous-buffer)
(global-set-key (kbd "<right>") 'next-buffer)

;; Shortcuts for move-text (installed thru melpa)
(global-set-key (kbd "C-x p") 'move-text-up)
(global-set-key (kbd "C-x n") 'move-text-down)

;;(global-unset-key (kbd "C-x C-o"))
(global-set-key (kbd "C-x C-o") 'ffip)

(provide 'setup-keybindings)
