#!/bin/zsh

# if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
if which direnv > /dev/null; then eval "$(direnv hook zsh)"; fi

export LANG=en_US.UTF-8
export EDITOR='code -w'
export BUNDLER_EDITOR='code'
export ERL_AFLAGS="-kernel shell_history enabled"

function start {
  if [ -f "Procdev" ] ; then
    echo "Clean tmp folder?"
    rm -rf tmp/*
    echo "Clean log folder?"
    rm -rf log/*
    echo "Starting Foreman project"
    foreman start -f Procdev
  elif [ -f "package.json" ] ; then
    echo "Clean tmp folder?"
    rm -rf tmp/*
    echo "Starting node project"
    npm start
  else
    echo "The folder does not have Procdev or package.json files"
  fi
}

function republish_tag {
  git tag -d $1
  git push origin :$1
  git tag $1
  git push
  git push --tags
}

function kill_port {
  lsof -t -i:$1 | xargs kill -9
}

alias bs="brew services"
alias ee="ember exam --split=4 --parallel -r dot"
alias gpfp="git pull && git fetch -p"
