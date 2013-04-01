;;
;; shell-mode


;; show escape sequence on shell-mode
;; http://webcache.googleusercontent.com/search?q=cache:HsyzOfk_I0sJ:www.hasta-pronto.org/archives/2006/11/02-0230.php+emacs+shell+zsh&cd=1&hl=ja&ct=clnk&gl=jp&client=firefox-a
(autoload 'ansi-color-for-comint-mode-on "ansi-color"
   "Set `ansi-color-for-comint-mode' to t." t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)


;; 
;; shell-pop
;; (auto-install-from-emacswiki "shell-pop.el")
(require 'shell-pop)
(shell-pop-set-internal-mode "shell")
(shell-pop-set-internal-mode-shell "/bin/zsh")
(global-set-key (kbd "C-<f10>") 'shell-pop)


;; 
;; multi-shell
;; (auto-install-from-emacswiki "multi-shell.el")
(require 'multi-shell)
