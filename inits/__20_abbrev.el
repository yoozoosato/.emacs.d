;; 
;; abbrev-mode
;; 
(setq abbrev-file-name "~/Library/CloudStorage/Dropbox/Documents/abbrev_defs.el")
(read-abbrev-file abbrev-file-name t)
(setq dabbrev-case-replace nil)  ; Preserve case when expanding
(setq abbrev-mode t)
(setq save-abbrevs 'silently)
