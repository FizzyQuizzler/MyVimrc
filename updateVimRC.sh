#!/bin/bash

# this script will handle updating the vimrc when this script is run from the Github repo.

# pull down the latest update from the github page.
git pull

# copy the vimrc that was updated to .vim folder.
cp ~/.vim/MyVimrc/vimrc ~/.vim

echo 'VimRC is up to Date!'


