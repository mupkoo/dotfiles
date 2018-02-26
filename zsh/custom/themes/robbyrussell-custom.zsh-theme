local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}●"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# rbenv and node settings
RPS1='%{$fg[red]%}[`rbenv version | sed -e "s/ (set.*$//"`]%{$reset_color%}%{$fg[yellow]%}[`node --version | sed "s/v//"`]%{$reset_color%}%{$fg[magenta]%}[`elixir --version | tail -n 1 | sed "s/Elixir //" | sed "s/ (.*$//"`]%{$reset_color%} $EPS1'
