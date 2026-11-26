(when (display-graphic-p)
  (let ((emoji-font (cond
                     ((eq system-type 'windows-nt) "Segoe UI Emoji")
                     ((eq system-type 'darwin) "Apple Color Emoji")
                     (t "Noto Color Emoji"))))
    (when (member emoji-font (font-family-list))
      (set-fontset-font t 'emoji (font-spec :family emoji-font) nil 'prepend))))
