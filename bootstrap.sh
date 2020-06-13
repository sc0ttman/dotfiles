#!/usr/bin/env bash

#cd "$(dirname "${BASH_SOURCE}")";

#git pull origin master;

# copy all the things
# function doIt() {
#   rsync --exclude ".git/" \
#   --exclude ".DS_Store" \
#   --exclude ".osx" \
#   --exclude "bootstrap.sh" \
#   --exclude "README.md" \
#   --exclude "LICENSE-MIT.txt" \
#   -avh --no-perms . ~;
#   source ~/.bash_profile;
# }

echo "Preparing your environment..."

# Homebrew

if test ! $(which brew); then
    echo "Installing Homebrew..."
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Checking for Homebrew Updates..."
brew update

brewing () {
  echo "$PROMPT Install all the basic Homebrew apps"
  echo "$PROMPT Proceed? (y/n)"
  read resp

  if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
    brew install git
    brew install rbenv
    brew install grep
    brew install zsh
    brew install zsh-completions
    brew install mysql
    brew install node
    brew install yarn

    brew cask install 1password
    brew cask install atom
    brew cask install iterm2
    brew cask install slack
    brew cask install google-chrome
    brew cask install karabiner-elements
    brew cask install rectangle

    echo "$PROMPT Brewing complete"
  else
    echo "$PROMPT Brewing cancelled by user"
    return 1
  fi
}

link () {
  echo "$PROMPT This utility will symlink the files in this repo to the home directory"
  echo "$PROMPT Proceed? (y/n)"
  read resp
  # TODO - regex here?
  if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
    for file in $( ls -A | grep -vE '\.exclude*|\.example|\.git/|\.gitignore|bootstrap.sh|\.DS_Store|\.osx|iterm|fonts|.*.md' ) ; do
      ln -sv "$PWD/$file" "$HOME"
    done
    # TODO copy
    # .vim/autoload &
    # .vim/colors
    # TODO Symlink
    # .config/nvim/init.vim
    # .config/karabiner/karabiner.json
    # .config/tmux/tmux-status.conf

    # TODO: source files here?
    echo "$PROMPT Symlinking complete"
  else
    echo "$PROMPT Symlinking cancelled by user"
    return 1
  fi
}

#doIt;
brewing;
link; # would rather symlink so changes only need to be made once

exec ${SHELL} -l
