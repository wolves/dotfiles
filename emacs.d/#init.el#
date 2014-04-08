;;; init.el --- Proem's configuration entry point.
;;
;; Copyright (c) 2014 Christopher Stingl
;;
;; Author: Christopher Stingl <cjstingl@gmail.com>
;; URL: http://cjstingl.com/proem
;; Version: 0.0.1
;; Keywords: convenience

;; This file is not part of GNU Emacs.

;;; Commentary:

;; This file simply sets up the default load path and requires
;; the various modules defined within Emacs Proem. I also want
;; to take this moment to give credit and thanks to Bozhidar
;; Batsov's Prelude <https://github.com/bbatsov/prelude> of
;; which this is clearly inspired.

;;; License:

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

;;; Code:
(defvar current-user
      (getenv
       (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Proem is powering up... Be patient, Master %s!" current-user)

(when (version< emacs-version "24.1")
  (error "Proem requires at least GNU Emacs 24.1, but you're running %s" emacs-version))

;; Always load newest byte code
(setq load-prefer-newer t)
