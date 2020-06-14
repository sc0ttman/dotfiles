#!/usr/bin/env bash

#git pull origin master;

echo "Preparing your environment..."

# Homebrew

if test ! $(which brew); then
  echo "Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo "Checking for Homebrew Updates..."
brew update

brews () {
  echo "$PROMPT This will install all the basic Homebrew dev apps"
  echo "$PROMPT Proceed? (y/n)"
  read resp

  if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
    FORMULAE=(
      git
      rbenv
      grep
      zsh
      zsh-completions
      fzf
      mysql@5.7
      node
      yarn
    )
    echo "Installing formulae..."
    brew install ${CASKS[@]}

    # brew install caskroom/cask/brew-cask
    CASKS=(
      1password
      atom
      iterm2
      slack
      google-chrome
      karabiner-elements
      rectangle
      brave-browser
      google-chrome
      sequel-pro
      sourcetree
      itsycal
    )
    echo "Installing apps..."
    brew cask install ${CASKS[@]}

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
brews;
link; # would rather symlink so changes only need to be made once

exec ${SHELL} -l #reload
