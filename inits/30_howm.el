;; 
;; howm 
;; 
(load-library "howm")
(setq howm-directory "~/Dropbox/Documents/howm")
(setq howm-menu-todo-num 10)

;; not showing 'done' on top menu
;; http://weboo-returns.com/blog/hide-closed-todo-on-howm/
(setq howm-todo-menu-types "[-+~!]")

(setq howm-menu-lang 'ja)
(setq howm-process-coding-system 'utf-8)
;;(setq howm-view-use-grep t)
;;(setq howm-view-grep-extended-option "-E")

(global-set-key "\C-c,," 'howm-menu)
(global-set-key "\C-c,c" 'howm-create)
(mapc
 (lambda (f)
   (autoload f
     "howm" "Hitori Otegaru Wiki Modoki" t))
 '(howm-menu howm-list-all howm-list-recent
	     howm-list-grep howm-create
	     howm-keyword-to-kill-ring))
(setq howm-menu-refresh-after-save nil)
(setq howm-refresh-after-save nil)

;; http://howm.sourceforge.jp/cgi-bin/hiki/hiki.cgi?SaveAndKillBuffer
;; C-cC-c で保存してバッファをキルする
(defun my-save-and-kill-buffer ()
  (interactive)
  (when (and
         (buffer-file-name)
         (string-match "\\.howm"
                       (buffer-file-name)))
    (save-buffer)
    (kill-buffer nil)))
(eval-after-load "howm"
  '(progn
     (define-key howm-mode-map
       "\C-c\C-c" 'my-save-and-kill-buffer)))

;; いちいち消すのも面倒なので
;; 内容が 0 ならファイルごと削除する
(if (not (memq 'delete-file-if-no-contents after-save-hook))
    (setq after-save-hook
          (cons 'delete-file-if-no-contents after-save-hook)))
(defun delete-file-if-no-contents ()
  (when (and
         (buffer-file-name (current-buffer))
         (string-match "\\.howm" (buffer-file-name (current-buffer)))
         (= (point-min) (point-max)))
    (delete-file
     (buffer-file-name (current-buffer)))))
(eval-after-load "calendar"
  '(progn
     (define-key calendar-mode-map
       "\C-m" 'my-insert-day)
     (defun my-insert-day ()
       (interactive)
       (let ((day nil)
             (calendar-date-display-form
         '("[" year "-" (format "%02d" (string-to-int month))
           "-" (format "%02d" (string-to-int day)) "]")))
         (setq day (calendar-date-string
                    (calendar-cursor-to-date t)))
         (exit-calendar)
         (insert day)))))


