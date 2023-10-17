(require 'package)                                                                                                                                                             
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

(use-package clojure-mode
  :ensure t ;; Automatically install the package from repositories
  :config
  (add-hook 'clojure-mode-hook 'enable-paredit-mode)
  (add-hook 'clojure-mode-hook 'subword-mode)
  )

(use-package helm
  :ensure t
  :config
  (helm-mode 1)
  (global-set-key (kbd "C-x C-f") 'helm-find-files)
  )

(use-package monokai-theme
  :ensure t
  :config
  (load-theme 'monokai t)
  )

;; global options
(global-set-key (kbd "C-c o") 'avy-goto-word-1)
(global-set-key (kbd "C-o") 'avy-goto-word-1)
(global-set-key (kbd "C-c m") 'magit-status)
(global-undo-tree-mode)
(global-set-key (kbd "C-c w") 'backward-kill-word)
(tool-bar-mode -1)
(setq column-number-mode t)
(add-to-list 'initial-frame-alist '(fullscreen . maximized))
;;(global-display-line-numbers-mode 1)
 
; show recent files on startup
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 25)
(setq inhibit-startup-screen t)
(add-hook 'after-init-hook 'recentf-open-files)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(magit markdown-mode cider monokai-theme helm undo-tree paredit clojure-mode avy)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
