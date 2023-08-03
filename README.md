# My Config files

[ScreenShot](https://github.com/GwakaMolie/dotfiles/blob/master/screenshot.png)

## Essential Software
`$ install git stow alacritty curl wget firefox  bspwm htop vim(nvim) rofi joshuto mpd mpc ncmpcpp tmux zathura zathura-pdf-poppler slock fish(zsh, oh-my-zsh) starship`

## Optional Software
`$ install vscode  gpick lxappearance nitrogen pcmanfm pfetch qbittorrent tldr xarchiver unzip unrar/unar sxiv `


## Using gnu stow for quick setup

`$ git clone ~/dotfiles https://github.com/GwakaMolie/dotfiles.git`

`$ rm fancontrole_settings screenshot.png mimeapps.list firefoxScrollbar.md README.md`

`$ rm ~/.xinitrc ~/.Xresources`

`$ stow *`

### Note: 

Gnu Stow WON'T override preexisting files.
