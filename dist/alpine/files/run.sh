#!/bin/sh

if [ "$(id -u)" != "0" ]; then
  su - root <<! > /dev/null
alpine
chown $(id -u).$(id -g) /src /target
adduser -D -h /src -u $(id -u) hugo
!
fi

case "$1" in

    # Commands from hugo

    "benchmark")
        exec hugo $@
        ;;

    "config")
        exec hugo $@
        ;;

    "convert")
        exec hugo $@
        ;;

    "env")
        exec hugo $@
        ;;

    "gen")
        exec hugo $@
        ;;

    "help")
        exec hugo $@
        ;;

    "import")
        exec hugo $@
        ;;

    "list")
        exec hugo $@
        ;;

    "new")
        exec hugo $@
        ;;

    "server")
        exec hugo server --bind=$HUGO_BIND $(echo $* | sed "s:^server::")
        ;;

    "undraft")
        exec hugo $@
        ;;

    "version")
        exec hugo $@
        ;;

    # Commands special to docker image

    "shell")
        exec sh /shell.sh
        ;;

    # Default build command

    *)
        exec hugo $@ --destination=$HUGO_DESTINATION
        ;;

esac
