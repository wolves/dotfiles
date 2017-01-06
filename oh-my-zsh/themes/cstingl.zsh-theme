#!/usr/bin/env zsh
#
# PROMPT
#
PROMPT_BRACKET_BEGIN='%{$fg_bold[white]%}['
PROMPT_HOST='%{$fg_bold[cyan]%}%m'
PROMPT_SEPARATOR='%{$reset_color%}:'
PROMPT_DIR='%{$fg_bold[yellow]%}%c'
PROMPT_BRACKET_END='%{$fg_bold[white]%}]'

PROMPT_USER='%{$fg_bold[white]%}%n'
PROMPT_SIGN='%{$reset_color%}❯'

GIT_PROMPT_INFO='$(git_prompt_info)'

# My current prompt looks like:
# [host:current_dir] (git_prompt_info)
# ❯❯

PROMPT="${PROMPT_BRACKET_BEGIN}${PROMPT_HOST}${PROMPT_SEPARATOR}${PROMPT_DIR}${PROMPT_BRACKET_END}${GIT_PROMPT_INFO}
${PROMPT_SIGN} "

#
# Git repository
#
ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%} on %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✘"
ZSH_THEME_GIT_PROMPT_CLEAN=''

ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[082]%} ✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$FG[166]%} ✹%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$FG[160]%} ✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$FG[220]%} ➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$FG[082]%} ═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$FG[190]%} ✭%{$reset_color%}"
