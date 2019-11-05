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

# Bob the Fish config
set -g theme_display_git_master_branch yes

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/scott/dev/serverless/polyglot-serverless-intro/serverless/node_modules/tabtab/.completions/serverless.fish ]; and . /Users/scott/dev/serverless/polyglot-serverless-intro/serverless/node_modules/tabtab/.completions/serverless.fish
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
set -g fish_user_paths "/usr/local/opt/mysql@5.7/bin" $fish_user_paths
source ~/.asdf/asdf.fish
# set -x PGHOST $PGHOST "localhost"
echo 'export GPG_TTY=$(tty)' >> ~/.bash_profile
# Set GPG TTY
set -x GPG_TTY (tty)
set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/node@10/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/postgresql@9.6/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
