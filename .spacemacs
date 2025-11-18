;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; (setq font-lock-maximum-decoration t)
;; (setq url-proxy-services '(("no_proxy" . "work\\.com")
;;                            ("http" . "10.144.1.10:8080")))
;; (setq exec-path-from-shell-debug t)
(let ((private-init-el (expand-file-name "~/.emacs.d/private/private/private.init.el"))) (if (file-exists-p private-init-el) (load private-init-el)))
;; (elp-instrument-package "lsp-")
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

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. "~/.mycontribs/")
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(autohotkey
     (typescript :variables
                 typescript-backend 'lsp
                 ;; typescript-lsp-linter nil
                 typescript-linter 'eslint
                 typescript-fmt-tool 'prettier
                 typescript-fmt-on-save t
                 )
     prettier
     lua
     openai
     php
     protobuf
     csv
     systemd
     nginx
     ;; react
     ;; typescript
     graphviz
     html
     (javascript :variables
                 javascript-backend 'lsp)
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; perspectives
     helm
     ;; (compleseus :variables
     ;;             compleseus-engine 'selectrum)
     ;; ivy
     ;; auto-completion
     better-defaults
     emacs-lisp
     git
     markdown
     neotree
     ;; (treemacs :variable
     ;;           treemacs-use-follow-mode 'tag)
     ;; org
     (shell :variables
            shell-default-height 30
            shell-default-position 'bottom
            shell-default-term-shell "/bin/bash")
     shell-scripts
     (auto-completion :variables
                      auto-completion-return-key-behavior 'complete
                      ;; auto-completion-tab-key-behavior 'complete
                      auto-completion-tab-key-behavior 'cycle
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-private-snippets-directory nil
                      auto-completion-enable-snippets-in-popup t
                      auto-completion-enable-help-tooltip t
                      auto-completion-enable-sort-by-usage t
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
     ;; (python :variables python-test-runner 'pytest python-backend 'anaconda)
     ;; (python :variables python-test-runner 'pytest python-backend 'lsp)
     (vue :variables vue-backend 'lsp)
     (python :variables python-test-runner 'pytest
             ;; python-backend 'lsp python-lsp-server 'mspyls
             ;; python-backend 'anaconda
             python-backend 'lsp
             ;; python-lsp-git-root "~/src/python-language-server"
             lsp-ui-doc-enable nil)
     ;; ipython-notebook
     dash
     version-control
     (spacemacs-layouts
      :variables spacemacs-layouts-restrict-spc-tab t
      :variables persp-autokill-buffer-on-remove 'kill-weak)
     speed-reading
     (ranger :variables
             ranger-show-preview t)
     selectric
     yaml
     bm
     fasd
     themes-megapack
     ;; tabbar
     ;; srspeadbar
     ;; my-python-mods
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     ;; tabs
     ;; (go :variables go-use-gometalinter t)
     ;; (go :variables go-backend 'lsp :variables go-use-golangci-lint t)
     ;; (go 'lsp :variables go-use-golangci-lint t) rossz amúgy is
     ;; (go :variables go-backend 'lsp :variables go-use-golangci-lint t)
     ;; (go :variables go-backend 'lsp :variables go-use-golangci-lint t)
     ;; (go :variables go-backend 'go-mode godoc-at-point-function 'godoc-gogetdoc :variables go-backend 'lsp)
     ;; go
     ;; (go :variables go-backend 'go-mode :variables godoc-at-point-function 'godoc-gogetdoc)
     (go
      :variables
      go-backend 'lsp
      go-format-before-save t
      )
     ;; (go :variables go-backend 'go-mode godoc-at-point-function 'godoc-gogetdoc)
     ;; (go :variables go-backend 'lsp)
     (java :variables java-backend 'meghanada)
     ;; (java-mode (java-backend . lsp))
     ;; (java-mode (java-backend . meghanada))
     ;; (go :variables go-backend 'go-mode :variables go-use-golangci-lint t)
     ;; (go :variables go-backend 'go-mode)
     dap
     ;; go
     vagrant
     ruby
     groovy
     terraform
     ;; (c-c++ :variables c-c++-backend 'lsp-ccls)
     ;; (c-c++ :variables c-c++-backend 'lsp-clangd)
     ;; (c-c++ :variables c-c++-backend 'rtags)
     (c-c++ :variables c-c++-backend 'lsp-clangd)
     ;; (c-c++ :variables c-c++-backend 'lsp-ccls)
     spotify
                                        ;lsp
     (lsp :variables lsp-enable-indentation nil)
     (tabs :variables hide)
     ;; (tabs :variables tabs-highlight-current-tab 'left)
     )

   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(
                                      ;; (company-anaconda :location local)
                                      ;; (anaconda-mode :location local) ;;# not working what the duck
                                      dired-icon
                                      minimap
                                      ;; perfect-margin
                                      wgrep
                                      ;; php-mode
                                      ;; php+-mode
                                      gradle-mode
                                      ;; s
                                      ;; dash
                                      xml
                                      ;; groovy-mode
                                      w3m
                                      yaml-tomato
                                      yaml-mode
                                      ;; camcorder
                                      on-screen
                                      dockerfile-mode
                                      docker
                                      xclip
                                      editorconfig
                                      ;; emmet-mode
                                      ;; firefox-controller
                                      tox
                                      vmd-mode
                                      ;; vagrant
                                      ;; pycoverage
                                      realgud
                                      ;; company-box
                                      ;; tabbar
                                      ;; tabbar-ruler
                                      toml-mode
                                      toml
                                      kubernetes
                                      kubernetes-evil
                                      ;; tramp-container
                                      timonier
                                      vagrant-tramp
                                      sublimity
                                      repo
                                      mustache-mode
                                      exec-path-from-shell
                                      go-dlv
                                      dap-mode
                                      sqlite3
                                      all-the-icons
                                      jest
                                      mongo
                                      ;; (vue-mode :variables vue-backend 'lsp)
                                      ;; vue-html-mode
                                      ;; eglot

                                      ;; centaur-tabs
                                      ;; disable-mouse
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
   dotspacemacs-install-packages 'used-but-keep-unused))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default spacemacs-27.1.pdmp)
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

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

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 2048 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
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

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

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

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; If non-nil, show file icons for entries and headings on Spacemacs home buffer.
   ;; This has no effect in terminal or if "nerd-icons" package or the font
   ;; is not installed. (default nil)
   dotspacemacs-startup-buffer-show-icons nil

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent t

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   ;; dotspacemacs-themes '(
   ;;                       solarized-wombat-dark
   ;;                       alect-dark
   ;;                       darkokai
   ;;                       kaolin-ocean
   ;;                       darktooth
   ;;                       alect-dark
   ;;                       apropospriate-dark
   ;;                       darkokai
   ;;                       tsdh-dark
   ;;                       afternoon
   ;;                       alect-black-alt
   ;;                       ample-zen
   ;;                       darkburn
   ;;                       granger
   ;;                       ample
   ;;                       badwolf
   ;;                       spacemacs-dark
   ;;                       spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   ;; dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
   ;; dotspacemacs-mode-line-theme '(doom :vim-powerfile wave :separator-scale 1.5)
   ;; dotspacemacs-mode-line-theme '(doom :vim-powerfile wave :separator-scale 1.5)
   ;; dotspacemacs-mode-line-theme '(doom :spacemacs wave :separator-scale 1.5)
   ;; dotspacemacs-mode-line-theme '(all-the-icons :vim-powerfile wave :separator-scale 1.5)
   ;; dotspacemacs-mode-line-theme '(all-the-icons :separator-scale 2.1)
   dotspacemacs-mode-line-theme '(doom :separator-scale 0.5)

   ;; nem megy, valami formázás probléma van
   ;; dotspacemacs-mode-line-theme '(all-the-icons)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. This setting has no effect when
   ;; running Emacs in terminal. The font set here will be used for default and
   ;; fixed-pitch faces. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '("Source Code Pro"
                               :size 13.0
                               :weight normal
                               :width normal)
   syntax-checking-enable-by-default t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
                                        ;bla
   ;; dotspacemacs-default-font '("SauceCodeProNerdFont"
   ;;                             :size 11.0
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 0.5)

   ;; dotspacemacs-default-font '("Monaco"
   ;;                             :size 13
   ;;                             :antialias nil
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 1.1)
   ;; dotspacemacs-default-font '("Liberation Serif"
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
   ;; (default "C-M-m" for terminal mode, "M-<return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "M-<return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab t

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

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; It is also possible to use a posframe with the following cons cell
   ;; `(posframe . position)' where position can be one of `center',
   ;; `top-center', `bottom-center', `top-left-corner', `top-right-corner',
   ;; `top-right-corner', `bottom-left-corner' or `bottom-right-corner'
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; Whether side windows (such as those created by treemacs or neotree)
   ;; are kept or minimized by `spacemacs/toggle-maximize-window' (SPC w m).
   ;; (default t)
   dotspacemacs-maximize-window-keep-side-windows t

   ;; If nil, no load-hints enabled. If t, enable the `load-hints' which will
   ;; put the most likely path on the top of `load-path' to reduce walking
   ;; through the whole `load-path'. It's an experimental feature to speedup
   ;; Spacemacs on Windows. Refer the FAQ.org "load-hints" session for details.
   dotspacemacs-enable-load-hints nil

   ;; If t, enable the `package-quickstart' feature to avoid full package
   ;; loading, otherwise no `package-quickstart' attemption (default nil).
   ;; Refer the FAQ.org "package-quickstart" section for details.
   dotspacemacs-enable-package-quickstart nil

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
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' to obtain fullscreen
   ;; without external boxes. Also disables the internal border. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes the
   ;; transparency level of a frame background when it's active or selected. Transparency
   ;; can be toggled through `toggle-background-transparency'. (default 90)
   dotspacemacs-background-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis t
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; The backend used for undo/redo functionality. Possible values are
   ;; `undo-fu', `undo-redo' and `undo-tree' see also `evil-undo-system'.
   ;; Note that saved undo history does not get transferred when changing
   ;; your undo system. The default is currently `undo-fu' as `undo-tree'
   ;; is not maintained anymore and `undo-redo' is very basic."
   dotspacemacs-undo-system 'undo-fu

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
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   ;; dotspacemacs-frame-title-format "%I@%S"
   dotspacemacs-frame-title-format "%t - %b - %m"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Color highlight trailing whitespace in all prog-mode and text-mode derived
   ;; modes such as c++-mode, python-mode, emacs-lisp, html-mode, rst-mode etc.
   ;; (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; The variable `global-spacemacs-whitespace-cleanup-modes' controls
   ;; which major modes have whitespace cleanup enabled or disabled
   ;; by default.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env)
  )

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (setq projectile-enable-caching t)
  (global-set-key (kbd "M-p") 'spacemacs/tabs-backward)
  (global-set-key (kbd "M-n") 'spacemacs/tabs-forward)
  (global-set-key (kbd "C-M-1") 'spacemacs/eyebrowse-switch-to-window-config-1)
  (global-set-key (kbd "C-M-2") 'spacemacs/eyebrowse-switch-to-window-config-2)
  (global-set-key (kbd "C-M-3") 'spacemacs/eyebrowse-switch-to-window-config-3)
  (global-set-key (kbd "C-M-4") 'spacemacs/eyebrowse-switch-to-window-config-4)
  (global-set-key (kbd "C-M-5") 'spacemacs/eyebrowse-switch-to-window-config-5)
  (global-set-key (kbd "C-M-6") 'spacemacs/eyebrowse-switch-to-window-config-6)
  (global-set-key (kbd "C-M-7") 'spacemacs/eyebrowse-switch-to-window-config-7)
  (global-set-key (kbd "C-M-8") 'spacemacs/eyebrowse-switch-to-window-config-8)
  (global-set-key (kbd "C-M-9") 'spacemacs/eyebrowse-switch-to-window-config-9)
  ;; (set-frame-parameter nil 'undecorated t)

  ;; (exec-path-from-shell-copy-env "GOPATH")
  ;; (exec-path-from-shell-copy-env "GOROOT")
  ;; (exec-path-from-shell-copy-env "PATH")
  ;; (setenv "GOPATH" "/home/mcallister/.gvm/pkgsets/go1.18/global")
  ;; (setenv "GOROOT" "/home/mcallister/.gvm/gos/go1.18")
  ;; (setenv "PATH" "/home/mcallister/.krew/bin:/home/mcallister/.gvm/pkgsets/go1.18/global/bin:/home/mcallister/.gvm/gos/go1.18/bin:/home/mcallister/.gvm/pkgsets/go1.18/global/overlay/bin:/home/mcallister/.gvm/bin:/home/mcallister/.gvm/bin:/home/mcallister/.pyenv/bin:/home/mcallister/.gvm/pkgsets/go1.17/global/bin:/home/mcallister/.gvm/gos/go1.17/bin:/home/mcallister/.gvm/pkgsets/go1.17/global/overlay/bin:/home/mcallister/.gvm/bin:/home/mcallister/.gvm/bin:/home/mcallister/bin:/home/mcallister/bin/jdk1.8.0_271/bin/:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/home/mcallister/.dotnet/tools:/home/mcallister/bin:/home/mcallister/bin/platform-tools:/home/mcallister/bin/tools/bin")
  (setq-default dotspacemacs-line-numbers t)
  )


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump."
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
  ;;(require 'wgrep)
  ;; (setq-default c-basic-offset 2)
  ;; (setq projectile-indexing-method 'alien)
  ;; (setq projectile-indexing-method 'native) ;; (add-hook 'gradle-mode '(company-mode t))
  ;; (add-hook 'javascript-mode '(setq tab-width 2))
  ;; (require 'on-screen)
  ;; (on-screen-global-mode +1)
  (add-hook 'go-mode-hook
            (lambda ()
              (setq indent-tabs-mode 1)
              (setq tab-width 2)))
  (add-hook 'company-mode-hook
            (lambda ()
              (define-key company-mode-map (kbd "C-SPC") 'company-complete)))
  ;; (golden-ratio-mode)
  (add-hook 'persp-mode-hook
            (lambda ()
              (persp-load-state-from-file)
              (persp-switch "Default")))
  (global-set-key (kbd "M-p") 'spacemacs/tabs-backward)
  (global-set-key (kbd "M-n") 'spacemacs/tabs-forward)
  (defun my-vue-mode-hook ()
    (setq web-mode-markup-indent-offset 2) ; HTML inside <template>
    (setq web-mode-code-indent-offset 2)   ; JS/JSX inside <script>
    (setq web-mode-css-indent-offset 2)    ; CSS inside <style>
    (setq js-indent-level 2)               ; JS in general
    (setq css-indent-offset 2))

  (spacemacs/toggle-vi-tilde-fringe-off)
  ;; (spacemacs/toggle-semantic-stickyfunc-globally-off)
  ;; tmp commented
  ;; (spacemacs/toggle-semantic-stickyfunc-off)

  ;; (setq-default git-enable-magit-svn-plugin t)
  (indent-guide-global-mode)
  ;; (setq
  ;; (c-default-style "bsd")
  ;; (setq c-default-style "stroustrup")
  ;;  c-basic-offset 4)
  ;; (setq tab-width 4)
  ;; (setq indent-tabs-mode nil) (setq-default indent-tabs-mode nil)
  (defun kill-other-buffers ()
    "Kill all other buffers."
    (interactive)
    (mapc 'kill-buffer
          (delq (current-buffer)
                (remove-if-not 'buffer-file-name (buffer-list)))))

  ;; (add-hook 'sh-mode-hook #'lsp)

  (add-to-list 'auto-mode-alist '("\\Jenkinsfile\\'" . groovy-mode))
  (add-to-list 'auto-mode-alist '("Jenkinsfile*" . groovy-mode))
  (add-to-list 'auto-mode-alist '(".*_EDITMSG\\'" . log-entry-mode))
  (add-to-list 'auto-mode-alist '("Makefile*" . makefile-gmake-mode))
  (add-to-list 'auto-mode-alist '("Dockerfile*" . dockerfile-mode))
  (add-to-list 'auto-mode-alist '("\\.eclass$" . shell-script-mode))
  (add-to-list 'auto-mode-alist '("\\.ebuild$" . shell-script-mode))
  (add-to-list 'auto-mode-alist '("\\.tpl$" . hcl-mode))
  (add-to-list 'auto-mode-alist '("\\ignition" . json-mode))
  (global-set-key (kbd "C-ő") 'evil-escape)
  (setq dotspacemacs-elpa-https nil)
  (global-set-key (kbd "C-<return>") 'evil-previous-line-first-non-blank)
  (global-set-key (kbd "C-S-<return>") 'evil-previous-line-first-non-blank)
  (global-set-key (kbd "S-<return>") 'evil-previous-line-first-non-blank)
  ;; (global-set-key (kbd "C-<escape>") 'quit-window)
  ;; (global-set-key (kbd "C-S-k") 'quit-window)
  ;; (global-set-key (kbd "C-<escape>") 'spacemacs/kill-this-buffer)
  ;; (global-set-key (kbd "C-S-k") (lambda ()(interactive)(spacemacs/delete-window) (spacemacs/kill-this-buffer))) //better version is needed
  (global-set-key (kbd "C-S-k") 'kill-buffer)
  (global-set-key (kbd "C-S-o") 'browse-url-with-browser-kind)
  (setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
  (setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
  (setq mouse-wheel-follow-mouse nil)
  ;; (setq flycheck-python-pycompile-executable 'python3)
  ;; tmp off
  ;; (spacemacs/toggle-semantic-stickyfunc-globally-off)

  (message "User-config loaded OK.")
  ;; (tabbar-ruler-group-by-projectile-project-and-group-fileless-buffers)
  ;; (setq magit-revision-show-gravatars nil)
  (server-mode 1)
  ;; (load-library "realgud")

  ;; go things
  ;;(load "/home/mcallister/.emacs.d/private/protobuff/protobuf-mode.el")
  (add-to-list 'auto-mode-alist '("\\.proto$" . protobuf-mode))
  ;; (add-to-list 'auto-mode-alist '("\\.bash$" . lsp))
  ;; (add-to-list 'auto-mode-alist '("\\.sh$" . lsp))

  (editorconfig-mode 1)
  (setq-default indent-tabs-mode nil)
  ;; (global-set-key (kbd "C-i") 'company-complete)
  ;; (when (memq window-system '(mac ns x))
  ;;   (exec-path-from-shell-initialize))
  ;; go things END
  ;; (require 'sublimity)
  ;; (require 'sublimity-map)
  ;; (sublimity-map-set-delay nil)
  ;; (sublimity-mode 1)
  ;; (setenv "GO" "/home/mcallister/src/coreroller/backend/src")
  ;; (require 'disable-mouse)
  ;; (global-disable-mouse-mode)
  ;; (require 'minimap)
  ;; (require 'dap-go)
  ;; (require 'perfect-margin)
  ;; (perfect-margin-mode 1)
  ;; (exec-path-from-shell-initialize)
  ;; (exec-path-from-shell-getenv "PATH")
  ;; (setenv "PATH" (concat (getenv "PATH") ":/home/mcallister/go/bin"))
  ;; (setq exec-path (append exec-path '("/home/mcallister/go/bin")))
  ;; (dap-mode 1)
  ;; (dap-ui-mode 1)
  ;; ;; enables mouse hover support
  ;; (dap-tooltip-mode 1)
  ;; use tooltips for mouse hover
  ;; if it is not enabled `dap-mode' will use the minibuffer.
  (tooltip-mode 1)
  ;; (require 'dap-go)
  ;; (dap-go-setup)
  ;; ;; (setq debug-on-error t)
  ;; (define-key evil-normal-state-map (kbd "g t") 'centaur-tabs-forward)
  ;; (define-key evil-normal-state-map (kbd "g T") 'centaur-tabs-backward)
  ;; (evil-define-key 'normal python-mode (kbd "[f5]") 'dap-hydra)
  ;; (evil-define-key 'normal python-mode (kdb "ú") 'dap-hydra)
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map [f5] 'dap-hydra))
  ;; (eval-after-load 'lsp `(evil-define-key 'normal lsp-mode-map [f12] 'dap-debug))
  ;; (eval-after-load 'lsp `(evil-define-key 'normal lsp-mode-map [f11] 'dap-debug-last))
  ;; (eval-after-load 'lsp `(evil-define-key 'normal lsp-mode-map [f7] 'dap-step-out))
  ;; (eval-after-load 'lsp `(evil-define-key 'normal lsp-mode-map [f6] 'dap-step-in))
  ;; (eval-after-load 'lsp `(evil-define-key 'normal lsp-mode-map [f5] 'dap-next))
  ;; (eval-after-load 'lsp `(evil-define-key 'normal lsp-mode-map [f8] 'dap-continue))
  ;; (eval-after-load 'lsp `(evil-define-key 'normal lsp-mode-map [f10] 'dap-breakpoint-toggle))
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map [f12] 'dap-debug))
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map [f11] 'dap-debug-last))
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map [f7] 'dap-step-out))
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map [f6] 'dap-step-in))
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map [f5] 'dap-next))
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map [f8] 'dap-continue))
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map [f10] 'dap-breakpoint-toggle))
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map (kdb "C-S-b") 'dap-breakpoint-toggle)); TODO fix this
  ;; (eval-after-load 'python `(evil-define-key 'normal python-mode-map (kdb "C-S-b") 'dap-breakpoint-toggle)); TODO fix this

  ;; (evil-define-key 'normal python-mode-map (kbd "C-S-b") 'dap-breakpoint-toggle)
  ;; (evil-define-key 'normal python-mode-map (kbd "C-S-i") 'dap-eval-region)
  ;; (evil-define-key 'normal python-mode-map (kbd "C-S-p") 'dap-ui-inspect-thing-at-point)

  ;; (evil-define-key 'insert lsp-mode (kbd "TAB") 'company-complete)
  ;; (require 'centaur-tabs)
  ;; (centaur-tabs-mode t)
  ;; (centaur-tabs-group-by-projectile-project)
  ;; (setq centaur-tabs-cycle-scope 'tabs)
  ;; (global-set-key (kbd "C-<tab>") 'centaur-tabs-forward)
  ;; (global-set-key (kbd "C-S-<iso-lefttab>") 'centaur-tabs-backward)
  ;; (global-set-key (kbd "C-<tab>") 'tabs-forward)
  ;; (global-set-key (kbd "C-S-<iso-lefttab>") 'tabs-backward)
  ;; (setq centaur-tabs-set-icons t)
  ;; (centaur-tabs-headline-match)
  ;; (setq centaur-tabs-style "bar")
  ;; (defun centaur-tabs-hide-tab (x)
  ;;   (let ((name (format "%s" x)))
  ;;     (or
  ;;      (string-prefix-p "*epc" name)
  ;;      (string-prefix-p "*Messages*" name)
  ;;      (string-prefix-p "*spacemacs*" name)
  ;;      (string-prefix-p "*scratch*" name)
  ;;      (string-prefix-p "*helm" name)
  ;;      (string-prefix-p "*Compile-Log*" name)
  ;;      (string-prefix-p "*lsp" name)
  ;;      (string-prefix-p "*which-key*" name)
  ;;      (and (string-prefix-p "magit" name)
  ;;           (not (file-name-extension name)))
  ;;      )))
  ;; (global-set-key (kbd "C-M-<tab>") 'tabbar-forward-group)
  ;; (global-set-key (kbd "C-S-M-<iso-lefttab>") 'tabbar-backward-group)
  ;; (global-set-key (kbd "C-S-p") 'tabbar-ruler-up)
  (setq web-mode-engines-alist
        '(("go" . "\\.tmpl\\'")))
  (add-to-list 'auto-mode-alist '("\\.tmpl$" . web-mode))


  ;; asdfsdf
  ;; (require 'project)

  ;; (defun project-find-go-module (dir)
  ;;   (when-let ((root (locate-dominating-file dir "go.mod")))
  ;;     (cons 'go-module root)))

  ;; (cl-defmethod project-root ((project (head go-module)))
  ;;   (cdr project))

  ;; (add-hook 'project-find-functions #'project-find-go-module)
  ;; (require 'company)
  ;; (require 'yasnippet)

  ;; (require 'go-mode)
  ;; (require 'eglot)
  ;; (add-hook 'go-mode-hook 'eglot-ensure)

  ;; ;; Optional: install eglot-format-buffer as a save hook.
  ;; ;; The depth of -10 places this before eglot's willSave notification,
  ;; ;; so that that notification reports the actual contents that will be saved.
  ;; (defun eglot-format-buffer-on-save ()
  ;;   (add-hook 'before-save-hook #'eglot-format-buffer -10 t))
  ;; (add-hook 'go-mode-hook #'eglot-format-buffer-on-save)
  ;; (setq-default eglot-workspace-configuration
  ;;               '((:gopls .
  ;;                         ((staticcheck . t)
  ;;                          (matcher . "CaseSensitive")))))
  ;; asdfsdfsdf

  ;; (require 'company-box)
  ;; (add-hook 'company-mode-hook 'company-box-mode)

  (exec-path-from-shell-copy-env "GOPATH")
  (exec-path-from-shell-copy-env "GOROOT")
  (exec-path-from-shell-copy-env "PATH")
  ;; (setenv "GOPATH" "/home/mcallister/.gvm/pkgsets/go1.18/global")
  (setq-default dotspacemacs-line-numbers t)
  ;; (setenv "GOROOT" "/home/mcallister/.gvm/gos/go1.18")
  (setq helm-ag-use-grep-ignore-list nil)
  (setq helm-swoop-pre-input-function (lambda () ""))
  (setq magit-status-show-untracked 'subdir)
  (message "ITS FIIIINE")
  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
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
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
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
   '(ac-auto-start 1)
   '(c-basic-offset 4)
   '(c-offsets-alist '((substatement-open . 0) (case-label . +)))
   '(column-number-mode t)
   '(custom-safe-themes
     '("d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879"
       "e16a771a13a202ee6e276d06098bc77f008b73bbac4d526f160faa2d76c1dd0e"
       "d9aaff4db65a545989c0976c759a44a16439cac7717f4e58cc01efc771d90449"
       "630b387ca75cde18a70d99cc888a208c9f5aa88c902550424a2f222c42dce71b"
       "9cb2ce95b651ec5cad605bcd097366d72731e9e096943e7a04cba860eb898dff"
       "4da1e6c2c0b84e9805805e1226a9f5bdd86b0201ea7f150e33ead5249a85d066"
       "ce00188d993fd7148ab4430517acc72982a5590124684a26f2c96aaaf362522e"
       "38908037082b9fc2e6762961026299d026963e57c726c3bc0b9e66cd0def0926"
       "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default))
   '(ediff-split-window-function 'split-window-horizontally t)
   '(gdb-many-windows t)
   '(indent-tabs-mode nil)
   '(inhibit-startup-screen t)
   '(jde-jdk-registry '(("1.7" . "/usr/lib/jvm/java-7-openjdk-amd64")))
   '(jde-junit-testrunner-type "org.junit.runner.junitcore")
   '(jde-run-option-application-args '(""))
   '(jdee-server-dir "/home/rasztasd/bin/ecj")
   '(js-indent-level 2)
   '(large-file-warning-threshold nil)
   '(line-number-mode t)
   '(magit-log-arguments '("--graph" "--color" "--decorate" "--follow" "-n256"))
   '(make-backup-files nil)
   '(package-selected-packages
     '(ac-ispell ace-jump-helm-line ace-link ace-window adaptive-wrap ahk-mode alert
                 async auto-compile auto-complete auto-highlight-symbol
                 auto-yasnippet avy camcorder clean-aindent-mode
                 column-enforce-mode company company-anaconda company-emacs-eclim
                 company-statistics company-web cython-mode dash deferred
                 define-word diff-hl docker dockerfile-mode dumb-jump eclim
                 editorconfig ein elisp-slime-nav emmet-mode esh-help
                 eshell-prompt-extras eshell-z eval-sexp-fu evil evil-anzu
                 evil-args evil-ediff evil-escape evil-exchange evil-iedit-state
                 evil-indent-plus evil-lisp-state evil-magit evil-matchit evil-mc
                 evil-nerd-commenter evil-numbers evil-search-highlight-persist
                 evil-surround evil-tutor evil-unimpaired evil-visual-mark-mode
                 evil-visualstar exec-path-from-shell expand-region eyebrowse
                 fancy-battery fill-column-indicator firefox-controller flx-ido
                 flycheck flycheck-pos-tip fuzzy gh gh-md gist git-commit
                 git-gutter-fringe git-gutter-fringe+ git-link git-messenger
                 git-timemachine gitattributes-mode gitconfig-mode
                 github-browse-file github-clone github-search gnuplot
                 golden-ratio google-translate gradle-mode groovy-mode haml-mode
                 helm helm-ag helm-c-yasnippet helm-company helm-core
                 helm-css-scss helm-dash helm-descbinds helm-flx helm-gitignore
                 helm-make helm-mode-manager helm-projectile helm-pydoc helm-swoop
                 helm-themes help-fns+ hide-comnt highlight highlight-indentation
                 highlight-numbers highlight-parentheses hl-todo htmlize
                 hungry-delete hy-mode hydra indent-guide info+ js2-mode json-mode
                 less-css-mode link-hint linum-relative live-py-mode load-relative
                 lorem-ipsum macrostep magit magit-gh-pulls magit-gitflow
                 magit-popup magit-svn markdown-mode markdown-toc mmm-mode
                 move-text multi-term neotree on-screen open-junk-file org-bullets
                 org-category-capture org-download org-pomodoro org-present
                 org-projectile orgit packed paradox pcre2el persp-mode php+-mode
                 php-mode pip-requirements pos-tip powerline projectile pug-mode
                 py-isort pycoverage pyenv-mode pytest pyvenv rainbow-delimiters
                 ranger realgud request-deferred restart-emacs sass-mode scss-mode
                 selectric-mode shell-pop simple-httpd skewer-mode slim-mode
                 smartparens smeargle spaceline spray srefactor stickyfunc-enhance
                 tagedit test-simple toc-org tox undo-tree use-package uuidgen
                 vagrant vi-tilde-fringe volatile-highlights w3m
                 web-completion-data web-mode websocket wgrep which-key winum
                 with-editor ws-butler xclip xterm-color yaml-mode yaml-tomato
                 yapfify yasnippet zeal-at-point))
   '(perl-indent-level 2)
   '(revert-without-query '(".*"))
   '(safe-local-variable-directories
     '("/home/mcallister/src/speech-graphics/sgnp-rapport-accounts-frontend/"))
   '(safe-local-variable-values
     '((eval pyvenv-workon "worflows_py27") (eval venv-workon "worflows_py27")))
   '(scroll-bar-mode nil)
   '(scroll-conservatively 1)
   '(scroll-preserve-screen-position t)
   '(sh-basic-offset 2)
   '(shell-file-name "/bin/bash")
   '(show-trailing-whitespace t)
   '(tab-width 2)
   '(tags-case-fold-search nil)
   '(tags-revert-without-query t)
   '(typescript-indent-level 2)
   '(which-function-mode t))
  (custom-set-faces
   ;; custom-set-faces was added by Custom.
   ;; If you edit it by hand, you could mess it up, so be careful.
   ;; Your init file should contain only one such instance.
   ;; If there is more than one, they won't work right.
   '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
   '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
  )
