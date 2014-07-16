;; -*- coding: utf-8 -*-
(setq emacs-load-time (current-time))
(add-to-list 'load-path (expand-file-name "~/.emacs.d"))

(setq show-paren-delay 0)
(setq show-paren-mode 1)
(setq show-paren-style 'parenthesis)
(setq org-hide-block-startup 0)
(setq *macbook-pro-support-enabled* t)
(setq *is-a-mac* (eq system-type 'darwin))
(setq *is-carbon-emacs* (and *is-a-mac* (eq window-system 'mac)))
(setq *is-cocoa-emacs* (and *is-a-mac* (eq window-system 'ns)))
(setq *win32* (eq system-type 'windows-nt) )
(setq *cygwin* (eq system-type 'cygwin) )
(setq *linux* (or (eq system-type 'gnu/linux) (eq system-type 'linux)) )
(setq *unix* (or *linux* (eq system-type 'usg-unix-v) (eq system-type 'berkeley-unix)) )
(setq *linux-x* (and window-system *linux*) )
(setq *xemacs* (featurep 'xemacs) )
(setq *emacs23* (and (not *xemacs*) (or (>= emacs-major-version 23))) )
(setq *emacs24* (and (not *xemacs*) (or (>= emacs-major-version 24))) )
(setq *no-memory* (cond
                   (*is-a-mac*
                    (< (string-to-number (nth 1 (split-string (shell-command-to-string "sysctl hw.physmem")))) 4000000000))
                   (*linux* nil)
                   (t nil)
                   ))
(require 'cl-lib)
(require 'init-compat)
(require 'init-utils)
(require 'init-site-lisp)

(require 'idle-require)
(require 'init-elpa)
(require 'init-exec-path)
(require 'init-frame-hooks)
(require 'color-theme)
(require 'color-theme-solarized)
(create-solarized-theme light)
(set-frame-font "Monospace-11" nil t)
(require 'init-org)
(require 'init-org-mime)
(require 'init-move-window-buffer)
(require 'init-flymake)
(require 'init-elisp)
(require 'init-linum-mode)
(require 'init-moz)
(require 'init-evil)	    
(require 'init-gnus)
(require 'init-web-mode)
(require 'init-emacs-w3m)
