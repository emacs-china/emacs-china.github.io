;;; emacs-china-utils.el --- Utils used by emacs-china.github.io

;; Copyright (c) 2015, Feng Shu

;; Author: Feng Shu <tumashu@163.com>
;; URL: https://github.com/emacs-china/emacs-china.github.io
;; Version: 0.0.1

;;; License:
;; This file is not part of GNU Emacs.

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Commentary:

;;; Codes
;; #+BEGIN_SRC emacs-lisp
(require 'op-theme-emacslove)

(defun emacs-china-repo-path ()
  (file-name-directory
   (locate-library "emacs-china-utils")))

(defun emacs-china-theme-path ()
  (file-name-directory
   (locate-library "op-theme-emacslove")))

(add-to-list 'owp/project-config-alist
             `("emacs-china.github.io"
               :repository-directory ,(emacs-china-repo-path)
               :site-domain "emacs-china.github.io"
               :site-main-title "EMACS-CHINA"
               :site-sub-title "=============>集思广益"
               :repository-org-branch "source"
               :repository-html-branch "master"
               :default-category "blog"
               :theme-root-directory (,(emacs-china-theme-path))
               :theme (emacslove killjs)
               :force-absolute-url nil
               :personal-github-link "https://github.com/tumashu/chinese-pyim"
               :personal-avatar nil
               :personal-duoshuo-shortname "emacs-china"
               :personal-disqus-shortname "emacs-china"
               :preparation-function nil
               :addition-files-function nil
               :web-server-docroot "~/.emacs.d/org-webpage-server/emacs-china.github.io"
               :web-server-port 3210))
;; #+END_SRC

;;; Footer:
;; #+BEGIN_SRC emacs-lisp
(provide 'emacs-china-utils)

;;; emacs-china-utils.el ends here
;; #+END_SRC
