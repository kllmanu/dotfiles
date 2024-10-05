(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")))
(package-initialize)

(require 'org) 
(org-babel-load-file (expand-file-name (concat user-emacs-directory "init.org")))
(custom-file (concat user-emacs-directory "custom.el"))
(load-file custom-file)

(load-file (concat user-emacs-directory "manu.el"))
(load (concat "~/.emacs.d/" system-name ".el") t)
