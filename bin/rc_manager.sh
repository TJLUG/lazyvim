#!/usr/bin/env bash
set -o errexit

rootDir="$HOME/.vim/vimrc.d"
enableSuffix="vimrc"
disableSuffix="disable"

op="$1"
realFileName="$2"
# get real file name, no suffix
if [[ -e "$rootDir/$realFileName" ]]; then
    realFileName=`basename "$realFileName" ".$enableSuffix"`
    realFileName=`basename "$realFileName" ".$disableSuffix"`
fi

case "$1" in
    # enable a vimrc configration file
    "enable")
        if [[ -e "$rootDir/$realFileName.$disableSuffix" ]]; then
            mv "$rootDir/$realFileName.$disableSuffix" "$rootDir/$realFileName.$enableSuffix"
        else
            # no such file
            echo "No such file."
            exit 1
        fi
        ;;
    # disable a vimrc configration file
    "disable")
        if [[ -e "$rootDir/$realFileName.$enableSuffix" ]]; then
            mv "$rootDir/$realFileName.$enableSuffix" "$rootDir/$realFileName.$disableSuffix"
        else
            # no such file
            echo "No such file."
            exit 1
        fi
        ;;
    # params error
    *)
        echo "No such operation."
        ;;
esac
