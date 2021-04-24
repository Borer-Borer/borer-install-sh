#/bin/bash

[[ ! $(command -v git) ]] && $install_command git || echo "git exist!"
git config --global core.editor vim
[[ ! $(command -v tig) ]] && $install_command tig || echo "tig exist!"
