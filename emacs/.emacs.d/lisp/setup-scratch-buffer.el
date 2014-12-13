(require 'paredit)

(defun fill-line-with-parens (x)
  "Fill the first line of Scratch buffer with colorful parens :)"
  (interactive)
  (let ((count 0)
        (dude 1))
    (while (< count (/ (window-width) x))
      (paredit-open-square)
      (setq count (1+ count)))
    (move-end-of-line nil)
    (setq fill-column (window-width))
    (center-line)
    (insert "\n")))

(setq initial-scratch-message (fill-line-with-parens 2.2))

(provide 'setup-scratch-buffer)
