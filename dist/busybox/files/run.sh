#!/bin/bash

case "$1" in

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

    *)
        exec hugo $@ --destination=$HUGO_DESTINATION
        ;;

esac
