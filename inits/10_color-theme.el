;;
;; color-theme
;; http://www.emacswiki.org/emacs/ColorTheme
(require 'color-theme)
;; Carbon Emacsの場合、initializeが必要。Ubuntu 10.04のEmacs23では必要ない
(cond
 ((string-match "apple-darwin" system-configuration)
  (color-theme-initialize)
  )
 ((string-match "linux" system-configuration)
  ; とりあえずUbuntuでは何もする必要ない
  ; 何もする必要ないはずなんだが、10.10でエラーになったので回避用に入れてみる
  (color-theme-initialize)
 )
;((string-match "mingw" system-configuration)
;必要ならここにWindows用の設定を書く
; )
)
;; (color-theme-tangotango)
(color-theme-clarity)
