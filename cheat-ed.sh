#!/bin/sh

# by Jakukyo Friel <weakish@gmail.com> under GPL-2

### edit a cheatsheet

cd $CHEAT_REPO
editor $1.md
git add $1.md
git commit

