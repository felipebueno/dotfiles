(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(cider-prompt-for-symbol nil)
 '(cider-repl-history-file "~/.emacs.d/cider-history" t)
 '(cider-repl-result-prefix ";; => " t)
 '(cider-repl-wrap-history t t)
 '(company-idle-delay 0.2)
 '(company-minimum-prefix-length 1)
 '(company-tooltip-minimum-width 30)
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes '(default))
 '(dired-use-ls-dired t)
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(erc-autojoin-channels-alist '(("freenode.net" "#kawa" "#scheme")))
 '(erc-autojoin-mode t)
 '(erc-button-mode t)
 '(erc-fill-mode t)
 '(erc-irccontrols-mode t)
 '(erc-list-mode t)
 '(erc-match-mode t)
 '(erc-menu-mode t)
 '(erc-move-to-prompt-mode t)
 '(erc-netsplit-mode t)
 '(erc-networks-mode t)
 '(erc-noncommands-mode t)
 '(erc-pcomplete-mode t)
 '(erc-readonly-mode t)
 '(erc-ring-mode t)
 '(erc-stamp-mode t)
 '(erc-track-minor-mode t)
 '(erc-track-mode t)
 '(fci-rule-color "#383838")
 '(global-linum-mode t)
 '(hl-bg-colors
   '("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(idle-highlight-idle-time 0.1)
 '(inhibit-startup-screen t)
 '(ispell-dictionary nil)
 '(line-number-mode nil)
 '(lua-indent-level 2)
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(package-selected-packages
   '(sly-quicklisp sly-asdf sly zzz-to-char dap-mode helm-w3m w3m rg helm-xref which-key avy hydra yasnippet zig-mode exec-path-from-shell hover flycheck dart-mode dap-dlv-go dap-go go-mode web-mode use-package eglot gopls helm-projectile helm expand-region elpy material-theme highlight-parentheses highlight-paren highlight-paren-mode rainbow-delimiters undo-tree smex scpaste projectile paredit multiple-cursors magit lua-mode ido-yes-or-no idle-highlight-mode flx-ido company better-defaults))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(python-shell-interpreter "python3")
 '(safe-local-variable-values
   '((Base . 10)
     (Syntax . ANSI-Common-Lisp)
     (vc-prepare-patches-separately)
     (diff-add-log-use-relative-names . t)
     (vc-git-annotate-switches . "-w")))
 '(scroll-conservatively 101)
 '(send-mail-function 'mailclient-send-it)
 '(show-trailing-whitespace t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sr-speedbar-right-side nil)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(term-input-ignoredups t)
 '(truncate-lines t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2")))
 '(vc-annotate-very-old-color nil))

;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:family "Ubuntu Mono" :foundry "unknown" :slant normal :weight normal :height 180 :width normal))))
;;  '(eval-sexp-fu-flash ((t (:background "brightmagenta" :foreground "white" :weight bold))))
;;  '(rainbow-delimiters-depth-1-face ((t (:foreground "#ffa500"))))
;;  '(rainbow-delimiters-depth-7-face ((t (:foreground "Red"))))
;;  '(rainbow-delimiters-depth-9-face ((t (:foreground "selectedTextBackgroundColor"))))
;;  '(term ((t (:inherit default :background "#ffffff" :foreground "#000000"))))
;;  '(term-color-blue ((t (:background "color-39" :foreground "color-39")))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(idle-highlight ((t (:background "red" :weight bold)))))

(provide 'custom)
