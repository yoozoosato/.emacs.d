;; 
;; jde
;; 
(setenv "JAVA_HOME" "/System/Library/Frameworks/JavaVM.framework/Versions/CurrentJDK/Home")
(require 'jde)


;; name, email address. 
(setq user-full-name "SATO Yozo")
(setq user-mail-address "yoozoosato@gmail.com")

;; hook 
(add-hook 'jde-mode-hook
          '(lambda ()
             (setq fill-column 80)
             (auto-fill-mode t)
             (c-set-style "java")
             (c-set-offset 'arglist-intro '+)
             (c-set-offset 'arglist-close 0)
             (c-set-offset 'topmost-intro-cont 0)
             ))

;;; custom variables
(setq bsh-vm-args '("-Duser.language=en"))
(setq jde-find-file-regexp '("*.java" "*.jsp" "*.tag" "*.xml" "*.properties"))
;; Ant
(setq jde-build-function '(jde-ant-build))
(setq jde-ant-read-target t)
(setq jde-ant-enable-find t)
;; JUnit4
(setq jde-junit-testrunner-type "org.junit.runner.JUnitCore")
;; Code
(setq jde-import-auto-sort t)



;; prj.el template
;; 
;(jde-project-file-version "1.0")
;(jde-set-variables
;  '(jde-ant-working-directory "./")
;  '(jde-sourcepath '("./src/main/java" "./src/test/java" ))
;  '(jde-global-classpath '("./target/classes" "./target/test-classes")))