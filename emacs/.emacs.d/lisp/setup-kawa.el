;; Kawa, Swank, and the debugger classes (tools.jar) must be in the
;; classpath.  You also need to start the debug agent.
(setq slime-lisp-implementations
      '((kawa
         ("java"
          ;; needed jar files
          "-cp" "kawa-2.0.1.jar:swank-kawa.jar:/opt/jdk1.8.0/lib/tools.jar"
          ;; channel for debugger
          "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n"
          ;; depending on JVM, compiler may need more stack
          "-Xss2M"
          ;; kawa without GUI
          "kawa.repl" "-s")
         :init kawa-slime-init)))

(defun kawa-slime-init (file _)
  (setq slime-protocol-version 'ignore)
  (format "%S\n"
          `(begin (import (swank-kawa))
                  (start-swank ,file)
                  ;; Optionally add source paths of your code so
                  ;; that M-. works better:
                  ;;(set! swank-java-source-path
                  ;;  (append
                  ;;   '(,(expand-file-name "~/lisp/slime/contrib/")
                  ;;     "/scratch/kawa")
                  ;;   swank-java-source-path))
                  )))

;; Optionally define a command to start it.
(defun kawa ()
  (interactive)
  (slime 'kawa))

(provide 'setup-kawa)
