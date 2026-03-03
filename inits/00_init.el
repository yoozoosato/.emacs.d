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


; use system clipborad
(when window-system
  ;; 古い x-select-enable-clipboard の代わりにこれらを使う
  (setq select-enable-clipboard t)    ; クリップボードと同期
    ;; 重要：Slackへの複数行ペーストを安定させる設定
  ;; 改行コードを確実に utf-8-unix としてクリップボードに送る
  (set-selection-coding-system 'utf-8-unix)

  ;; コピー時に余計な装飾（Face）情報を付けない
  (setq save-interprogram-paste-before-kill t)

  ;; コピーする時にテキストの装飾情報を一切含めない（プレーンテキストのみにする）
  (setq yank-excluded-properties t)

  ;; クリップボードに渡すデータの「型」を制限する
  (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING)))


;; find-file-at-point, it helps opening .el files via init-log buffer.
(ffap-bindings)

;; debug
(setq debug-on-error nil)

;; exec-path-from-shell
;; https://github.com/yoozoosato/.emacs.d/issues/7
(exec-path-from-shell-initialize)
