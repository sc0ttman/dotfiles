#!/bin/sh

#
# Based almost entirely on Bryan Gilbert's solution:
# http://bryangilbert.com/post/etc/term/dynamic-ssh-terminal-background-colors/
#
# Sets terminal screen to color based on keywords or hex code (no #, for some reason that breaks)
#
# For SSH magic, add following to ~/.zshrc:
#

if [[ "$TERM" = "screen"* ]] && [[ -n "$TMUX" ]]; then
  if [ "$1" == "prod" ]; then
    tmux select-pane -P 'bg=#331C1F'
  elif [ "$1" == "dev" ]; then
    tmux select-pane -P 'bg=#192436'
  elif [ "$1" == "other" ]; then
    tmux select-pane -P 'bg=#253320'
  else
    tmux select-pane -P 'bg=#282c34'
  fi;
else
  if [ "$1" == "prod" ]; then
    printf '\033]11;#331C1F\007'
  elif [ "$1" == "dev" ]; then
    printf '\033]11;#192436\007'
  elif [ "$1" == "other" ]; then
    printf '\033]11;#253320\007'
  else
    printf '\033]11;#282c34\007'
  fi
fi

exit 0
