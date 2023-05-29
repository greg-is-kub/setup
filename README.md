# setup
Build my setup and workflow in the blink of an eye.
This whole git is meant to be used also for dockers that have `$HOME` mounted.

# summary
## scripts 
### install
contains scripts to automatically install my fav utils
 - **[zellij](https://github.com/zellij-org/zellij/)** terminal multiplexer like tmux but easy to use
 - **[starship](starship.rs/)** terminal prompt to make your term look fancy
 - **[delta](https://github.com/dandavison/delta/)** enhanced `diff`
 - **[thefuck](https://github.com/nvbn/thefuck)** corrects your input errors
 - **[helix](https://github.com/helix-editor/)** code editor
     - **[clangd-12](https://github.com/clangd/clangd)** C lang LSP
     - TODO add marksman markdown LSP
 - **[gnome quake extension](https://extensions.gnome.org/extension/1411/quake-mode/)** allows to trigger focus on specific pane on a specfic button press (to always have my term on the side), necessit manual setup
 - **[atuin](https://github.com/ellie/atuin)** replaces your ctr + r and history with fuzzy finder
 - **[gitui](https://github.com/extrawurst/gitui)** git gui allowing line-by-line commits, very efficient, very useful
 - **[tokei](https://github.com/XAMPPRocky/tokei)** to know how many lines of codes a specific repo contains
 - **[lsd](https://github.com/Peltoche/lsd)** enhanced ls command
 - **[zoxide](https://github.com/ajeetdsouza/zoxide)** enhanced cd command
 - **[bat](https://github.com/sharkdp/bat)** enhanced cat command
 - **[ripgrep](https://github.com/BurntSushi/ripgrep)** enhanced grep command

## install
Install scripts are split in 3 because if you are on a docker that has $HOME mounted, the binaries installed by rust will be accessible.
You will only need to add them in your path with `.setup_dockerrc` that mainly adds stuff to the `$PATH` and creates aliases.

```bash
cd install/scripts/
./install_tools.sh
./install_rust.sh
./install_cargo_tools.sh
```

## use
Just source **.setup_docker** script that acts as a .bashrc mostly useful when on a docker that has your `$HOME` mounted.
You also can copy this file content into your .bashrc

## dotfiles
contains all configs setups
 - **zoxyde**
 - **delta**
 - **helix**
 - **starship**

## releases
releases of utils that cannot be dowloaded through apt / cargo
