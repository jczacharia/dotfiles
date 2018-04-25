;; Jeremy Generated
(setq inhibit-startup-message t)

(require 'package)
(setq package-enable-at-startup nil)
(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))

(use-package company
  :ensure t
  :config
  (setq company-idle-delay 0)
  (setq company-minimum-profix-length 3))

 
(use-package org-bullets
  :ensure t
  :config (add-hook 'org-mode-hook (lambda() (org-bullets-mode 1))))

(global-set-key (kbd "C-z") 'undo)
(define-key key-translation-map (kbd "ESC") (kbd "C-g"))
(setq indo-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(defalias 'list-buffers 'ibuffer)

(setq-default c-basic-offset 8)

(setq-default c-basic-offset 8
	      tab-width 8
	      indent-tabs-mode t)

;; emacs generates
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (misterioso)))
 '(package-selected-packages
   (quote
    (irony-server y company-irony company org-bullets which-key try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "CYRE" :slant normal :weight normal :height 128 :width normal)))))


