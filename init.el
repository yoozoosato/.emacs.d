;; add load-path
(let ((dir (expand-file-name "~/.emacs.d/lisp")))
  (if (member dir load-path) nil
    (setq load-path (cons dir load-path))
    (let ((default-directory dir))
      (load (expand-file-name "subdirs.el") t t t))))

;;; This was installed by package-install.el.
;;; This provides support for the package system and
;;; interfacing with ELPA, the package archive.
;;; Move this code earlier if you want to reference
;;; packages in your .emacs.
(require 'package)
(setq package-archives
      '(("gnu"   . "https://elpa.gnu.org/packages/")
        ("melpa" . "https://melpa.org/packages/")))
(package-initialize)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(setq init-loader-show-log-after-init nil)

;; Custom
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(browse-url-browser-function 'browse-url-default-macosx-browser)
 '(package-selected-packages
   '(ac-cider ac-emmet ac-emoji ac-etags ac-html ac-html-bootstrap
			  auto-async-byte-compile clojure-mode consult corfu
			  csharp-mode dash deferred e2wm e2wm-R e2wm-bookmark
			  e2wm-direx e2wm-pkgex4pl e2wm-sww e2wm-term
			  exec-path-from-shell helm howm init-loader json-mode
			  key-chord magit magit-annex magit-browse-commit
			  magit-commit-mark magit-delta magit-diff-flycheck
			  magit-filenotify magit-find-file magit-gerrit magit-gh
			  magit-gh-pulls magit-git-toolbelt magit-gitflow
			  magit-gitlab magit-ido magit-imerge magit-lfs
			  magit-org-todos magit-p4 magit-patch-changelog
			  magit-popup magit-pre-commit magit-prime magit-rbr
			  magit-reviewboard magit-section magit-standup
			  magit-stats magit-stgit magit-tbdiff magit-todos
			  magit-topgit magit-vcsh marginalia markdown-mode
			  markdown-preview-eww markdown-preview-mode mew migemo
			  nyan-mode orderless php-mode pos-tip rainbow-delimiters
			  rinari typescript-mode vertico viewer w3m yaml
			  yaml-imenu yaml-mode yasnippet)))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
