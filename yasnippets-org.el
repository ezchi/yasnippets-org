;;; yasnippets-org.el --- Snippets for Org-mode -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 Enze Chi
;;
;; Author: Enze Chi <http://github/ezchi>
;; Maintainer: Enze Chi <ezchi@Enzes-MacBook-Pro.local>
;; Created: August 29, 2020
;; Modified: August 29, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/ezchi/yasnippets-org
;; Package-Requires: ((emacs 27.1.50) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Snippets for Org-mode
;;
;;; Code:

(require 'yasnippet)

(defvar yasnippets-org-root
  (file-name-directory (or load-file-name (buffer-file-name))))

;;;###autoload
(defun yasnippets-org-initialize ()
  "Add yasnippets-org directory to YAS."
  (let ((snip-dir (expand-file-name "snippets" yasnippets-org-root)))
    (when (boundp 'yas-snippet-dirs)
      (add-to-list 'yas-snippet-dirs snip-dir t))
    (yas-load-directory snip-dir)))

;;;###autoload
(with-eval-after-load 'yasnippet
  (yasnippets-org-initialize))

(provide 'yasnippets-org)
;;; yasnippets-org.el ends here
