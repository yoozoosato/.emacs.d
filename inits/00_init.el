;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Library settings begin here
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; change directory to my home directory
(cd "~/")

;; backup files
(setq make-backup-files nil)
(setq version-control nil)

;; emacs client
(require 'server)
(unless (server-running-p)
  (server-start))

; coding
(set-buffer-file-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-8-unix)
(setq default-process-coding-system '(utf-8-unix . utf-8-unix))


;; macOS 固有のクリップボード処理を安定させる
(when (eq system-type 'darwin)
  ;; macOS標準のpbcopy/pbpasteを介さず、Emacsの内部関数を正しく紐付ける
  (setq interprogram-cut-function 'gui-select-text)
  (setq interprogram-paste-function 'gui-selection-value)
  
  ;; クリップボードマネージャーへの通知をオフにして、直接 OS に渡します
  (setq x-select-enable-clipboard-manager nil)
  
  ;; 改行コードの最終防衛線
  (setq selection-coding-system 'utf-8-unix))

;; コピー時に「書式情報」が混ざるのを徹底的に排除
(setq yank-excluded-properties t)

;; find-file-at-point, it helps opening .el files via init-log buffer.
(ffap-bindings)

;; debug
(setq debug-on-error nil)

;; exec-path-from-shell
;; https://github.com/yoozoosato/.emacs.d/issues/7
(exec-path-from-shell-initialize)
