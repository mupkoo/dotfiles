local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

ZSH_THEME_RUBY="%{$fg[red]%}[`rbenv version | sed -e "s/ (set.*$//"`]%{$reset_color%}"
ZSH_THEME_NODE="%{$fg[yellow]%}[`node --version | sed "s/v//"`]%{$reset_color%}"
ZSH_THEME_ELIXIR="%{$fg[magenta]%}[`elixir --version | tail -n 1 | sed "s/Elixir //"`]%{$reset_color%}"

# rbenv and node settings
RPS1='$ZSH_THEME_RUBY$ZSH_THEME_ELIXIR$ZSH_THEME_NODE $EPS1'
