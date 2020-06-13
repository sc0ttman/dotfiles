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

link () {
  echo "$PROMPT This utility will symlink the files in this repo to the home directory"
  echo "$PROMPT Proceed? (y/n)"
  read resp
  # TODO - regex here?
  if [ "$resp" = 'y' -o "$resp" = 'Y' ] ; then
    for file in $( ls -A | grep -vE '\.exclude*|\.example|\.git/|\.gitignore|bootstrap.sh|\.DS_Store|\.osx|iterm|fonts|.*.md' ) ; do
      ln -sv "$PWD/$file" "$HOME"
    done
    # TODO: source files here?
    echo "$PROMPT Symlinking complete"
  else
    echo "$PROMPT Symlinking cancelled by user"
    return 1
  fi
}

#doIt;
link; # would rather symlink so changes only need to be made once
