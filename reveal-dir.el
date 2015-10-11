;;; reveal-dir.el --- open current dir

;; Copyright (C) 2015 Aby Chan  <abchan@outlook.com>

;; Author: Aby Chan <abychan@outlook.com>
;; Version: 0.1
;; URL: https://github.com/Emacs-Phoenix/reveal-dir

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;; For more information, See URL https://github.com/Emacs-Phoenix/reveal-dir.

;;; Commentary:
;;nil now

;;; Code:


;;;###autoload
(defun reveal-dir ()
  "Reveal the file associated with the current buffer in the linux File Manager."
  (interactive)
  (let ((file-path (file-name-directory (or load-file-name buffer-file-name))))
    (start-process "xdg-open" nil "xdg-open" file-path)))

;;;###autoload
(defun reveal-in-nautilus ()
  "Reveal the file associated with the current buffer in the linux Nautilus."
  (interactive)
  (let ((file-name (if buffer-file-name
                       buffer-file-name
                     (error "Cannot open this buffer because it not visiting a file."))))
    (start-process "nautilus" nil "nautilus" file-name)))

(provide 'reveal-dir)
;;; reveal-dir.el ends here
