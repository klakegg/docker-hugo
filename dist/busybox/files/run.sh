#!/bin/bash

case "$1" in

    "benchmark")
        hugo $@
        ;;

    "config")
        hugo $@
        ;;

    "convert")
        hugo $@
        ;;

    "env")
        hugo $@
        ;;

    "gen")
        hugo $@
        ;;

    "help")
        hugo $@
        ;;

    "import")
        hugo $@
        ;;

    "list")
        hugo $@
        ;;

    "new")
        hugo $@
        ;;

    "server")
        hugo server --bind=$HUGO_BIND $(echo $* | sed "s:^server::")
        ;;

    "undraft")
        hugo $@
        ;;

    "version")
        hugo $@
        ;;

    *)
        hugo $@ --destination=$HUGO_DESTINATION
        ;;

esac
