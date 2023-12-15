<h1 align="center"> Personal system dotfiles </h1>

### Introduction
For personal use, versioning and bootstraping Linux system.

Included configurations:
- i3 window manager configuration with polybar and gaps
- zsh configuration with oh-my-zh and powerlevel10k
- git configuration

### Instalation
Repository is organized to be used with [stow](URL "https://www.gnu.org/software/stow/manual/stow.html").

```
cd $HOME
git clone https://github.com/LukaK/dotfiles.git
cd dotfiles
stow --dotfiles --adopt -t ~ home/
stow --dotfiles --adopt -t ~/.config config
git reset --hard HEAD
```

### Todo
Issue with dotfiles, not working with directories. For examples directory `dot-config` is not linked correctly.
