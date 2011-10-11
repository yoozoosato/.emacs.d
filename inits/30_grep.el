;; 
;; grep-edit.el
;; (auto-install-from-emacswiki "grep-edit.el")
;; 
(require 'grep-edit)

;; 
;; igrep.el
;; (auto-install-from-emacswiki "igrep.el")
;; "emacs technique bible" 7-9
(require 'igrep)
(igrep-define lgrep (igrep-use-zgrep nil)(igrep-regex-option "-n -Ou8"))
(igrep-find-define lgrep (igrep-use-zgrep nil)(igrep-regex-option "-n -Ou8"))

;; 
;; grep-a-lot.el
;; (auto-install-from-emacswiki "grep-a-lot.el")
;; "emacs technique bible" 7-10
(require 'grep-a-lot)
(grep-a-lot-setup-keys)
(grep-a-lot-advise igrep)
