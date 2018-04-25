;; Aliases
(defalias 'yes-or-no-p 'y-or-n-p)

;; Modes
(blink-cursor-mode 0)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

;; Settings
(setq custom-file (make-temp-file "emacs-custom"))
(setq undo-tree-auto-save-history t
      undo-tree-history-directory-alist `(("." . ,(concat user-emacs-directory "undo"))))
(setq visible-bell nil)

;; Packages
(package-initialize)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(setq package-enable-at-startup nil)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(use-package atom-one-dark-theme
  :ensure t
  :config
  (load-theme 'atom-one-dark t)
  (set-face-foreground 'font-lock-comment-face "#8c919a"))

(use-package better-defaults
  :ensure t)

(use-package company
  :ensure t
  :init
  (setq company-dabbrev-downcase nil)
  (setq company-idle-delay t)
  :config
  (add-hook 'after-init-hook 'global-company-mode)

  (use-package company-lsp
    :ensure t
    :config
    (add-to-list 'company-backends 'company-lsp)))

(use-package crux
  :ensure t
  :init
  (add-hook 'before-save-hook 'delete-trailing-whitespace))

(use-package evil
  :ensure t
  :init
  (setq evil-want-C-u-scroll t)
  (setq evil-want-Y-yank-to-eol t)
  :config
  (evil-mode t)

  (use-package evil-commentary
    :ensure t
    :config
    (evil-commentary-mode))

  (use-package evil-leader
    :ensure t
    :config
    (global-evil-leader-mode))

  (use-package evil-magit
    :ensure t
    :config
    (evil-define-key evil-magit-state magit-mode-map "?" 'evil-search-backward))

  (use-package evil-matchit
    :ensure t
    :config
    (global-evil-matchit-mode))

  (use-package evil-surround
    :ensure t
    :config
    (global-evil-surround-mode))

  (use-package evil-visualstar
    :ensure t
    :config
    (global-evil-visualstar-mode)))

(use-package fzf
  :ensure t)

(use-package git-gutter
  :ensure t
  :config
  (global-git-gutter-mode t))

(use-package ivy
    :ensure t
    :init
    (setq ivy-initial-inputs-alist nil)
    :config
    (ivy-mode t)

    (use-package counsel
      :ensure t
      :bind (("M-x" . counsel-M-x)))

    (use-package swiper
      :ensure t
      :bind (("C-s" . swiper))))

(use-package magit
  :ensure t)

(use-package projectile
  :ensure t
  :init
  (setq projectile-completion-system 'ivy)
  :config
  (projectile-mode)

  (use-package counsel-projectile
    :ensure t
    :config
    (add-hook 'after-init-hook 'counsel-projectile-mode)))
