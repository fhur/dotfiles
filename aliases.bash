# Aliases
alias cs='clear'
alias l='clear;ls -lv'
alias '..'='cd ..'
alias '...'='cd ../../'

# Git aliases
alias gis='clear;git status'
alias gd='clear;git diff'
alias gdc='clear;git diff --cached'

# Function definitions

function reload-bash(){
  source ~/.bash_profile
}

function c(){
  if [ -d "$1" ];
  then
    cd "$1";
    clear;
    ls -lv;
  else
    head -n 40 "$1"
  fi
}
