#!/bin/sh

PS1="\e[1;32mhugo\e[m:\e[1;34m\w\e[m\$ "
HOME=/src

alias h="hugo"

if [ "$HUGO_PANDOC" != "" ]; then
  alias pandoc="$HUGO_PANDOC"
fi