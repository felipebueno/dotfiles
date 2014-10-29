(defun eshell/emacs (&rest args)
  "Open a file in emacs the natural way"
  (if (null args)
      ;; If emacs is called by itself, then just go to emacs directly
      (bury-buffer)
    ;; If opening multiple files with a directory name, e.g.
    ;; > emacs bar/bar.el foo.clj
    ;; then the names must be expanded to complete file paths.
    ;; Otherwise, find-file will look in the current directory which
    ;; would fail for 'foo.clj' in the example above.
    (mapc #'find-file (mapcar #'expand-file-name (eshell-flatten-list (reverse args))))))

(provide 'setup-eshell)
