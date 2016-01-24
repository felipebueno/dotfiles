;;; company-lua.el --- company-mode completion backend for Lua -*- lexical-binding: t -*-

;; Copyright (C) 2016 Felipe Bueno

;; Author: Felipe Bueno
;; URL: https://github.com/felipebueno/company-lua

;; This file is not part of GNU Emacs.

;; This file is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; This file is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;

;;; Code:
(require 'company)
(require 'cl-lib)


;;;###autoload
(defun company-lua (command &optional arg &rest ignored)
  (interactive (list 'interactive))
  (cl-case command
    (interactive (company-begin-backend 'company-lua))
    (prefix (when (looking-back "foo\\>")
              (match-string 0)))
    (candidates (when (equal arg "foo")
                  (list "foobar" "foobaz" "foobarbaz")))
        (meta (format "This value is named %s" arg))))

(provide 'company-lua)
;;; company-lua.el ends here
