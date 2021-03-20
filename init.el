;; Package configs
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("org"   . "http://orgmode.org/elpa/")
			 ("gnu"   . "http://elpa.gnu.org/packages/")
			 ("melpa" . "https://melpa.org/packages/")))

(package-initialize)

;;Minimal Ui

( scroll-bar-mode -1)
( tool-bar-mode -1)
( tooltip-mode -1)
(menu-bar-mode -1)


;; Bootstrap `use-package`
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

;; VIM EVIL MODE
(use-package evil
	     :ensure t
	     :config
	     (evil-mode 1))
;; VIM EVIL MODE THEMES

(use-package doom-themes
	     :ensure t
	     :config
	     (load-theme 'doom-one t))

;; INSTALL HELM
(use-package helm
  :ensure t
  :init
  (setq helm-mode-fuzzy-match t)
  (setq helm-completion-in-region-fuzzy-match t)
  (setq helm-canditate-number-list 50))

;;INSTALL WHICHKEY
(use-package which-key
  :ensure t
  :init
  (setq which-key-separator " ")
  (setq which-key-prefix-prefix "+")
  :config
  (which-key-mode))

;; CUSTOM KEYBINDINGS

;; ONNISTUU GENERAL PAKETIN AVULLA:
;; 
;;https://dev.to/huytd/emacs-from-scratch-1cg6


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(evil use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
