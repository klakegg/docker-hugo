#!/bin/sh

PS1="\e[1;32mhugo\e[m:\e[1;34m\w\e[m\$ "
HOME=/src

alias hugo="sh /run.sh"
alias h="hugo"

if [ -e /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi
