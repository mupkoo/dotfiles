# Theme
set fish_greeting ""
set -g fish_emoji_width 2
set -g fish_color_command 77aaff --bold
set -g fish_color_param 6bdfff
set -g fish_color_param bdc7d6
set -g fish_color_quote b9ea81
set -g fish_color_operator 703faf --bold
set -g fish_color_error ff4248
set -g fish_color_autosuggestion 68709b
set -g fish_color_end 16b37d

# Variables
set -x DEFAULT_USER mirko
set -x LANG en_US.UTF-8
set -x LC_ALL en_US.UTF-8
set -x EDITOR "code -w"
set -x BUNDLER_EDITOR "code -w"
set -x ERL_AFLAGS "-kernel shell_history enabled"
set -x HOMEBREW_NO_INSTALL_CLEANUP 1
set -x HOMEBREW_NO_INSTALLED_DEPENDENTS_CHECK 1

# Setup hook
eval "$(/opt/homebrew/bin/brew shellenv)"
starship init fish | source
# source /usr/local/opt/asdf/asdf.fish
# source /opt/homebrew/opt/asdf/libexec/asdf.fish
# eval (direnv hook fish)
# fish_add_path ~/.local/share/mise/shims

if status is-interactive
  mise activate fish | source
else
  mise activate fish --shims | source
end

status --is-interactive; and source (jump shell fish --bind=d | psub)

# Aliases
alias g="git"
alias bs="brew services"
alias ee="ember exam --split=4 --parallel -r dot"
alias gp="git pull"
alias gpfp="git pull && git fetch -p"

# Helpers
source ~/.dotfiles/fish/helpers/bundler.fish
source ~/.dotfiles/fish/helpers/git.fish
source ~/.dotfiles/fish/helpers/kill_port.fish
