---
title: "Emacs from Scratch"
date: 2021-11-23T19:56:13-05:00
draft: false
---
https://www.youtube.com/watch?v=74zOY-vgkyw&list=ULcxqQ59vzyTk&index=60

```
(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10) ;Give the 

(menu-bar-mode -1) ;Disable the menu bar

;; Set up the visible bell
(setq visible-bell t)

(set-face-attribute 'default nil :font "Fira Code Retina" :height 280)

(load-theme 'tango-dark')

;;Initialize package sources
(require 'package)

(setq package-archive '(("melpa" . "https://mepla.org/packages/")
					   ("org" . "https://orgmode.org/elpa")
					   ("elpa" . "https://elpa.gnu.org/packages")))

(package-intialize)
(unless package-archive-contents
 (package-refresh-contents))
 
;; Initialize use-package on non-Linux platforms
(unless (package-install-p 'use-package)
	(package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)


;; M-x all-the-icons-install-fonts

(use-package all-the-icons)

(use-package doom-modeline
:ensure t 
:init (doom-modeline-mode 1)
:custom ((doom-modeline-height 15)))

(use-package doom-themes
	:init (load-theme 'doom-dracula t ))


(column-number-mode)
(global-display-line-numbers-mode t)
;;Disable line numbers for some modes
(dolist (mode '(org-mode-hook
				term-mode-hook
				shell-mode-hook
				eshell-mode-hook))
 (add-hook mode (lambda () (display-line-numbers-mode 0))))



(use-package rainbow-delimiters
	:hook (prog-mode . rainbow-delimiters-mode))



(use-package which-key
	:init (which-key-mode)
	:diminish which-key-mode
	:config
	(setq which-key-idle-delay 0.3))
	
(use-package ivy-rich
	:init
	(ivy-rich-mode 1))	


```


package called swiper for fuzzy search
