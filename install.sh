#!/bin/sh

tar -zxvf hugo.tar.gz

name=$(ls | grep "hugo_" | head -1)

mv $name/$name /bin/hugo
rm -r $name
