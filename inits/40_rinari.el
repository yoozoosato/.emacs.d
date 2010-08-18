(require 'rinari)
(dolist (dir (mapcar 'expand-file-name '("/usr/local/bin")))
  (setenv "PATH" (concat dir ":" (getenv "PATH")))
  (setq exec-path (append (list dir) exec-path)))

