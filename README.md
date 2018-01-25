# Scott's Dotfiles

## Fish Shell

Fish Shell Installation:
`brew install fish`

add the shell to the system know shells: `echo /usr/local/bin/fish | sudo tee -a /etc/shells`

make fish your default shell:
`chsh -s /usr/local/bin/fish`

The Fish Shell configuration folder is located under: `~/.config/fish/`

The main configuration file is: `~/.config/fish/config.fish`, with 2 other sourced files:

```
source ~/.fish_aliases
source ~/.fish_variables
```

## TMux
`brew install tmux`

Install Tmux plugin manager. Instructions here: https://github.com/tmux-plugins/tpm

Install Tmux Themepack. Instructions here: https://github.com/jimeh/tmux-themepack

Install Powerline fonts. https://github.com/powerline/fonts#quick-installation
```
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts
```

## iTerm 2

Get the latest version at http://www.iterm2.com/

Download a theme from here: https://github.com/mbadolato/iTerm2-Color-Schemes
Or use one of the files in the repo. `TheOne.itermcolors` or `ayu.itermcolors`

Make sure to change the font to `Meslo LG L DZ Regular for Powerline` (Or one of the other Meslo fonts) so the custom characters work.
Also, make sure to turn on the option: `General > Selection > Applications in terminal may access clipboard`.

## Vim
Install the latest vim from Homebrew:
`$ brew install vim` or `neovim`

Install Ctags
`$ brew install ctags`

Install Minpac: https://github.com/k-takata/minpac#linux-macos

Create the following folders as set in the `.vimrc`
```
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo
```
Follow the [setup for One Dark syntax theme](https://github.com/joshdick/onedark.vim#installation). There are two files to copy to your `~/.vim folder`

All the plugins are defined using Minpac in the conf. You should just be able to run `:PackUpdate` in vim and it will install the plugins.

The only exception being the `YouCompleteMe` plugin where I had to actually run `./install.py` from `~/.vim/pack/minpac/start/YouCompleteMe` after it was downloaded.

Get italics working
- https://apple.stackexchange.com/a/267261
- https://alexpearce.me/2014/05/italics-in-iterm2-vim-tmux/

## Silver Searcher
In order for :Ag to run you need to:
`brew install the_silver_searcher`
