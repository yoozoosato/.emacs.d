;;
;; text-adjst
;;
;; (auto-install-from-url "http://taiyaki.org/elisp/mell/src/mell.el")
;; (auto-install-from-url "http://taiyaki.org/elisp/text-adjust/src/text-adjust.el")
;; taiyaki.org が落ちているので、以下から取得できる
;; http://d.hatena.ne.jp/rubikitch/comment/20090220/text_adjust
(require 'text-adjust)


;; howm のメモを書いている時と、プレインテキストを書いている時は、
;; 半角英数字の前後に半角空白を入れて読み易くする。
(defun text-adjust-space-before-save-if-needed ()
  (when (memq major-mode
              '(howm-mode text-mode))
    (text-adjust-space-buffer)))
(defalias 'spacer 'text-adjust-space-buffer)
(add-hook 'before-save-hook 'text-adjust-space-before-save-if-needed)
