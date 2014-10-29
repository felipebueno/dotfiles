(defun cyberpunk-init ()
  (load-theme 'cyberpunk))

(defun toggle-fullscreen ()
  "Toggle full screen on X11"
  (interactive)
  (when (eq window-system 'x)
    (set-frame-parameter
     nil 'fullscreen
     (when (not (frame-parameter nil 'fullscreen)) 'fullboth))))

(defun google ()
  "Google the selected region if any, display a query prompt otherwise."
  (interactive)
  (browse-url
   (concat
    "http://www.google.com/search?ie=utf-8&oe=utf-8&q="
    (url-hexify-string (if mark-active
                           (buffer-substring (region-beginning) (region-end))
                         (read-string "Google: "))))))

(defun copy-to-end-of-line ()
  (interactive)
  (kill-ring-save (point)
                  (line-end-position))
  (message "Copied to end of line"))

(defun kill-whole-lines (arg)
  "Kill lines (as many as prefix argument)"
  (interactive "p")
  (kill-region (line-beginning-position)
               (line-beginning-position (+ 1 arg)))
  (message "%d line%s killed" arg (if (= 1 arg) "" "s")))

(defun copy-whole-lines (arg)
  "Copy lines (as many as prefix argument) in the kill ring"
  (interactive "p")
  (kill-ring-save (line-beginning-position)
                  (line-beginning-position (+ 1 arg)))
  (message "%d line%s copied" arg (if (= 1 arg) "" "s")))

(defun copy-line (arg)
  "Copy to end of line, or as many lines as prefix argument"
  (interactive "P")
  (if (null arg)
      (copy-to-end-of-line)
    (copy-whole-lines (prefix-numeric-value arg))))

(defun save-region-or-current-line (arg)
  (interactive "P")
  (if (region-active-p)
      (kill-ring-save (region-beginning) (region-end))
    (copy-whole-lines 1)))

(defun kill-region-or-current-line (arg)
  (interactive "P")
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (kill-whole-lines 1)))

(defun smart-beggining-of-line ()
  (interactive)
  (beginning-of-line-text))

(defun duplicate-line ()
  (interactive "P")
  (save-region-or-current-line)
  (yank))

(provide 'setup-defuns)
