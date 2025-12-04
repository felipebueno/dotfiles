(in-package :lem-user)

(add-hook *prompt-after-activate-hook*
                    (lambda ()
                                  (call-command 'lem/prompt-window::prompt-completion nil)))

(add-hook *prompt-deactivate-hook*
                    (lambda ()
                                  (lem/completion-mode:completion-end)))

(setf lem-core::*default-prompt-gravity* :top-display)
(setf lem/prompt-window::*fill-width* t)
