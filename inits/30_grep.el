;; 
;; grep-edit.el
;; (install-elisp-from-emacswiki "grep-edit.el")
;; 
(require 'grep-edit)

;; 
;; igrep.el
;; (install-elisp-from-emacswiki "igrep.el")
;; "emacs technique bible" 7-9
(require 'igrep)
(igrep-define lgrep (igrep-use-zgrep nil)(igrep-regex-option "-n -Ou8"))
(igrep-find-define lgrep (igrep-use-zgrep nil)(igrep-regex-option "-n -Ou8"))

;; 
;; grep-a-lot.el
;; (install-elisp-from-emacswiki "grep-a-lot.el")
;; "emacs technique bible" 7-10
(require 'grep-a-lot)
(grep-a-lot-setup-keys)
(grep-a-lot-advise igrep)
