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

(dolist (package
         '(
           ag
           auto-complete
           flycheck
           grizzl
           projectile
           undo-tree
           web-mode
           yasnippet
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
           yaml-mode
         ))
  (unless (package-installed-p package)
    (package-install package)))

(require 'ag)
(require 'auto-complete)
(require 'flycheck)
(require 'grizzl)
(require 'projectile)
(require 'undo-tree)
(require 'web-mode)
(require 'yasnippet)
;; Modes
(require 'coffee-mode)
(require 'elixir-mode)
(require 'gitconfig-mode)
(require 'gitignore-mode)
(require 'go-mode)
(require 'haml-mode)
(require 'js2-mode)
(require 'less-css-mode)
(require 'markdown-mode)
(require 'puppet-mode)
(require 'rspec-mode)
(require 'sass-mode)
(require 'slim-mode)
(require 'yaml-mode)

;;; UI CHANGES

;; use subatomic as the default theme
;;(load-theme 'subatomic t)
(load-theme 'sanityinc-tomorrow-bright t)
;; hide bars
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;; the blinking cursor is nothing, but an annoyance
(blink-cursor-mode -1)
;; disable startup screen
(setq inhibit-startup-screen t)
;; nice scrolling
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)
;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)
;; limit bell
 (setq ring-bell-function 
      (lambda ()
	(unless (memq this-command
		      '(isearch-abort abort-recursive-edit exit-minibuffer keyboard-quit))
	  (ding))))
;; full file path name in titlebar
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
	    '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; tab settings
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;;; KEY MAPPINGS

;; Bind M-x to easier binding
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)
;; Toggle Line Numbers
(global-set-key "\C-c\l" 'linum-mode)

;;; PLUGIN CONFIG

;; Auto-Complete
(global-auto-complete-mode t)

;; Exec Path from Shell
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

;; Flycheck
(add-hook 'after-init-hook #'global-flycheck-mode)

;; js2Mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; Projectile
(projectile-global-mode)
(setq projectile-completion-system 'grizzl)

;; Scss Mode
(setq scss-compile-at-save nil)

;; Undo-Tree
(global-undo-tree-mode 1)

;; Web Mode
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
;;(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; Yasnippet
(yas-global-mode 1)

(provide 'init)
;;; init.el ends here
