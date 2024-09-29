# setup
Build my setup and workflow in the blink of an eye.
This whole git is meant to be used also for dockers that have `$HOME` mounted.

# summary
## packages that will be installed

contains scripts to automatically install my fav utils

### Terminal configuration : 
 - **[Alacritty](https://github.com/alacritty/alacritty)** a good terminal **TODO**
 - **[zellij](https://github.com/zellij-org/zellij/)** terminal multiplexer like tmux but easy to use
 - **[starship](starship.rs/)** terminal prompt to make your term look fancy
 - **[nerd-font](https://github.com/ryanoasis/nerd-fonts)** fancy font to go with startship NEED TO DO THE TUTORIAL (git clone --depth 1) **TODO**
 - **[gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard)** Fancy dashboard for gdb written in python
 - **[ipdb](https://pypi.org/project/ipdb/)** Better python debugger

#### CLI-tools :
 - **[delta](https://github.com/dandavison/delta/)** enhanced `diff` that can be used to replace `git diff` as well
 - **[thefuck](https://github.com/nvbn/thefuck)** corrects your input errors by suggestion
 - **[helix](https://github.com/helix-editor/)** code editor
 - **[gitui](https://github.com/extrawurst/gitui)** git gui allowing line-by-line commits, very efficient, very useful
 - **[lsd](https://github.com/Peltoche/lsd)** enhanced ls command
 - **[zoxide](https://github.com/ajeetdsouza/zoxide)** enhanced cd command
 - **[bat](https://github.com/sharkdp/bat)** enhanced cat command
 - **[ripgrep](https://github.com/BurntSushi/ripgrep)** enhanced grep command
 - **[fzf](https://github.com/junegunn/fzf)** Fuzzy file finder **TODO**
 - **[yazi](https://github.com/sxyazi/yazi)** Simple file finder **TODO**
 - **[serpl](https://github.com/yassinebridi/serpl)** Simple find & replace tool **TODO**
 - **[tokei](https://github.com/XAMPPRocky/tokei)** to know how many lines of codes a specific repo contains

### LSP
- **[clangd](https://github.com/clangd/clangd)** C lang LSP

## install

### pre-requisite
Many packages used here are hosted on `cargo`, rust's pkg manager. To install `cargo` you must first install `rust` : 
```bash
./install_rust.sh  # will install rust and cargo its pkg manager
echo "source $HOME/.cargo/env" >> ~.bashrc
```

### terminal and multiplexer

#### Alacritty
```bash
# alacritty needed system libraries
apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo install alacritty
```
- [OPTIONNAL] copy my alacritty .dotfile to your ~/.config/ folder to have my setup instead of the default one
```bash
cp ./dotfiles/alacritty/ ~/.config/alacritty
```

#### Zellij
```bash
cargo install --locked zellij
```
- [OPTIONNAL] copy my zellij .dotfile to your ~/.config/ folder to have my setup instead of the default one
```bash
cp ./dotfiles/zellij/ ~/.config/zellij
```

### installing the tools
Install scripts are split in 3 for 3 reasons : 
1. You need to install `rust` to use `cargo`, its package manager. Installing rust multiple times is useless.
2. `apt-get` needs `sudo` & `sudo cargo install` won't work properly.
3. instaling w/ cargo will install in $HOME so if you are in a docker w/ `$HOME` mounted you don't need to reinstall them. You only need to reinstall the apt pkg.You will only need to add them in your path with `.setup_dockerrc` that mainly adds stuff to the `$PATH` and creates aliases.

```bash
cd install/
sudo ./install_tools.sh # will install apt pkg
# no need to add cargo to your .bashrc for now this is in the next step
source "$HOME/.cargo/env"
./install_cargo_tools.sh # will install the cargo binaries
```

>! Warning : 
sccache cargo pkg has apt pkg deps : openssl & pkg config, they are installed in install-tools.sh hence you need to run these commands in this specific order.



### setup 
1. Use [stow](https://www.gnu.org/software/stow/manual/stow.html#Introduction) to automatically the wanted `dotfiles`(located in the folder  ... `./dotfiles/`) in `$HOME/.config` to configure the utils that needs it.
```bash
cd
stow -d <path/to/this/repo/dotfiles> -t . <pkg_name>
```
with `pkg_name` one of the folders located in `./dotfiles`
 
2. **.setup_docker** contains most of the setup you will need, it acts as a .bashrc mostly useful when on a docker that has your `$HOME` mounted. You also can copy this file content into your .bashrc

### Helix : code editor
To install helix use the following commands : 
```bash
sudo add-apt-repository ppa:maveonair/helix-editor
sudo apt update
sudo apt install helix
```
- [OPTIONNAL] copy my helix .dotfile to your ~/.config/ folder to have my setup instead of the default one
```bash
cp ./dotfiles/helix/ ~/.config/helix
```
