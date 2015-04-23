# Aliases
alias cs='clear'
alias l='clear;ls -lav'
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
  clear
  cd $1 && ls -lav
}

function to-android(){
  cp $1 /Users/fhurtado/twilio/authy-android/Authy/app/libs
}
