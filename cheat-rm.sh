#!/bin/sh

# by Jakukyo Friel <weakish@gmail.com> under GPL-2

### delete a cheatsheet

cd $CHEAT_REPO
git rm $1.md
git commit -m "delete $1" "($2)"
