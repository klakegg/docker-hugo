#!/bin/sh

# Environment configuration triggered by both shell and hugo script.

# Set `pandoc` alias when $HUGO_PANDOC is set
test "$HUGO_PANDOC" = "" || alias pandoc="$HUGO_PANDOC"
