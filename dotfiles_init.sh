#!/bin/sh
git clone --bare https://github.com/takuesta/dotfiles.git ${HOME}/.dotfiles
alias dotfiles="/usr/bin/git --git-dir=${HOME}/.dotfiles/ --work-tree=${HOME}"
rm .bashrc 2>/dev/null;
dotfiles checkout && source .bashrc
dotfiles config --local status.showUntrackedFiles no

