# setup
Build my setup and workflow in the blink of an eye.
This whole git is meant to be used also for dockers that have `$HOME` mounted.

# summary
## packages that will be installed

contains scripts to automatically install my fav utils

### Terminal configuration : 
 - **[Alacritty](https://github.com/alacritty/alacritty)** a good terminal (install through flathub)
 - **[zellij](https://github.com/zellij-org/zellij/)** terminal multiplexer like tmux but easy to use
 - **[starship](starship.rs/)** terminal prompt to make your term look fancy
 - **[nerd-font](https://github.com/ryanoasis/nerd-fonts)** fancy font to go with startship

### Language related pkg
#### build
 - [git](https://git-scm.com/) nothing to present here
 - [uv](https://docs.astral.sh/uv/), the goto tool for python that replaces `pip`, `pip-tools`, `pipx`, `poetry`, `pyenv`, `twine`, `virtualenv`, and more.

#### Debuggers
 - **[gdb-dashboard](https://github.com/cyrus-and/gdb-dashboard)** Fancy dashboard for gdb written in python
 - **[ipdb](https://pypi.org/project/ipdb/)** Better python debugger

#### CLI-tools :
 - **[delta](https://github.com/dandavison/delta/)** enhanced `diff` that can be used to replace `git diff` as well
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
 - **[glow](https://github.com/charmbracelet/glow)** A Markdown visualizer & editor

### LSP
- **C++**
 - [clangd](https://github.com/clangd/clangd) C lang LSP
 - [bear](https://github.com/rizsotto/Bear) a tool to replace make & generate `compile_commands.json` from a MakeFile
- **python**
 - TODO
## install

### pre-requisite
All pkg used here are not hosted by apt, you will need to install the `cargo` & `brew` pkg managers.

rust :
```bash
./install_rust.sh  # will install rust and cargo its pkg manager
echo "source $HOME/.cargo/env" >> ~.bashrc
```
brew :
```bash
./install_brew.sh
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
```

### terminal and multiplexer

#### Alacritty
```bash
# alacritty needed system libraries
apt install cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
cargo install alacritty
```
> [OPTIONNAL] copy my alacritty .dotfile to your ~/.config/ folder to have my setup instead of the default one
> **WARNING :** A nerdfont is defined in the config file for alacritty. It will sureliy break your terminal view if not setup.
> Go to next step (install nerdfont) to solve it

```bash
cp ./dotfiles/alacritty/ ~/.config/alacritty
```
#### Install nerd font
Use [nerd font installer](https://github.com/officialrajdeepsingh/nerd-fonts-installer) to install the font you want (go to official site to see their preview).
Then selected the terminal font in ~/.config/alacritty.toml in the section `[font]`:
> **TIP :** to see the exact font name, find your font using `fc-list` in bash.
```toml
[font]
style = "Regular"
size = 11.0

[font.normal]
family = "GohuFont 11 Nerd Font Mono"
style = "Regular"
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
#### Copy .files using [stow](https://www.gnu.org/software/stow/manual/stow.html#Introduction) 
Use [stow](https://www.gnu.org/software/stow/manual/stow.html#Introduction) to create symlinks from `dotfiles/*` to your config files (mostly goes to ~/.config except for gdb) to configure the utils that need it.
```bash
apt install stow
```
```bash
cd
stow -d <path/to/this/repo>/dotfiles -t . <pkg_name>
```
with `pkg_name` one being one the folders located in `./dotfiles`
 
2. **.append_bashrc** contains most of the setup you will need, you just need to append it to your `.bashrc`
```bash
bat append_bashrc >> .bashrc
```
### Helix : code editor
[Tutorial to install helix](https://docs.helix-editor.com/install.html)
> Note: you can also use my helix config, set it up using stow as just shown above

### Zellij plugins
They are voluntarily taken of the repo to keep it lightweight. List of plugins to install : 
- [rooms](https://github.com/rvcas/room)
