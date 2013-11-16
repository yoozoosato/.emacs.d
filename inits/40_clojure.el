;; for clojure
(setq inferior-lisp-program "~/bin/lein repl")
(add-to-list 'exec-path "~/bin")
(add-hook 'clojure-mode-hook 'paredit-mode)

(require 'slime)
(setq slime-net-coding-system 'utf-8-unix
      slime-protocol-version 'ignore)
(slime-setup '(slime-repl))

(require 'clojure-mode)
(add-hook 'slime-repl-mode-hook (lambda () (clojure-mode-font-lock-setup)))
