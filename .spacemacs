;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.
;; (setq font-lock-maximum-decoration t)
(setq exec-path-from-shell-debug t)
;; (global-unset-key (kbd "C-z"))
(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(systemd
     nginx
     react
     typescript
     graphviz
     html
     javascript
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; perspectives
     helm
     auto-completion
     better-defaults
     emacs-lisp
     git
     markdown
     neotree
     ;; org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom)
     shell-scripts
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-private-snippets-directory nil
                      auto-completion-enable-snippets-in-popup t
                      ;; auto-completion-complete-with-key-sequence "jk"
)
     ;; (semantic :variables global-semantic-stickyfunc-mode nil
     ;;           global-semantic-stickyfunc-mode-turned-on nil)
     (semantic :packages (not stickyfunc-enhance))
     ;; github
     ;; gnus
     ;; ibuffer
     (ibuffer :variables ibuffer-group-buffers-by 'projects)
     syntax-checking
     ;; java
     ;; gtags
     (python :variables python-test-runner 'pytest)
     ;; ipython-notebook
     dash
     version-control
     spacemacs-layouts
     speed-reading
     (ranger :variables
             ranger-show-preview t)
     selectric
     yaml
     ycmd
     imenu-list
     bm
     fasd
     themes-megapack
     ;; tabbar
     ;; srspeadbar
     ;; my-python-mods
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     tabs
     ;; (go :variables go-use-gometalinter t)
     go
     vagrant
     ruby
     groovy
     terraform
     c-c++
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      ;; (company-anaconda :location local)
                                      ;; (anaconda-mode :location local) ;;# not working what the duck
                                      wgrep
                                      ;; php-mode
                                      ;; php+-mode
                                      gradle-mode
                                      ;; s
                                      ;; dash
                                      xml
                                      ;; groovy-mode
                                      w3m
                                      magit-svn
                                      yaml-tomato
                                      yaml-mode
                                      ;; camcorder
                                      on-screen
                                      dockerfile-mode
                                      docker
                                      xclip
                                      ;; editorconfig
                                      ;; emmet-mode
                                      ;; firefox-controller
                                      tox
                                      vmd-mode
                                      ;; vagrant
                                      ;; pycoverage
                                      realgud
                                      ;; tabbar
                                      ;; tabbar-ruler
                                      toml-mode
                                      toml
                                      kubernetes
                                      kubernetes-evil
                                      kubernetes-tramp
                                      timonier
                                      vagrant-tramp
                                      sublimity
                                      repo
                                      minimap
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https nil
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5
   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the lastest
   ;; version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil
   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil
   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner nil
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 90)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         darkokai
                         kaolin-ocean
                         darktooth
                         alect-dark
                         apropospriate-dark
                         darkokai
                         tsdh-dark
                         afternoon
                         alect-black-alt
                         ample-zen
                         darkburn
                         granger
                         ample
                         badwolf
                         spacemacs-dark
                         spacemacs-light)
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13
                               :weight normal
                               :width normal
                               :powerline-scale 1.3)
   ;; dotspacemacs-default-font '("Monaco"
   ;;                             :size 13
   ;;                             :antialias nil
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 1.1)
   ;; dotspacemacs-default-font '("Monospace"
   ;;                             :size 13
   ;;                             :antialias nil
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 1.1)
   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non-nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, `J' and `K' move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non-nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non-nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers t
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"
   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup 'trailing
   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil
   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs t
   ))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (setq projectile-enable-caching t)
  )

(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."
  ;; (load "/home/rasztasd/src/tabbar-ruler.el/tabbar-ruler.el")
  ;; (load "/home/rasztasd/src/tabbar/tabbar.el")
  ;; (load "/home/rasztasd/src/anaconda-mode/anaconda-mode.el")
  ;; (global-linum-mode)
  ;;(require 'wgrep)
  ;; (setq-default c-basic-offset 2)
  ;; (setq projectile-indexing-method 'alien)
  ;; (setq projectile-indexing-method 'native) ;; (add-hook 'gradle-mode '(company-mode t))
  ;; (add-hook 'javascript-mode '(setq tab-width 2))
  ;; (require 'on-screen)
  ;; (on-screen-global-mode +1)
  ;; (golden-ratio-mode)
  (spacemacs/toggle-vi-tilde-fringe-off)
  ;; (spacemacs/toggle-semantic-stickyfunc-globally-off)
  (spacemacs/toggle-semantic-stickyfunc-off)
  ;; (setq-default git-enable-magit-svn-plugin t)
  ;; (setq-default indent-tabs-mode nil)
  (add-to-list 'auto-mode-alist '("\\Jenkinsfile\\'" . groovy-mode))
  (add-to-list 'auto-mode-alist '("Jenkinsfile*" . groovy-mode))
  (add-to-list 'auto-mode-alist '(".*_EDITMSG\\'" . log-entry-mode))
  (add-to-list 'auto-mode-alist '("Makefile*" . makefile-gmake-mode))
  (add-to-list 'auto-mode-alist '("Dockerfile*" . dockerfile-mode))
  (add-to-list 'auto-mode-alist '("\\.eclass$" . shell-script-mode))
  (add-to-list 'auto-mode-alist '("\\.ebuild$" . shell-script-mode))
  (global-set-key (kbd "C-ő") 'evil-escape)
  (setq dotspacemacs-elpa-https nil)
  (global-set-key (kbd "C-<return>") 'evil-previous-line-first-non-blank)
  (global-set-key (kbd "C-S-<return>") 'evil-previous-line-first-non-blank)
  (global-set-key (kbd "S-<return>") 'evil-previous-line-first-non-blank)
  ;; (global-set-key (kbd "C-<escape>") 'quit-window)
  ;; (global-set-key (kbd "C-S-k") 'quit-window)
  (global-set-key (kbd "C-<escape>") 'spacemacs/kill-this-buffer)
  (global-set-key (kbd "C-S-k") 'spacemacs/kill-this-buffer)
  (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
  (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
  (setq mouse-wheel-follow-mouse nil)
  (spacemacs/toggle-semantic-stickyfunc-globally-off)
  (message "User-config loaded OK.")
  (tabbar-ruler-group-by-projectile-project-and-group-fileless-buffers)
  (setq magit-revision-show-gravatars nil)
  (server-mode 1)
  (load-library "realgud")

  ;; go things
  (load "/home/mcallister/.emacs.d/private/protobuff/protobuf-mode.el")
  (add-to-list 'auto-mode-alist '("\\.proto$" . protobuf-mode))
  (global-set-key (kbd "C-i") 'company-complete)
  ;; go things END
  ;; (exec-path-from-shell-copy-env "GOPATH")
  ;; (exec-path-from-shell-copy-env "GOROOT")
  ;; (exec-path-from-shell-copy-env "PATH")
  ;; (require 'sublimity)
  ;; (require 'sublimity-map)
  ;; (sublimity-map-set-delay nil)
  ;; (sublimity-mode 1)
  (setenv "GO" "/home/mcallister/src/coreroller/backend/src")
  (message "ITS FIIIINE")
)

(custom-set-variables
 ;; custom-set-variables was added by custom.
 ;; if you edit it by hand, you could mess it up, so be careful.
 ;; your init file should contain only one such instance.
 ;; if there is more than one, they won't work right.
 '(ac-auto-start 1)
 '(c-basic-offset 4)
 '(c-offsets-alist (quote ((substatement-open . 0) (case-label . +))))
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "d9aaff4db65a545989c0976c759a44a16439cac7717f4e58cc01efc771d90449" "630b387ca75cde18a70d99cc888a208c9f5aa88c902550424a2f222c42dce71b" "9cb2ce95b651ec5cad605bcd097366d72731e9e096943e7a04cba860eb898dff" "4da1e6c2c0b84e9805805e1226a9f5bdd86b0201ea7f150e33ead5249a85d066" "ce00188d993fd7148ab4430517acc72982a5590124684a26f2c96aaaf362522e" "38908037082b9fc2e6762961026299d026963e57c726c3bc0b9e66cd0def0926" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(ediff-split-window-function (quote split-window-horizontally) t)
 '(gdb-many-windows t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(jde-jdk-registry (quote (("1.7" . "/usr/lib/jvm/java-7-openjdk-amd64"))))
 '(jde-junit-testrunner-type "org.junit.runner.junitcore")
 '(jde-run-option-application-args (quote ("")))
 '(jdee-server-dir "/home/rasztasd/bin/ecj")
 '(large-file-warning-threshold nil)
 '(line-number-mode t)
 '(magit-log-arguments
   (quote
    ("--graph" "--color" "--decorate" "--follow" "-n256")))
 '(make-backup-files nil)
 '(minimap-automatically-delete-window nil)
 '(minimap-dedicated-window t)
 '(minimap-highlight-line nil)
 '(minimap-mode t)
 '(minimap-recreate-window t)
 '(minimap-update-delay 0)
 '(minimap-window-location (quote right))
 '(package-selected-packages
   (quote
    (web-completion-data auto-complete pos-tip powerline org-category-capture skewer-mode request-deferred websocket deferred js2-mode simple-httpd json-mode packed highlight undo-tree projectile avy hydra haml-mode flycheck eclim company smartparens evil yasnippet helm helm-core gh markdown-mode alert magit magit-popup git-commit with-editor async test-simple load-relative dash zeal-at-point yapfify yaml-tomato yaml-mode xterm-color xclip ws-butler winum which-key wgrep web-mode w3m volatile-highlights vi-tilde-fringe vagrant uuidgen use-package tox toc-org tagedit stickyfunc-enhance srefactor spray spaceline smeargle slim-mode shell-pop selectric-mode scss-mode sass-mode restart-emacs realgud ranger rainbow-delimiters pyvenv pytest pyenv-mode pycoverage py-isort pug-mode pip-requirements php-mode php+-mode persp-mode pcre2el paradox orgit org-projectile org-present org-pomodoro org-download org-bullets open-junk-file on-screen neotree multi-term move-text mmm-mode markdown-toc magit-svn magit-gitflow magit-gh-pulls macrostep lorem-ipsum live-py-mode linum-relative link-hint less-css-mode info+ indent-guide hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag groovy-mode gradle-mode google-translate golden-ratio gnuplot github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md fuzzy flycheck-pos-tip flx-ido firefox-controller fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav ein editorconfig dumb-jump dockerfile-mode docker diff-hl define-word cython-mode company-web company-statistics company-emacs-eclim company-anaconda column-enforce-mode clean-aindent-mode camcorder auto-yasnippet auto-highlight-symbol auto-compile adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(perl-indent-level 2)
 '(revert-without-query (quote (".*")))
 '(safe-local-variable-values
   (quote
    ((eval pyvenv-workon "worflows_py27")
     (eval venv-workon "worflows_py27"))))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 1)
 '(scroll-preserve-screen-position t)
 '(sh-basic-offset 2)
 '(shell-file-name "/bin/bash")
 '(show-trailing-whitespace t)
 '(tab-width 2)
 '(tags-case-fold-search nil)
 '(tags-revert-without-query t)
 '(which-function-mode t))
(custom-set-faces
 ;; custom-set-faces was added by custom.
 ;; if you edit it by hand, you could mess it up, so be careful.
 ;; your init file should contain only one such instance.
 ;; if there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(minimap-active-region-background ((t nil)))
 '(minimap-font-face ((t (:height 50 :family "dejavu sans mono")))))
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-auto-start 1 t)
 '(c-basic-offset 4)
 '(c-offsets-alist (quote ((substatement-open . 0) (case-label . +))))
 '(column-number-mode t)
 '(custom-safe-themes
   (quote
    ("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e" "d9aaff4db65a545989c0976c759a44a16439cac7717f4e58cc01efc771d90449" "630b387ca75cde18a70d99cc888a208c9f5aa88c902550424a2f222c42dce71b" "9cb2ce95b651ec5cad605bcd097366d72731e9e096943e7a04cba860eb898dff" "4da1e6c2c0b84e9805805e1226a9f5bdd86b0201ea7f150e33ead5249a85d066" "ce00188d993fd7148ab4430517acc72982a5590124684a26f2c96aaaf362522e" "38908037082b9fc2e6762961026299d026963e57c726c3bc0b9e66cd0def0926" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(ediff-split-window-function (quote split-window-horizontally) t)
 '(gdb-many-windows t t)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(jde-jdk-registry (quote (("1.7" . "/usr/lib/jvm/java-7-openjdk-amd64"))))
 '(jde-junit-testrunner-type "org.junit.runner.junitcore")
 '(jde-run-option-application-args (quote ("")))
 '(jdee-server-dir "/home/rasztasd/bin/ecj")
 '(large-file-warning-threshold nil)
 '(line-number-mode t)
 '(magit-log-arguments
   (quote
    ("--graph" "--color" "--decorate" "--follow" "-n256")))
 '(make-backup-files nil)
 '(minimap-automatically-delete-window nil)
 '(minimap-dedicated-window t)
 '(minimap-highlight-line nil)
 '(minimap-mode t)
 '(minimap-recreate-window t)
 '(minimap-update-delay 0)
 '(minimap-window-location (quote right))
 '(package-selected-packages
   (quote
    (minimap web-completion-data auto-complete pos-tip powerline org-category-capture skewer-mode request-deferred websocket deferred js2-mode simple-httpd json-mode packed highlight undo-tree projectile avy hydra haml-mode flycheck eclim company smartparens evil yasnippet helm helm-core gh markdown-mode alert magit magit-popup git-commit with-editor async test-simple load-relative dash zeal-at-point yapfify yaml-tomato yaml-mode xterm-color xclip ws-butler winum which-key wgrep web-mode w3m volatile-highlights vi-tilde-fringe vagrant uuidgen use-package tox toc-org tagedit stickyfunc-enhance srefactor spray spaceline smeargle slim-mode shell-pop selectric-mode scss-mode sass-mode restart-emacs realgud ranger rainbow-delimiters pyvenv pytest pyenv-mode pycoverage py-isort pug-mode pip-requirements php-mode php+-mode persp-mode pcre2el paradox orgit org-projectile org-present org-pomodoro org-download org-bullets open-junk-file on-screen neotree multi-term move-text mmm-mode markdown-toc magit-svn magit-gitflow magit-gh-pulls macrostep lorem-ipsum live-py-mode linum-relative link-hint less-css-mode info+ indent-guide hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flx helm-descbinds helm-dash helm-css-scss helm-company helm-c-yasnippet helm-ag groovy-mode gradle-mode google-translate golden-ratio gnuplot github-search github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md fuzzy flycheck-pos-tip flx-ido firefox-controller fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu eshell-z eshell-prompt-extras esh-help emmet-mode elisp-slime-nav ein editorconfig dumb-jump dockerfile-mode docker diff-hl define-word cython-mode company-web company-statistics company-emacs-eclim company-anaconda column-enforce-mode clean-aindent-mode camcorder auto-yasnippet auto-highlight-symbol auto-compile adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(perl-indent-level 2)
 '(revert-without-query (quote (".*")))
 '(safe-local-variable-values
   (quote
    ((eval pyvenv-workon "worflows_py27")
     (eval venv-workon "worflows_py27"))))
 '(scroll-bar-mode nil)
 '(scroll-conservatively 1)
 '(scroll-preserve-screen-position t)
 '(sh-basic-offset 2)
 '(shell-file-name "/bin/bash")
 '(show-trailing-whitespace t)
 '(tab-width 2)
 '(tags-case-fold-search nil)
 '(tags-revert-without-query t)
 '(which-function-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(minimap-active-region-background ((t nil)))
 '(minimap-font-face ((t (:height 50 :family "dejavu sans mono")))))
)
