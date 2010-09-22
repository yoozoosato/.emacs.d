;; flymake
;;
(require 'flymake)


;; for perl
(defvar flymake-perl-err-line-patterns '(("\\(.*\\) at \\([^ \n]+\\) line \\([0-9]+\\)[,.\n]" 2 3 nil 1)))
(defconst flymake-allowed-perl-file-name-masks '(("\\.pl$" flymake-perl-init)
                                               ("\\.pm$" flymake-perl-init)
                                               ("\\.t$" flymake-perl-init)
                                               ))
 
(defun flymake-perl-init ()
  (let* ((temp-file (flymake-init-create-temp-buffer-copy
                     'flymake-create-temp-inplace))
         (local-file (file-relative-name
                      temp-file
                      (file-name-directory buffer-file-name))))
    (list "perl" (list "-wc" local-file))))
 
(defun flymake-perl-load ()
  (interactive)
  (set-perl5lib)
  (defadvice flymake-post-syntax-check (before flymake-force-check-was-interrupted)
    (setq flymake-check-was-interrupted t))
  (ad-activate 'flymake-post-syntax-check)
  (setq flymake-allowed-file-name-masks (append flymake-allowed-file-name-masks flymake-allowed-perl-file-name-masks))
  (setq flymake-err-line-patterns flymake-perl-err-line-patterns)
  (flymake-mode t))
 
(add-hook 'cperl-mode-hook '(lambda () (flymake-perl-load)))
 
(defun next-flymake-error ()
  (interactive)
  (flymake-goto-next-error)
  (let ((err (get-char-property (point) 'help-echo)))
    (when err
      (message err))))
(global-set-key "\C-ce" 'next-flymake-error)

;; ;; for php
;; ;; http://oldtype.sumibi.org/show-plain/kiyoka.2007_12_28
;; (defconst flymake-allowed-php-file-name-masks '(
;; 						("\\.php3\\'" flymake-php-init)
;; 						("\\.inc\\'" flymake-php-init)
;; 						("\\.php\\'" flymake-php-init))
;;   "Filename extensions that switch on flymake-php mode syntax checks")
    
;; (defconst flymake-php-err-line-pattern-re '("\\(.*\\) in \\(.*\\) on line \\([0-9]+\\)" 2 3 nil 1)
;;   "Regexp matching PHP error messages")

;; (defun flymake-php-init ()
;;   (let* ((temp-file       (flymake-init-create-temp-buffer-copy
;; 			   'flymake-create-temp-inplace))
;; 	 (local-file  (file-relative-name
;; 		       temp-file
;; 		       (file-name-directory buffer-file-name))))
;;     (list "php" (list "-f" local-file "-l"))))
    
;; (defun flymake-php-load ()
;;   (setq flymake-allowed-file-name-masks (append flymake-allowed-file-name-masks flymake-allowed-php-file-name-masks))
;;   (setq flymake-err-line-patterns (cons flymake-php-err-line-pattern-re flymake-err-line-patterns))
;;   (flymake-mode t)
;;   (local-set-key "\C-cd" 'flymake-display-err-menu-for-current-line))

;; (add-hook 'php-mode-user-hook 'flymake-php-load)





;; ;; for jde-mode (java source code)
;; ;; http://dev.ariel-networks.com/Members/matsuyama/detect-syntax-errors-by-flymake
;; (add-hook 'jde-mode-hook
;;           '(lambda ()
;;              (flymake-mode t)))
;; (setcdr (assoc "\\.java\\'" flymake-allowed-file-name-masks)
;;         '(flymake-simple-ant-java-init flymake-simple-java-cleanup))
;; (defun flymake-get-make-cmdline (source base-dir)
;;   (list "make"
;;         (list "-s"
;;               "-C"
;;               base-dir
;;               (concat "CHK_SOURCES=" source)
;; 	      "SYNTAX_CHECK_MODE=1")))
;; (setcdr (assoc "\\.java\\'" flymake-allowed-file-name-masks)
;;         '(flymake-simple-ant-java-init flymake-simple-java-cleanup))
;; (defun flymake-get-ant-cmdline (source base-dir)
;;   (list "ant"
;;         (list "-buildfile"
;;               (concat base-dir "/" "build.xml"))))
;; (add-hook 'java-mode-hook
;;           '(lambda ()
;;              (flymake-mode)))

