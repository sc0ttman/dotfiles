for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export EDITOR="/Applications/Atom.app/Contents/MacOS/Atom -nw"

export ANDROID_HOME="$HOME/Library/Android/sdk/"
export PATH="$PATH:$HOME/Library/Android/sdk/platform-tools/"
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"
export PATH="$HOME/.fastlane/bin:$PATH"

# Git autocomplete
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# rbenv
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/bin:$PATH"
