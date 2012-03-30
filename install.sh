#!/usr/bin/env bash
set -o errexit

suffix="bak" # backup file suffix

function backup_action
{
    if [[ -e "$HOME/.$1" ]]; then
        echo "BACKUP $HOME/.$1 -> $HOME/.$1.$suffix"
        # backup file already exists.
        if [[ -e "$HOME/.$1.$suffix" ]]; then
            echo "ERROR: $HOME/.$1.$suffix EXISTS."
            echo "DELETE OR ROLLBACK, then run this script again."
            return 1 # exit and terminat script.
        fi
        mv "$HOME/.$1" "$HOME/.$1.$suffix"
    fi

    return 0
}

function handle_action
{
    # backup old configuration
    backup_action "$1"

    echo "Installing $PWD/$1 -> $HOME/.$1"
    ln -s "$PWD/$1" "$HOME/.$1"
    
    return 0
}

function rollback_action
{
    if [[ -e "$HOME/.$1.$suffix" ]]; then
        echo "ROLLBACK $HOME/.$1.$suffix -> $HOME/.$1"
        if [[ -e "$HOME/.$1" ]]; then
            rm -f "$HOME/.$1"
        fi
        mv "$HOME/.$1.$suffix" "$HOME/.$1"
    fi

    return 0
}

function rollback
{
    rollback_action vimrc
    rollback_action vim
}

# rollback
if [[ "$1" == "rollback" ]]; then
    rollback
    exit 0
fi

# install (atom)
trap "rollback" INT TERM EXIT

handle_action vimrc
handle_action vim

trap - INT TERM EXIT
exit 0
