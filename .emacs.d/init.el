;; Definitions
(defalias 'yes-or-no-p 'y-or-n-p)

;; Modes
(blink-cursor-mode 0)
(menu-bar-mode -1)

;; Packages
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package)
  (require 'use-package))

(use-package atom-one-dark-theme
  :ensure t
  :config
  (load-theme 'atom-one-dark t)
  (set-face-foreground 'font-lock-comment-face "#8c919a"))

(use-package better-defaults
  :ensure t)

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

(use-package magit
  :ensure t)
