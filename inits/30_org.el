;;; -*- lexical-binding: t; -*-

(setq org-directory
      (expand-file-name "Org"
                        (getenv "OneDriveCommercial")))
(setq org-default-notes-file
      (expand-file-name "inbox.org" org-directory))
