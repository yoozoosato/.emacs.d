;;
;; exec path
;;
;; (defun set-exec-path-from-shell-PATH ()
;;   (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PATH'")))
;;     (setenv "PATH" path-from-shell)
;;     (setq exec-path (split-string path-from-shell path-separator))))

;; ;; When started from Emacs.app or similar, ensure $PATH
;; ;; is the same the user would see in Terminal.app
;; (if window-system (set-exec-path-from-shell-PATH))
