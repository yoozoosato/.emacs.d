;; Interactively Do Things (highly recommended, but not strictly required)
(cond
 ((string-match "apple-darwin" system-configuration)
  ;; carbon-emacsではなぜか上手く動作しない
  )
 ((string-match "linux" system-configuration)
  ;; Ubuntuのemacs23なら問題無し
  (require 'ido)
  (ido-mode t)
  )
 ((string-match "mingw" system-configuration)
  )
 )
