# Variables
set fish_greeting ''
set -x DEFAULT_USER mirko
set -x LANG en_US.UTF-8
set -x EDITOR 'code -w'
set -x BUNDLER_EDITOR 'code -w'
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -x HOMEBREW_NO_INSTALL_CLEANUP 1

# Setup hook
starship init fish | source
source /usr/local/opt/asdf/asdf.fish
eval (direnv hook fish)
status --is-interactive; and source (jump shell fish | psub)

# Aliases
alias g="git"
alias bs="brew services"
alias ee="ember exam --split=4 --parallel -r dot"
alias gpfp="git pull && git fetch -p"

# Helpers
source ~/.dotfiles/fish/helpers/bundler.fish
