;; 
;; indent with white space instead of tab
;; 
(defun trim-and-untabify () 
  "Delete excess white space." 
  (interactive) 
  (save-excursion 
	;; delete blank space 
	(goto-char (point-min)) 
	(while (re-search-forward "[ \t]+$" nil t) 
	  (replace-match "" nil nil)) 
	;; delete blank lines
	(goto-char (point-max)) 
	(delete-blank-lines) 
	;; replace tabs with blank
	(mark-whole-buffer) 
	(untabify (region-beginning) (region-end))
	)) 
(global-set-key "\C-cu" 'trim-and-untabify) 
