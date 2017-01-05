eval blue='$FG[075]'
eval white='$FG[231]'

# http://www.copypastecharacter.com/symbols

local git_branch='$(git_prompt_info)%{$reset_color%}'
# local git_sha_short='$(git_prompt_short_sha)'

PROMPT="%{$fg_bold[yellow]%}%~ ${git_branch}
%{$white%}$%{$reset_color%} "

# RPROMPT="%{$(echotc UP 1)%}${git_sha_short} %{$fg_bold[white]%}%T%{$(echotc DO 1)%}%{$reset_color%}"
RPROMPT="%{$(echotc UP 1)%}%{$fg_bold[white]%}%T%{$(echotc DO 1)%}%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$blue%}[ "
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$blue%}] "
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✘"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✔"

ZSH_THEME_GIT_PROMPT_ADDED="%{$blue%}✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$blue%}★"
ZSH_THEME_GIT_PROMPT_DELETED="%{$blue%}✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$blue%}➜"
ZSH_THEME_GIT_PROMPT_UNTRACKED=" %{$blue%}◒"

# ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$reset_color%}(%{$fg[yellow]%}"
# ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%})"


# LS colors, made with http://geoff.greer.fm/lscolors/
export LSCOLORS="GxFxCxDxBxegedabagaced"
export GREP_COLOR='1;33'
