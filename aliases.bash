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

# Sanitizes all files in a directory by renaming all files with spaces in their name to '_'
# e.g. the file 'Foo Bar .csv' will be renamed to 'Foo_Bar_.csv'
function sanitize_dir() {
  for f in *\ *; do mv "$f" "${f// /_}"; done
}

# Performs a grep search
function search() {
  grep -R "$1" ./ --color=never
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

function push() {
  current_branch=$(git rev-parse --abbrev-ref HEAD)
  while true; do
    read -p "push to origin $current_branch?" yn
    case $yn in
        [Yy]* ) git push origin $current_branch; break;;
        [Nn]* ) echo "aborting"; break;;
        * ) echo "Please answer yes or no.";;
    esac
  done
}
