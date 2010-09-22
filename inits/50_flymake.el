;; flymake
;;
(require 'flymake)

;; for ruby
;; 
;; flymake for ruby
(defun flymake-ruby-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))
(push '(".+\\.rb$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("Rakefile$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) flymake-err-line-patterns)
(add-hook
 'ruby-mode-hook
 '(lambda ()
    ;; Don't want flymake mode for ruby regions in rhtml files
    (if (not (null buffer-file-name)) (flymake-mode))
    ;; エラー行で C-c d するとエラーの内容をミニバッファで表示する
    (define-key ruby-mode-map "\C-cd" 'credmp/flymake-display-err-minibuf)))
(defun credmp/flymake-display-err-minibuf ()
  "Displays the error/warning for the current line in the minibuffer"
  (interactive)
  (let* ((line-no (flymake-current-line-no))
         (line-err-info-list (nth 0 (flymake-find-err-info flymake-err-info line-no)))
         (count (length line-err-info-list))
         )
    (while (> count 0)
      (when line-err-info-list
        (let* ((file (flymake-ler-file (nth (1- count) line-err-info-list)))
               (full-file (flymake-ler-full-file (nth (1- count) line-err-info-list)))
               (text (flymake-ler-text (nth (1- count) line-err-info-list)))
               (line (flymake-ler-line (nth (1- count) line-err-info-list))))
          (message "[%s] %s" line text)
          )
        )
      (setq count (1- count)))))


;; for perl
;; http://tech.lampetty.net/tech/index.php/archives/384
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
  ;; http://coderepos.org/share/browser/lang/elisp/set-perl5lib/set-perl5lib.el
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

