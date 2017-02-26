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
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(custom-safe-themes
   (quote
    ("71ecffba18621354a1be303687f33b84788e13f40141580fa81e7840752d31bf" "561ba4316ba42fe75bc07a907647caa55fc883749ee4f8f280a29516525fc9e8" "88cac3cdd1edc9e90074d8119cc9b14764b5e7e9944d92a582406c9e67bdacdc" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "c7e8605c82b636fc489340e8276a3983745891e18e77440bbae305d1b5af9201" default)))
 '(dired-use-ls-dired t)
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-mode t)
 '(erc-autojoin-channels-alist (quote (("freenode.net" "#kawa" "#scheme"))))
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
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(inhibit-startup-screen t)
 '(line-number-mode nil)
 '(lua-indent-level 2)
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(scroll-conservatively 101)
 '(send-mail-function (quote mailclient-send-it))
 '(show-trailing-whitespace t)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sr-speedbar-right-side nil)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(term-input-ignoredups t)
 '(truncate-lines t)
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#dc322f")
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
     (360 . "#268bd2"))))
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

(provide 'custom)
