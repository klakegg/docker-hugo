#!/bin/sh

# Setting up autocomplete for hugo
mkdir /etc/bash_completion.d
hugo gen autocomplete > /dev/null

# Notify user
echo "Shell ready."
echo

# Start bash
bash
