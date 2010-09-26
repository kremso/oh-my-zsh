function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '±' && return
    hg root >/dev/null 2>/dev/null && echo '☿' && return
    echo '➜ '
}

PROMPT='
%{$fg[green]%}%n@%m%{$reset_color%} in %{$fg_bold[blue]%}${PWD/#$HOME/~}%{$reset_color%} using %{$fg[green]%}$(rvm_prompt_info)%{$reset_color%}$(git_prompt_info)
%{$fg_bold[red]%}$(prompt_char)%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
