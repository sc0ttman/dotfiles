source ~/.config/fish/.fish_aliases

# set -U fish_prompt_pwd_dir_length 0

# rbenv integration
status --is-interactive; and source (rbenv init -|psub)

# Local prompt customization
# :wq
set -e fish_greeting

# https://github.com/oh-my-fish/theme-bobthefish
set -g theme_color_scheme solarized-dark
set -g theme_newline_cursor yes

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/scott/dev/serverless/polyglot-serverless-intro/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/scott/dev/serverless/polyglot-serverless-intro/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
set -g fish_user_paths "/usr/local/opt/mysql@5.7/bin" $fish_user_paths
source ~/.asdf/asdf.fish
echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile
# Set GPG TTY
set -x GPG_TTY (tty)
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
