;;
;; js2-mode
;; (auto-install-from-url "http://js2-mode.googlecode.com/files/js2-20090723b.el")
(autoload 'js2-mode "js2" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(add-hook 'js2-mode-hook
          '(lambda ()
             (set-fill-column 80)
             (setq js2-basic-offset 2)
             (setq js2-cleanup-whitespace t)
             ))

;;
;; espresso-mode
;; (auto-install-from-url "http://download-mirror.savannah.gnu.org/releases/espresso/espresso.el")
(autoload 'espresso-mode "espresso")
(defun my-js2-mode-hook ()
  (require 'espresso)
  (setq espresso-indent-level 2
        indent-tabs-mode nil
        c-basic-offset 2)
  (c-toggle-auto-state 0))


;; 
;; iMenu 対応
;; http://dev.ariel-networks.com/Members/matsuyama/imenu/

;; 識別子の正規表現
(defvar javascript-identifier-regexp "[a-zA-Z0-9.$_]+")

;; } までの class のメソッドを列挙する関数
(defun javascript-imenu-create-method-index-1 (class bound)
  (let (result)
    (while (re-search-forward (format "^ +\\(\%s\\): *function" javascript-identifier-regexp) bound t)
      (push (cons (format "%s.%s" class (match-string 1)) (match-beginning 1)) result))
    (nreverse result)))

;; メソッドのインデックスを作成する関数
(defun javascript-imenu-create-method-index ()
  (cons "Methods"
        (let (result)
          ;; $name = Class.create
          ;; $name = Object.extend
          ;; Object.extend($name,
          ;; $name = {
          ;; をクラスあるいはオブジェクトとする
          (dolist (pattern (list (format "\\b\\(%s\\) *= *Class\.create" javascript-identifier-regexp)
                                 (format "\\b\\([A-Z]%s\\) *= *Object.extend(%s"
                                         javascript-identifier-regexp
                                         javascript-identifier-regexp)
                                 (format "^ *Object.extend(\\([A-Z]%s\\)" javascript-identifier-regexp)
                                 (format "\\b\\([A-Z]%s\\) *= *{" javascript-identifier-regexp)))
            (goto-char (point-min))
            (while (re-search-forward pattern (point-max) t)
              (save-excursion
                (condition-case nil
                    ;; { を探す
                    (let ((class (replace-regexp-in-string "\.prototype$" "" (match-string 1))) ;; .prototype はとっておく
                          (try 3))
                      (if (eq (char-after) ?\()
                          (down-list))
                      (if (eq (char-before) ?{)
                          (backward-up-list))
                      (forward-list)
                      (while (and (> try 0) (not (eq (char-before) ?})))
                        (forward-list)
                        (decf try))
                      (if (eq (char-before) ?}) ;; } を見つけたら
                          (let ((bound (point)))
                            (backward-list)
                            ;; メソッドを抽出してインデックスに追加
                            (setq result (append result (javascript-imenu-create-method-index-1 class bound))))))
                  (error nil)))))
          ;; 重複を削除しておく
          (delete-duplicates result :test (lambda (a b) (= (cdr a) (cdr b)))))))

;; function の index を作成する
(defun javascript-imenu-create-function-index ()
  (cons "Functions"
		(let (result)
		  (dolist (pattern (list
							(format "\\b\\(%s\\) *= *function" "function \\(%s\\)"
									javascript-identifier-regexp
									javascript-identifier-regexp)))
			(goto-char (point-min))
			(while (re-search-forward pattern (point-max) t)
			  (push (cons (match-string 1) (match-beginning 1)) result)))
		  (nreverse result))))

(defun javascript-imenu-create-index ()
  (list
   (javascript-imenu-create-function-index)
   (javascript-imenu-create-method-index)))

(add-hook 'javascript-mode-hook (lambda () (setq imenu-create-index-function 'javascript-imenu-create-index)))