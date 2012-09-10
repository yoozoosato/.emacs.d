;; install-elisp
;; (install-elisp "https://github.com/m2ym/popwin-el/raw/master/popwin.el")

(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
