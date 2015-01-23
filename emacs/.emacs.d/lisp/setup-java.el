(require 'eclim)
(global-eclim-mode)
(require 'eclimd)

(custom-set-variables
 '(eclim-eclipse-dirs '("~/devel/tools/eclipse"))
 '(eclim-executable "~/devel/tools/eclipse/eclim")
 '(eclimd-default-workspace "~/devel/github/sneerteam/sneer"))

(setq help-at-pt-display-when-idle t)
(setq help-at-pt-timer-delay 0.1)
(help-at-pt-set-timer)

(require 'company-emacs-eclim)
(company-emacs-eclim-setup)

(provide 'setup-java)
