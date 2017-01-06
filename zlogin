function precmd {
  ruby=$(ruby --version)
  ver=("${(s/ /)ruby}")
  node=$(node --version)
  export RPROMPT='%{$fg[red]%}$ver[2]%{$reset_color%} | %{$fg[green]%}$node%{$reset_color%} %t%'
}

# go to saved path if there is one
if [[ -f ~/.current_path~ ]]; then
  cd `cat ~/.current_path~`
  rm ~/.current_path~
fi
