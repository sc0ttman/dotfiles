for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
