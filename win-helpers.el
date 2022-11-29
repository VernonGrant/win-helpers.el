;;; win-helpers.el --- Provides a series of Emacs helper functions for WSL Windows users.  -*- lexical-binding: t -*-

;; Copyright (C) 2022 by Vernon Grant.

;; Author: Vernon Grant <vernon@ruppell.io>
;; Version: 1.0.0
;; Package-Requires: ((emacs "26.1"))
;; Keywords: Windows, helpers, package
;; Homepage: https://github.com/VernonGrant/win-helpers.el

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <https://www.gnu.org/licenses/>.

;;; Commentary:

;; Provides a series of Emacs helper functions for WSL Windows users.

;;; Code:

;;;;;;;;;;;;;;;;;;;;
;; Customizations ;;
;;;;;;;;;;;;;;;;;;;;

(defgroup win-helpers nil
  "Windows helpers settings."
  :group 'convenience
  :prefix "win-helpers-")

;;;;;;;;;;;;;;;
;; Utilities ;;
;;;;;;;;;;;;;;;

(defun winh-shell-command-no-window (command)
  "Run the provided command in the background.
COMMAND: The shell command."
  (interactive)
  (let
      ((display-buffer-alist
        (list
         (cons
          "\\*Async Shell Command\\*.*"
          (cons #'display-buffer-no-window nil)))))
    (async-shell-command
     command)))


;;;;;;;;;;;;;
;; Windows ;;
;;;;;;;;;;;;;

(defun winh-open-terminal-here(&optional profile)
  "Opens the Windows terminal from within WSL in the current directory.
PROFILE: The terminal profile name (Optional)."
  (interactive)
  (if (not profile)
      (winh-shell-command-no-window (concat "wt -d ./"))
    (winh-shell-command-no-window (concat "wt -p \"" profile "\" -d ./"))))


(defun winh-open-explorer-here()
  "Opens the Windows explorer from within WSL in the current directory."
  ;; TODO: we need to the path issues, custom scripts maybe.
  (interactive)
  (winh-shell-command-no-window (concat "explorer .")))

;;;;;;;;;;;;;;;;;
;; WSL Helpers ;;
;;;;;;;;;;;;;;;;;

(provide 'win-helpers)

;;; win-helpers.el ends here
