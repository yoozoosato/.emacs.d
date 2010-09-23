;; cperl-mode
;; http://www.emacswiki.org/emacs/CPerlMode
(autoload 'cperl-mode "cperl-mode" "alternate perl mode" t)
(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\|t\\|cgi\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))

(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4
      cperl-continued-statement-offset 4
      cperl-close-paren-offset -4
      cperl-label-offset -4
      cperl-comment-column 40
      cperl-highlight-variables-indiscriminately t
      cperl-indent-parens-as-block t
      cperl-tab-always-indent nil
      cperl-font-lock t)
(add-hook 'cperl-mode-hook
          '(lambda ()
             (progn
               (setq indent-tabs-mode nil)
               (setq tab-width nil)
               ; perl-completion
               (require 'auto-complete)
               (require 'perl-completion)
               (add-to-list 'ac-sources 'ac-source-perl-completion)
               (perl-completion-mode t)
              )))
 
; perl tidy
; sudo aptitude install perltidy
(defun perltidy-region ()
  "Run perltidy on the current region."
  (interactive)
  (save-excursion
    (shell-command-on-region (point) (mark) "perltidy -q" nil t)))
(defun perltidy-defun ()
  "Run perltidy on the current defun."
  (interactive)
  (save-excursion (mark-defun)
                  (perltidy-region)))
(global-set-key "\C-ct" 'perltidy-region)
(global-set-key "\C-c\C-t" 'perltidy-defun)

(require 'set-perl5lib)