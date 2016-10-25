# Aliases
alias cs='clear'
alias l='clear;ls -lh'
alias '..'='cd ..'
alias '...'='cd ../../'

# Git aliases
alias gis='clear;git status'
alias gd='clear;git diff'
alias gdc='clear;git diff --cached'

# moving stuff around
alias mv='mv -v'
alias rm='rm -i -v'
alias cp='cp -v'

# Function definitions

function reload-bash(){
  source ~/.bash_profile
}

# c DIRECTORY => changes the current dir to DIRECTORY
# c FILE      => displays the first 40 lines in the file and the line count
function c(){

  if [ -d "$1" ];
  then
    cd "$1";
    clear;
    ls -lv;
  elif [ -f "$1" ];
  then
    head -n 40 "$1" && echo "Lines: " && wc -l "$1"
  else
    echo "$1 not found"
  fi
}

function ga(){
  git add *$1*
}

function puts-cmd(){
  which $1 | xargs cat
}

function xmlclean(){
  xmllint --format $1 --output $1
}

function grp(){
  grep -R --color "$1" .
}

# rep {n} {command}
# repeat a command n times
function rep() {
  num=$1
  rest="${@:2}"
  for ((n=0;n<$num;n++)); do $rest; done
}

function edit-email() {
  vim /var/mail/$USER
}

function gup() {
  git pull origin $(git rev-parse --abbrev-ref HEAD) --rebase
}
