# UnixDeploy
Config files for unix-like environments

## Contents
Config Files for:

- Anaconda ( `conf/.condarc` )
- gem ( `conf/.gemrc` )
- git ( `conf/.gitconfig` & `.gitignore` )
- latexmk ( `conf.osx/.latexmk` & `conf.linux/.latexmk`)
- npm ( `conf/.npmrc` )
- systemd ( `systemd/*` )
- tmux ( `conf/.tmux.conf` )
- UltiSnips (`UltiSnips/*` Tex Snippets for UltiSnips plugin)
- vim ( `conf/.vimrc` & `.vim/colors/*` )
- [Vundle.vim][vundle] (`conf/.vimrc.bundles`)
- zsh ( `conf/.zshrc` & `conf.osx/.zshenv` & `conf.linux/.zshenv` )

## Requirements

#### For macOS 10.12+

- `antigen.zsh` in `$(brew --prefix)/share/antigen/`

#### For Linux(Ubuntu, Fedora or CentOS)

- `antigen.zsh` in `/usr/share/zsh-antigen/`

## Deploy
```sh
git clone https://github.com/essethon/unixdeploy.git ~
cd ~/unixdeploy
./setup.sh
```

To change shell to zsh:
```sh
chsh -s $(which zsh)
```

### What will happen when setup.sh is executed:

- Create soft link for `.*rc` files to `$HOME`
- Install Vundle.vim from github if not installed
- Install colors for vim



[vundle]:https://github.com/VundleVim/Vundle.vim
