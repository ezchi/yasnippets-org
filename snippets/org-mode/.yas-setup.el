;;; .yas-setup.el --- Helper function for yasnippets-org -*- lexical-binding: t; -*-
;;
;; Copyright (C) 2020 Enze Chi
;;
;; Author: Enze Chi <http://github/ezchi>
;; Maintainer: Enze Chi <Enze.Chi@gmail.com>
;; Created: August 29, 2020
;; Modified: August 29, 2020
;; Version: 0.0.1
;; Keywords:
;; Homepage: https://github.com/ezchi/.yas-setup
;; Package-Requires: ((emacs 27.1.50) (cl-lib "0.5"))
;;
;; This file is not part of GNU Emacs.
;;
;;; Commentary:
;;
;;  Helper function for yasnippets-org
;;
;;; Code:

(defun tikz-png-header (&optional f)
  "Return header for PNG file if F is a PNG file."
  (if (and f
           (string= (file-name-extension f) "png"))
      "#+header: :imagemagick yes :fit yes"
    nil))

;;; .yas-setup.el ends here
