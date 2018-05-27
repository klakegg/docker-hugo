#!/bin/sh

# Install bash
apk --no-cache add bash bash-completion

# Setting up autocomplete for hugo
mkdir /etc/bash_completion.d
hugo gen autocomplete > /dev/null

# Creating .bashrc
cat <<EOF > /root/.bashrc
PS1="\e[1;32mhugo\e[m:\e[1;34m\w\e[m\$ "
HOME=/src

alias hugo="sh /run.sh"
alias h="hugo"

. /usr/share/bash-completion/bash_completion
EOF

# Notify user
echo "Shell ready."
echo

# Start bash
bash
