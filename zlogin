# function precmd {
#   ruby=$(ruby --version)
#   ver=("${(s/ /)ruby}")
#   export RPROMPT='%{$fg[red]%}$ver[2]%{$reset_color%}%'
# }

# go to saved path if there is one
if [[ -f ~/.current_path~ ]]; then
  cd `cat ~/.current_path~`
  rm ~/.current_path~
fi
