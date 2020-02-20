# Theme
set fish_greeting ""
set -g fish_emoji_width 2
set -g fish_color_command 77aaff --bold
set -g fish_color_param 6bdfff
set -g fish_color_param bdc7d6
set -g fish_color_quote b9ea81
set -g fish_color_operator d18ef0
set -g fish_color_error ff4248

# Variables
set -g DEFAULT_USER mirko
set -g LANG en_US.UTF-8
set -g LC_ALL en_US.UTF-8
set -g EDITOR "code -w"
set -g BUNDLER_EDITOR "code -w"
set -g ERL_AFLAGS "-kernel shell_history enabled"
set -g HOMEBREW_NO_INSTALL_CLEANUP 1

# Setup hook
starship init fish | source
source /usr/local/opt/asdf/asdf.fish
eval (direnv hook fish)
status --is-interactive; and source (jump shell fish  --bind=d| psub)

# Aliases
alias g="git"
alias bs="brew services"
alias ee="ember exam --split=4 --parallel -r dot"
alias gpfp="git pull && git fetch -p"

# Helpers
source ~/.dotfiles/fish/helpers/bundler.fish
