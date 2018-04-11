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
  (load-theme 'atom-one-dark t))

(use-package better-defaults
  :ensure t
  :config
  (blink-cursor-mode 0))

(use-package evil
  :ensure t
  :config
  (evil-mode t))

(use-package magit
  :ensure t)
