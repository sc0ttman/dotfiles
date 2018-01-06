source ~/.config/fish/.fish_aliases

# set -U fish_prompt_pwd_dir_length 0

# rbenv integration
status --is-interactive; and source (rbenv init -|psub)

# Local prompt customization
# :wq
set -e fish_greeting
