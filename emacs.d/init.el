;;; init.el --- My configuration entry point.

;;; Commentary:

;;; Code:
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Always load newest byte code
(setq load-prefer-newer t)

(defvar cjs-dir (file-name-directory load-file-name)
  "The root dir.")
(defvar cjs-core-dir (expand-file-name "custom" cjs-dir)
  "The dir holding current customization.")

;; add Core Custom directories to Emacs's `load-path'
(add-to-list 'load-path cjs-core-dir)

;; Require various subfiles/namespaces: add them to '(list)
(mapc (lambda (feature)
        (require feature nil 'noerror))
        '(
          cjs-packages
          cjs
          cjs-keybinds
          ag
          auto-complete
          flycheck
          grizzl
          projectile
          undo-tree
          yasnippet

          ;; Modes
          coffee-mode
          elixir-mode
          gitconfig-mode
          gitignore-mode
          go-mode
          haml-mode
          js2-mode
          less-css-mode
          markdown-mode
          puppet-mode
          rspec-mode
          sass-mode
          slim-mode
          web-mode
          yaml-mode
          cjs-package-configs
          ))
;; end auto-install/require packages
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'init)
;;; init.el ends here
