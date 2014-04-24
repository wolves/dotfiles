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

(require 'flycheck)
(require 'grizzl)
(require 'projectile)

(require 'coffee-mode)
(require 'elixir-mode)
(require 'haml-mode)
(require 'rspec-mode)
(require 'sass-mode)
(require 'slim-mode)

;; use zenburn as the default theme
(load-theme 'zenburn t)

;; hide toolbar
(tool-bar-mode -1)

;; key mappings
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Exec Path from Shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; Magit
;;(setq magit-git-executable "/usr/local/bin/git")

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

(provide 'init)
;;; init.el ends here
