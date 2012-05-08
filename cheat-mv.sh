#!/bin/sh

# by Jakukyo Friel <weakish@gmail.com> under GPL-2

### rename a cheatsheet

cd $CHEAT_REPO
git mv $1.md $2.md
git commit -m "rename $1 to $2" "($3)"
