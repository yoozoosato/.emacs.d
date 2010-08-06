;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Library settings begin here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; add library path
;; add load-path
(let ((dir (expand-file-name "~/.emacs.d/lisp")))
 (if (member dir load-path) nil
   (setq load-path (cons dir load-path))
   (let ((default-directory dir))
     (load (expand-file-name "subdirs.el") t t t))))

;; change directory
(cd "~/")

;; backup files
(setq make-backup-files nil)
(setq version-control nil)

;; iswitchb
(iswitchb-mode 1)

;; emacs client
(server-start)

;; install-elisp
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/lisp/")



