;; -*- mode: elisp -*-

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;;;;Org mode configuration
;; Enable Org mode
(require 'org)
;; Make Org mode work with files ending in .org
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; The above is the default in recent emacsen

;; You will most likely need to adjust this font size for your system!
;; (defvar runemacs/default-font-size 180)
(defvar runemacs/default-font-size 100)

(setq inhibit-startup-message t)

;;(menu-bar-mode -1)          ; Disable menubar
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
;;(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(setq ring-bell-function 'ignore) ; Disable annoying bell


;; Disable line numbers for some modes
(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; Font Configuration ----------------------------------------------------------

(set-face-attribute 'default nil :font "Fira Code Retina" :height runemacs/default-font-size)

;; Set the fixed pitch face
(set-face-attribute 'fixed-pitch nil :font "Fira Code Retina" :height runemacs/default-font-size)

;; Set the variable pitch face
(set-face-attribute 'variable-pitch nil :font "Cantarell" :height runemacs/default-font-size :weight 'regular)

;; Package Manager Configuration -----------------------------------------------

;; Initialize package sources
(require 'package)

(setq package-archives '(("melpa" . "https://melpa.org/packages/")
                         ("org" . "https://orgmode.org/elpa/")
                         ("elpa" . "https://elpa.gnu.org/packages/")))

(package-initialize)
(unless package-archive-contents
 (package-refresh-contents))

;; Initialize use-package on non-Linux platforms
(unless (package-installed-p 'use-package)
   (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

(column-number-mode)
(global-display-line-numbers-mode t)

(use-package command-log-mode)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#f7f3ee" "#955f5f" "#81895d" "#957f5f" "#7382a0" "#9c739c" "#5f8c7d" "#605a52"])
 '(custom-safe-themes
   '("dad40020beea412623b04507a4c185079bff4dcea20a93d8f8451acb6afc8358" "a0415d8fc6aeec455376f0cbcc1bee5f8c408295d1c2b9a1336db6947b89dd98" "613aedadd3b9e2554f39afe760708fc3285bf594f6447822dd29f947f0775d6c" "3d54650e34fa27561eb81fc3ceed504970cc553cfd37f46e8a80ec32254a3ec3" "f91395598d4cb3e2ae6a2db8527ceb83fed79dbaf007f435de3e91e5bda485fb" "b186688fbec5e00ee8683b9f2588523abdf2db40562839b2c5458fcfb322c8a4" default))
 '(exwm-floating-border-color "#c6bdb2")
 '(fci-rule-color "#605a52")
 '(highlight-tail-colors ((("#ebe8df") . 0) (("#e7e8e2") . 20)))
 '(jdee-db-active-breakpoint-face-colors (cons "#f1ece4" "#7382a0"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#f1ece4" "#81895d"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#f1ece4" "#b9a992"))
 '(objed-cursor-color "#955f5f")
 '(org-agenda-files
   '("~/Dropbox/org/archive.org" "~/Dropbox/org/events.org" "~/Dropbox/org/g_birthdays.org" "~/Dropbox/org/g_facebook.org" "~/Dropbox/org/g_holidays.org" "~/Dropbox/org/g_joost_prive.org" "~/Dropbox/org/g_joost_werk.org" "~/Dropbox/org/habits.org" "~/Dropbox/org/inbox.org" "~/Dropbox/org/index.org" "~/Dropbox/org/journal.org" "~/Dropbox/org/metrics.org" "~/Dropbox/org/plan55.org" "~/Dropbox/org/shopping.org" "~/Dropbox/org/tasks.org"))
 '(package-selected-packages
   '(jedi modus-vivendi-theme modus-operandi-theme modus-themes org-super-agenda vs-light-theme twilight-bright-theme twilight-bright zenburn-theme lsp-ivy lsp-treemacs lsp-ui lsp-mode dired-hide-dotfiles dired-open all-the-icons-dired dired-single org-roam blacken py-autopep8 flycheck elpy visual-fill-column org-bullets org-roam forge magit counsel-projectile projectile hydra evil-collection evil general helpful counsel ivy-rich which-key rainbow-delimiters command-log-mode python-mode use-package))
 '(pdf-view-midnight-colors (cons "#605a52" "#f7f3ee"))
 '(rustic-ansi-faces
   ["#f7f3ee" "#955f5f" "#81895d" "#957f5f" "#7382a0" "#9c739c" "#5f8c7d" "#605a52"])
 '(vc-annotate-background "#f7f3ee")
 '(vc-annotate-color-map
   (list
    (cons 20 "#81895d")
    (cons 40 "#87855d")
    (cons 60 "#8e825e")
    (cons 80 "#957f5f")
    (cons 100 "#957f5f")
    (cons 120 "#957f5f")
    (cons 140 "#957f5f")
    (cons 160 "#977b73")
    (cons 180 "#997787")
    (cons 200 "#9c739c")
    (cons 220 "#996c87")
    (cons 240 "#976573")
    (cons 260 "#955f5f")
    (cons 280 "#9e716b")
    (cons 300 "#a78378")
    (cons 320 "#b09685")
    (cons 340 "#605a52")
    (cons 360 "#605a52")))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; Ivy Configuration -----------------------------------------------------------

(use-package ivy
  :diminish
  :bind (("C-s" . swiper)
         :map ivy-minibuffer-map
         ("TAB" . ivy-alt-done)
         ("C-l" . ivy-alt-done)
         ("C-j" . ivy-next-line)
         ("C-k" . ivy-previous-line)
         :map ivy-switch-buffer-map
         ("C-k" . ivy-previous-line)
         ("C-l" . ivy-done)
         ("C-d" . ivy-switch-buffer-kill)
         :map ivy-reverse-i-search-map
         ("C-k" . ivy-previous-line)
         ("C-d" . ivy-reverse-i-search-kill))
  :config
  (ivy-mode 1))

;; NOTE: The first time you load your configuration on a new machine, you'll
;; need to run the following command interactively so that mode line icons
;; display correctly:
;;
;; M-x all-the-icons-install-fonts

(use-package all-the-icons)

(use-package doom-modeline
  :init (doom-modeline-mode 1)
  :custom ((doom-modeline-height 15)))

;; Theme Configuration -----------------------------------------------------------

(use-package doom-themes
 :init (load-theme 'doom-opera-light t))

;;(use-package modus-themes
;;  :ensure
;;  :init 
;;  (setq modus-themes-bold-constructs t
;;	modus-themes-paren-match 'intense
;;	modus-themes-mode-line '(accented 3d padded)
;;	modus-themes-region '(bg-only)
;;	modus-themes-bold-constructs t
;;	modus-themes-italic-constructs t
;;	modus-themes-paren-match '(bold intense)
;;	modus-themes-syntax '(faint))

;;  ;; Load the theme files before enabling a theme
;; (modus-themes-load-themes)
;;  :config
  ;; Load the theme of your choice:
;;  (modus-themes-load-operandi) ;; OR (modus-themes-load-vivendi)
;;  :bind ("<f5>" . modus-themes-toggle))

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))

(use-package which-key
  :init (which-key-mode)
  :diminish which-key-mode
  :config
  (setq which-key-idle-delay 1))

(use-package ivy-rich
  :init
  (ivy-rich-mode 1))

(use-package counsel
  :bind (("M-x" . counsel-M-x)
         ("C-x b" . counsel-ibuffer)
         ("C-x C-f" . counsel-find-file)
         :map minibuffer-local-map
         ("C-r" . 'counsel-minibuffer-history)))

(use-package helpful
  :custom
  (counsel-describe-function-function #'helpful-callable)
  (counsel-describe-variable-function #'helpful-variable)
  :bind
  ([remap describe-function] . counsel-describe-function)
  ([remap describe-command] . helpful-command)
  ([remap describe-variable] . counsel-describe-variable)
  ([remap describe-key] . helpful-key))

;; Key Binding Configuration ---------------------------------------------------

;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(use-package general
  :config
  (general-create-definer rune/leader-keys
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC")

  (rune/leader-keys
    "t"  '(:ignore t :which-key "toggles")
    "tt" '(counsel-load-theme :which-key "choose theme")))

(use-package evil
  :init
  (setq evil-want-integration t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  (setq evil-want-C-i-jump nil)
  (setq evil-add-default-bindings nil)
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map (kbd "C-g") 'evil-normal-state)
  (define-key evil-insert-state-map (kbd "C-h") 'evil-delete-backward-char-and-join)

  ;; Use visual line motions even outside of visual-line-mode buffers
  (evil-global-set-key 'motion "j" 'evil-next-visual-line)
  (evil-global-set-key 'motion "k" 'evil-previous-visual-line)

  (evil-set-initial-state 'messages-buffer-mode 'normal)
  (evil-set-initial-state 'dashboard-mode 'normal))

(use-package evil-collection
  :after evil
  :config
  (setq forge-add-default-bindings nil)
  (evil-collection-init))

(use-package hydra)

(defhydra hydra-text-scale (:timeout 4)
  "scale text"
  ("j" text-scale-increase "in")
  ("k" text-scale-decrease "out")
  ("f" nil "finished" :exit t))

(rune/leader-keys
  "ts" '(hydra-text-scale/body :which-key "scale text"))

;; Projectile Configuration ----------------------------------------------------

(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :custom ((projectile-completion-system 'ivy))
  :bind-keymap
  ("C-c p" . projectile-command-map)
  :init
  ;; NOTE: Set this to the folder where you keep your Git repos!
  (when (file-directory-p "~/Dropbox")
    (setq projectile-project-search-path '("~/Dropbox")))
  (setq projectile-switch-project-action #'projectile-dired))

(use-package counsel-projectile
  :config (counsel-projectile-mode))

;; Dired Configuration ---------------------------------------------------------
(use-package dired
  :ensure nil
  :commands (dired dired-jump)
  :bind (("C-x C-j" . dired-jump))
  :custom ((dired-listing-switches "-agho --group-directories-first"))
  :config
  (evil-collection-define-key 'normal 'dired-mode-map
    "h" 'dired-single-up-directory
    "l" 'dired-single-buffer))

(use-package dired-single)

(use-package all-the-icons-dired
  :hook (dired-mode . all-the-icons-dired-mode))

(use-package dired-open
  :config
  ;; Doesn't work as expected!
  ;;(add-to-list 'dired-open-functions #'dired-open-xdg t)
  (setq dired-open-extensions '(("png" . "feh")
                                ("mkv" . "mpv"))))

(use-package dired-hide-dotfiles
  :hook (dired-mode . dired-hide-dotfiles-mode)
  :config
  (evil-collection-define-key 'normal 'dired-mode-map
    "H" 'dired-hide-dotfiles-mode))

;; Magit Configuration ---------------------------------------------------------

(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

;; NOTE: Make sure to configure a GitHub token before using this package!
;; - https://magit.vc/manual/forge/Token-Creation.html#Token-Creation
;; - https://magit.vc/manual/ghub/Getting-Started.html#Getting-Started
(use-package forge)

;; Org Mode Configuration ------------------------------------------------------

(defun efs/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (auto-fill-mode 0)
  (visual-line-mode 1)
  (setq evil-auto-indent nil))

(defun efs/org-font-setup ()
  ;; Replace list hyphen with dot
  (font-lock-add-keywords 'org-mode
                          '(("^ *\\([-]\\) "
                             (0 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))

  ;; Set faces for heading levels
  (dolist (face '((org-level-1 . 1.2)
                  (org-level-2 . 1.1)
                  (org-level-3 . 1.05)
                  (org-level-4 . 1.0)
                  (org-level-5 . 1.1)
                  (org-level-6 . 1.1)
                  (org-level-7 . 1.1)
                  (org-level-8 . 1.1)))
    (set-face-attribute (car face) nil :font "Cantarell" :weight 'regular :height (cdr face)))

  ;; Ensure that anything that should be fixed-pitch in Org files appears that way
  (set-face-attribute 'org-block nil :foreground nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-code nil   :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-table nil   :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-verbatim nil :inherit '(shadow fixed-pitch))
  (set-face-attribute 'org-special-keyword nil :inherit '(font-lock-comment-face fixed-pitch))
  (set-face-attribute 'org-meta-line nil :inherit '(font-lock-comment-face fixed-pitch))
  (set-face-attribute 'org-checkbox nil :inherit 'fixed-pitch)
  (set-face-attribute 'line-number nil :inherit 'fixed-pitch)
  (set-face-attribute 'line-number-current-line nil :inherit 'fixed-pitch))

(defun efs/org-mode-setup ()
  (org-indent-mode)
  (variable-pitch-mode 1)
  (visual-line-mode 1))

(use-package org
  :pin org
  :commands (org-capture org-agenda)
  :hook (org-mode . efs/org-mode-setup)
  :config
  (setq org-ellipsis " ▾")

  (setq org-agenda-start-with-log-mode t)
  (setq org-log-done 'time)
  (setq org-log-into-drawer t)

  (setq org-agenda-files (directory-files-recursively "~/Dropbox/org/" "\\.org$"))

  (require 'org-habit)
  (add-to-list 'org-modules 'org-habit)
  (setq org-habit-graph-column 60)

  (setq org-todo-keywords
    '((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d!)")
      (sequence "GET(g)" "|" "GOT(gg)")
      (sequence "BACKLOG(b)" "PLAN(p)" "READY(r)" "ACTIVE(a)" "REVIEW(v)" "WAIT(w@/!)" "HOLD(h)" "|" "COMPLETED(c)" "CANC(k@)")))

  (setq org-refile-targets
    '(("~/Dropbox/org/archive.org" :maxlevel . 1)
      ("~/Dropbox/org/shopping.org" :maxlevel . 1)
      ("~/Dropbox/org/tasks.org" :maxlevel . 1)))

  ;; Save Org buffers after refiling!
  (advice-add 'org-refile :after 'org-save-all-org-buffers)

  (setq org-tag-alist
    '((:startgroup)
       ; Put mutually exclusive tags here
       (:endgroup)
       ("errand" . ?E)
       ("home" . ?H)
       ("work" . ?W)
       ("agenda" . ?a)
       ("planning" . ?p)
       ("publish" . ?P)
       ("batch" . ?b)
       ("health" . ?h)
       ("note" . ?n)
       ("shopping" . ?s)
       ("idea" . ?i)))

  ;; Configure custom agenda views
  (setq org-agenda-custom-commands
   '(("D" "Dashboard"
     ((agenda "" ((org-deadline-warning-days 7)))
      (todo "TODO"
	    ((org-agenda-overriding-header "TODO Tasks")
             (org-agenda-show-tags -1)))
      (tags-todo "shopping" ((org-agenda-overriding-header "Shopping Tasks")))
    ))

    ("N" "Next Tasks"
     ((todo "NEXT"
        ((org-agenda-overriding-header "Next Tasks")))))

       ("p" "Active Projects"
         ((agenda "")
          (todo "ACTIVE"
                ((org-agenda-overriding-header "Active Projects")
                 (org-agenda-max-todos 5)
                 (org-agenda-files org-agenda-files)))))

       ("W" "Workflow Status"
         ((todo "WAIT"
                ((org-agenda-overriding-header "Waiting on External")
                 (org-agenda-files org-agenda-files)))
          (todo "REVIEW"
                ((org-agenda-overriding-header "In Review")
                 (org-agenda-files org-agenda-files)))
          (todo "PLAN"
                ((org-agenda-overriding-header "In Planning")
                 (org-agenda-todo-list-sublevels nil)
                 (org-agenda-files org-agenda-files)))
          (todo "BACKLOG"
                ((org-agenda-overriding-header "Project Backlog")
                 (org-agenda-todo-list-sublevels nil)
                 (org-agenda-files org-agenda-files)))
          (todo "READY"
                ((org-agenda-overriding-header "Ready for Work")
                 (org-agenda-files org-agenda-files)))
          (todo "ACTIVE"
                ((org-agenda-overriding-header "Active Projects")
                 (org-agenda-files org-agenda-files)))
          (todo "COMPLETED"
                ((org-agenda-overriding-header "Completed Projects")
                 (org-agenda-files org-agenda-files)))
          (todo "CANC"
                ((org-agenda-overriding-header "Cancelled Projects")
                 (org-agenda-files org-agenda-files)))))

       ("S" "Shopping list"
         ((agenda)
	  (tags-todo "shopping")))
	
    ))


  (setq org-capture-templates
    `(("t" "Tasks")
      ("tt" "Task" entry
           (file "~/Dropbox/org/tasks.org")
           "* TODO %?\n  <%<%a %d-%m-%Y>>")

      ("s" "Shoppinglist")
      ("si" "Item" entry
           (file "~/Dropbox/org/shopping.org")
           "* GET %? :shopping:\n")

      ("j" "Journal Entries")
      ("jj" "Journal" entry
           (file "~/Dropbox/org/journal.org")
           "* Journal entry for date: <%<%d-%m-%Y %H:%M>>\n  %?\n\n")

      ("m" "Metrics Capture")
      ("mw" "Weight" table-line
           (file+headline "~/Dropbox/org/metrics.org" "Weight")
           "| <%<%a %d-%m-%Y>> | %^{Weight} | %^{Notes} |" :kill-buffer t)))

  (define-key global-map (kbd "C-c j")
    (lambda () (interactive) (org-capture nil "jj")))

  (efs/org-font-setup))

(use-package org-bullets
  :after org
  :hook (org-mode . org-bullets-mode)
  :custom
  (org-bullets-bullet-list '("◉" "○" "●" "○" "●" "○" "●")))

(use-package org-roam
  :ensure t
  :custom
  (org-roam-directory "~/Dropbox/org/roam")
  (org-roam-completion-everywhere t)
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n i" . org-roam-node-insert)
         :map org-mode-map
         ("C-M-i" . completion-at-point)
         :map org-roam-dailies-map
         ("Y" . org-roam-dailies-capture-yesterday)
         ("T" . org-roam-dailies-capture-tomorrow))
  :bind-keymap
  ("C-c n d" . org-roam-dailies-map)
  :config
  (require 'org-roam-dailies) ;; Ensure the keymap is available
  (org-roam-db-autosync-mode))

(defun efs/org-mode-visual-fill ()
  (setq visual-fill-column-width 100
        visual-fill-column-center-text t)
  (visual-fill-column-mode 1))

(use-package visual-fill-column
  :hook (org-mode . efs/org-mode-visual-fill))

(use-package org-super-agenda
  :defer 2
  :config
  (org-super-agenda-mode)
  )

(let ((org-super-agenda-groups
       '((:auto-category t)
	)))
    (org-agenda-list))

;; LSP Configuration ------------------------------------------------------
(defun efs/lsp-mode-setup ()
  (setq lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols))
  (lsp-headerline-breadcrumb-mode))

(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook (lsp-mode . efs/lsp-mode-setup)
  :init
  (setq lsp-keymap-prefix "C-c l")  ;; Or 'C-l', 's-l'
  :config
  (lsp-enable-which-key-integration t))

(use-package lsp-ui
  :hook (lsp-mode . lsp-ui-mode)
  :custom
  (lsp-ui-doc-position 'bottom))

(use-package lsp-treemacs
  :after lsp)

(use-package lsp-ivy)

;;(use-package dap-mode
;;  ;; Uncomment the config below if you want all UI panes to be hidden by default!
;;  ;; :custom
;;  (lsp-enable-dap-auto-configure nil)
;;  ;; :config
;;  (dap-ui-mode 1)

;;  :config
;;  ;; Set up Node debugging
;;  (require 'dap-node)
;;  (dap-node-setup) ;; Automatically installs Node debug adapter if needed

;;  ;; Bind `C-c l d` to `dap-hydra` for easy access
;;  (general-define-key
;;    :keymaps 'lsp-mode-map
;;    :prefix lsp-keymap-prefix
;;    "d" '(dap-hydra t :wk "debugger")))

;; Python Configuration ------------------------------------------------------

;; (use-package python-mode
;;   :init
;;   :config)
;;  :hook (python-mode . lsp-deferred)
;;  :custom
;;  ;; NOTE: Set these if Python 3 is called "python3" on your system!
;;  (python-shell-interpreter "python")
;;  (dap-python-executable "python")
;;  (dap-python-debugger 'debugpy)
;;  :config
;;  (require 'dap-python))

(use-package pyvenv
  :config
  (pyvenv-mode 1))

(use-package elpy
  :ensure t
  :init
  (elpy-enable))
(use-package flycheck)
(use-package py-autopep8)
(use-package blacken)

;; Enable Flycheck
(when (require 'flycheck nil t)
   (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
   ;;(defvaralias 'flycheck-python-flake8-executable 'python-shell-interpreter)
   ;;(setq flycheck-python-pylint-executable "python3")
   (setq flycheck-python-pylint-executable "pylint")
   (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enable autopep8
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-mode)

(setq python-indent-guess-indent-offset t)
(setq python-indent-guess-indent-offset-verbose nil)

;; Auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; Jedi
(defvar jedi-config:with-virtualenv nil)
(defvar jedi-config:vcs-root-sentinel ".git")
(defvar jedi-config:python-module-sentinel "__init__.py")

(use-package jedi)
(autoload 'jedi:setup "jedi" nil t)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

;; Now hook everything up
;; Hook up to autocomplete
(add-to-list 'ac-sources 'ac-source-jedi-direct)

;; And custom keybindings
(defun jedi-config:setup-keys ()
  (local-set-key (kbd "M-.") 'jedi:goto-definition)
  (local-set-key (kbd "M-,") 'jedi:goto-definition-pop-marker)
  (local-set-key (kbd "M-?") 'jedi:show-doc)
  (local-set-key (kbd "M-/") 'jedi:get-in-function-call))

;; Don't let tooltip show up automatically
(setq jedi:get-in-function-call-delay 10000000)
;; Start completion at method dot
(setq jedi:complete-on-dot t)
;; Use custom keybinds
(add-hook 'python-mode-hook 'jedi-config:setup-keys)

;; end of Python Configuration ------------------------------------------------------

;; js Configuration ------------------------------------------------------
(defvar js-run-current-file-before-hook nil "Hook for `js-run-current-file'. Before the file is run.")

(defvar js-run-current-file-after-hook nil "Hook for `js-run-current-file'. After the file is run.")
(defun js-run-current-go-file ()
  "Run or build current golang file.

To build, call `universal-argument' first.

Version 2018-10-12"
  (interactive)
  (when (not (buffer-file-name)) (save-buffer))
  (when (buffer-modified-p) (save-buffer))
  (let* (
         ($outputb "*js-run output*")
         (resize-mini-windows nil)
         ($fname (buffer-file-name))
         ($fSuffix (file-name-extension $fname))
         ($progName "go")
         $cmdStr)
    (setq $cmdStr (concat $progName " \""   $fname "\" &"))
    (if current-prefix-arg
        (progn
          (setq $cmdStr (format "%s build \"%s\" " $progName $fname)))
      (progn
        (setq $cmdStr (format "%s run \"%s\" &" $progName $fname))))
    (progn
      (message "running %s" $fname)
      (message "%s" $cmdStr)
      (shell-command $cmdStr $outputb )
      ;;
      )))
(defvar js-run-current-file-map nil "A association list that maps file extension to program path, used by `js-run-current-file'. First element is file suffix, second is program name or path. You can add items to it.")
(setq
 js-run-current-file-map
 '(
   ("php" . "php")
   ("pl" . "perl")
   ("py" . "python")
   ("py2" . "python2")
   ("py3" . "python3")
   ("rb" . "ruby")
   ("go" . "go run")
   ("hs" . "runhaskell")
   ("js" . "deno run")
   ("ts" . "deno run") ; TypeScript
   ("tsx" . "tsc")
   ("mjs" . "node --experimental-modules ")
   ("sh" . "bash")
   ("clj" . "java -cp ~/apps/clojure-1.6.0/clojure-1.6.0.jar clojure.main")
   ("rkt" . "racket")
   ("ml" . "ocaml")
   ("vbs" . "cscript")
   ("tex" . "pdflatex")
   ("latex" . "pdflatex")
   ("java" . "javac")
   ;; ("pov" . "/usr/local/bin/povray +R2 +A0.1 +J1.2 +Am2 +Q9 +H480 +W640")
   ))
(defun js-run-current-file ()
  "Execute the current file.
For example, if the current buffer is x.py, then it'll call 「python x.py」 in a shell.
Output is printed to buffer “*js-run output*”.
File suffix is used to determine which program to run, set in the variable `js-run-current-file-map'.

If the file is modified or not saved, save it automatically before run.

URL `http://jslee.info/emacs/emacs/elisp_run_current_file.html'
Version 2020-09-24 2021-01-21"
  (interactive)
  (let (
        ($outBuffer "*js-run output*")
        (resize-mini-windows nil)
        ($suffixMap js-run-current-file-map )
        $fname
        $fSuffix
        $progName
        $cmdStr)
    (when (not (buffer-file-name)) (save-buffer))
    (when (buffer-modified-p) (save-buffer))
    (setq $fname (buffer-file-name))
    (setq $fSuffix (file-name-extension $fname))
    (setq $progName (cdr (assoc $fSuffix $suffixMap)))
    (setq $cmdStr (concat $progName " \""   $fname "\" &"))
    (run-hooks 'js-run-current-file-before-hook)
    (cond
     ((string-equal $fSuffix "el")
      (load $fname))
     ((string-equal $fSuffix "go")
      (js-run-current-go-file))
     ((string-equal $fSuffix "java")
      (progn
        (shell-command (format "javac %s" $fname) $outBuffer )
        (shell-command (format "java %s" (file-name-sans-extension
                                          (file-name-nondirectory $fname))) $outBuffer )))
     (t (if $progName
            (progn
              (message "Running")
              (shell-command $cmdStr $outBuffer ))
          (error "No recognized program file suffix for this file."))))
    (run-hooks 'js-run-current-file-after-hook)))

(progn
  ;; define custom keys
  (define-prefix-command 'js-keymap)
  (define-key js-keymap (kbd "<f8>") 'js-run-current-file)
  (global-set-key (kbd "<f9>") js-keymap))
