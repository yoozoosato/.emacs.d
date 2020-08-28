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
; Add package-archives
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; init-loader
(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(setq init-loader-show-log-after-init nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(browse-url-browser-function 'browse-url-default-macosx-browser)
 '(navi2ch-article-message-filter-by-hostname-alist
   '((("118-86-211-178.fnnr.j-cnet.jp" S :invert nil :board-id "kanto" :artid nil :float nil :date nil)
	  . hide)))
 '(package-selected-packages
   '(w3m ac-php ac-php-core php-mode navi2ch init-loader magit-popup magit magit-lfs ac-etags ido-completing-read+ ido-at-point ido-complete-space-or-hyphen ido-exit-target ido-flex-with-migemo ido-hacks ido-load-library ido-migemo ido-select-window ido-yes-or-no idomenu markdown-mode markdown-mode+ markdown-preview-mode popup howm tide yasnippet dash exec-path-from-shell rainbow-delimiters typescript-mode mew ruby-electric yasnippet-bundle yasnippet-classic-snippets yasnippet-lean yasnippet-snippets ac-python el-get alchemist xml-rpc viewer twittering-mode slime-repl slamhound s rvm rinari rhtml-mode php-extras oauth2 nyan-mode mmm-mode migemo ido-ubiquitous idle-highlight-mode flymake-yaml flymake-shell flymake-ruby flymake e2wm dropdown-list deferred closure-template-html-mode closure-lint-mode clojurescript-mode clojure-snippets clojure-project-mode clojure-cheatsheet ac-cider)))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
