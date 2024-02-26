(require 'move-text)

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
      (progn
        (kill-ring-save (region-beginning) (region-end))
        (message "Text copied"))
    (copy-whole-lines 1)))

(defun kill-region-or-current-line (arg)
  (interactive "P")
  (if (region-active-p)
      (kill-region (region-beginning) (region-end))
    (kill-whole-lines 1)))

(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

Move point to the first non-whitespace character on this line.
If point was already at that position, move point to beginning of line."
  (interactive)
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

(defun duplicate-line ()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))

;; Behave like vi's o command
(defun open-next-line (arg)
  "Move to the next line and then opens a line.
    See also `newline-and-indent'."
  (interactive "p")
  (end-of-line)
  (open-line arg)
  (forward-line 1)
  (when newline-and-indent
    (indent-according-to-mode)))

;; Behave like vi's O command
(defun open-previous-line (arg)
  "Open a new line before the current one.
     See also `newline-and-indent'."
  (interactive "p")
  (beginning-of-line)
  (open-line arg)
  (when newline-and-indent
    (indent-according-to-mode)))







;;; term-toggle.el --- Toggle to and from the *terminal* buffer   -*- lexical-binding: t; -*-
;;; Customizable Options:
(defgroup term-toggle nil
  "Quake style console toggle in current working directory.
Support toggle for shell, term, ansi-term, eshell and ielm."
  :prefix "term-toggle-"
  :prefix "tt-"
  :group 'applications)

(defcustom term-toggle-confirm-exit nil
  "Ask to confirm exit if there is a running bash process in terminal."
  :type 'boolean
  :group 'term-toggle)

(defcustom term-toggle-kill-buffer-on-process-exit t
  "Kill buffer when shell process has exited."
  :type 'boolean
  :group 'term-toggle)

(defcustom term-toggle-minimum-split-height 10
  "The minimum height of a splittable window"
  :type 'fixnum
  :group 'term-toggle)

(defcustom term-toggle-default-height 15
  "The default height of a splitted window."
  :type 'fixnum
  :group 'term-toggle)

;;; Internal functions and declarations

(defun tt--start-shell (shell name)
  (cond ((or (eq shell 'term) (eq shell 'ansi-term))
         (funcall shell (getenv "SHELL")))
        (t (funcall shell)))
  (let ((proc (get-buffer-process (get-buffer name))))
    (when proc
        (set-process-query-on-exit-flag proc term-toggle-confirm-exit)
        (if term-toggle-kill-buffer-on-process-exit
            (set-process-sentinel
             proc (lambda (__ evt)
                    (when (string-match-p "\\(?:exited\\|finished\\)" evt)
                      (kill-buffer))))))))

(defun tt--toggle (term-buffer)
  (let ((term-window (get-buffer-window term-buffer)))
    (if term-window
        (progn
          (bury-buffer term-buffer)
          (delete-window term-window))
      (progn
	(split-window-vertically)
        (other-window 1)
        (pop-to-buffer-same-window term-buffer t)
        (set-window-dedicated-p term-window t)
        (when (>= (window-total-height (selected-window))
                  term-toggle-minimum-split-height)
          (let ((delta (- (window-height (selected-window)) term-toggle-default-height)))
            (if (> delta 0)
                (shrink-window delta))))))))

(defun term-toggle (shell)
  (let ((name (format "*%s*" (if (eq shell 'term) "terminal" shell)))
        (original-buffer (current-buffer)))
    (unless (get-buffer name)
      (tt--start-shell shell name)
      (pop-to-buffer-same-window original-buffer))
    (tt--toggle (get-buffer name))))

;;; Commands
;;;###autoload
(defun term-toggle-term ()
  "Toggle `term'."
  (interactive) (term-toggle 'term))

;;;###autoload
(defun term-toggle-shell ()
  "Toggle `shell'."
  (interactive) (term-toggle 'shell))

;;;###autoload
(defun term-toggle-ansi ()
  "Toggle `ansi-term'."
  (interactive) (term-toggle 'ansi-term))

;;;###autoload
(defun term-toggle-eshell ()
  "Toggle `eshell'."
  (interactive) (term-toggle 'eshell))

;;;###autoload
(defun term-toggle-ielm ()
  "Toggle `ielm'."
  (interactive) (term-toggle 'ielm))

(define-key global-map [f2] #'term-toggle-eshell)
;;; term-toggle.el ends here








(provide 'setup-defuns)
