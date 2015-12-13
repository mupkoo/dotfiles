#!/bin/zsh

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export EDITOR='subl -w'
export BUNDLER_EDITOR='subl -w'

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
