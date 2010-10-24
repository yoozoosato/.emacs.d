;; work-log
;; http://www.emacswiki.org/emacs/worklog.el
;; (install-elisp-from-emacswiki "worklog.el")
(require 'worklog)

;; (add-hook 'emacs-startup-hook
;;           (function (lambda ()
;;                       (worklog-do-task "Hacking emacs" t)
;;                       )))
(add-hook 'kill-emacs-hook
          (function (lambda ()
                      (worklog-do-task "logout" t)
                      (worklog-finish)
                      )))

