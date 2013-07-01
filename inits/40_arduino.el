;;(add-to-list 'load-path "~/.emacs.d//arduino")
(autoload 'arduino-mode "arduino-mode" "Arduino editing mode." t)
(setq auto-mode-alist (cons '("\\.\\(pde\\|ino\\)$" . arduino-mode) auto-mode-alist))
