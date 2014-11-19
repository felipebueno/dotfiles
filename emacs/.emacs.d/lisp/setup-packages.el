(require 'package)
(package-initialize)
(when (not package-archive-contents)
    (package-refresh-contents))

(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(defvar my-packages '(android-mode
                      align-cljlet
                      auto-compile
                      auto-dictionary
                      better-defaults
                      ;;cider-browse-ns
                      cider-decompile
                      ;;cider-tracing
                      clj-refactor
                      cljsbuild-mode
                      clojure-cheatsheet
                      clojure-mode-extra-font-locking
                      clojure-snippets
                      ;;company-cider
                      cider
                      clojure-mode
                      company-go
                      company-tern
                      company
                      cyberpunk-theme
                      dash-functional
                      dired+
                      dired-details+
                      dired-details
                      emr
                      expand-region
                      f
                      flycheck
                      flymake-python-pyflakes
                      flymake-easy
                      helm
                      java-snippets
                      javadoc-lookup
                      javap-mode
                      js-comint
                      js-doc
                      js2-refactor
                      js2-mode
                      jtags
                      list-utils
                      malabar-mode
                      neotree
                      fringe-helper
                      move-text
                      multiple-cursors
                      packed
                      popup
                      projectile
                      pkg-info
                      epl
                      dash
                      redshank
                      request
                      s
                      starter-kit-bindings
                      starter-kit-eshell
                      starter-kit-js
                      starter-kit-lisp
                      elisp-slime-nav
                      starter-kit-perl
                      starter-kit-ruby
                      starter-kit
                      magit
                      git-rebase-mode
                      git-commit-mode
                      ido-ubiquitous
                      smex
                      find-file-in-project
                      idle-highlight-mode
                      paredit
                      inf-ruby
                      tern
                      undo-tree
                      web-beautify
                      yasnippet))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'setup-packages)
