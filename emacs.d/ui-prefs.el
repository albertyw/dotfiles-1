;; UI preferences

(load "fonts.el")

(defun use-solarized-theme ()
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/solarized")
  (load-theme 'solarized-dark t))

(defun use-zenburn-theme ()
  (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/zenburn")
  (load-theme 'zenburn t))

(if window-system
    (progn
      (tool-bar-mode 0)
      (use-solarized-theme))
  (menu-bar-mode 0)) ; no menu bar in terminal

;; quiet startup
(setq inhibit-startup-message t)
(setq initial-scratch-message nil)

;; UI prefs
(global-font-lock-mode t)
(global-auto-revert-mode t)
(show-paren-mode t)
(setq show-paren-delay 0.0)
(transient-mark-mode t)
(fset 'yes-or-no-p 'y-or-n-p)
(display-time-mode 1)

;; Add line numbers
(line-number-mode "on")
(require 'linum)
(global-linum-mode 1)
(setq linum-format "  %d") ;; alleviates linum bug in OS X; unnecessary on other OSes

(setq whitespace-style '(lines))
(setq whitespace-line-column 78)
(global-whitespace-mode 1)

;; Improve scrolling
(setq
 scroll-margin 5
 scroll-conservatively 100000
 scroll-preserve-screen-position 1)

(load-theme 'tango-dark t)
