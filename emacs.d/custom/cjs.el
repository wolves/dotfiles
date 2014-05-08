;;; cjs.el --- Custom UI settings

;;; Commentary:

;;; Code:

;;; UI CHANGES

;; use subatomic as the default theme
;;(load-theme 'subatomic t)
(load-theme 'sanityinc-tomorrow-bright t)

;; hide unwanted bars
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

(provide 'cjs)
;;; cjs.el ends here
