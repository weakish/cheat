#!/bin/sh

# by Jakukyo Friel <weakish@gmail.com> under GPL-2

### grep for cheatsheet

cd $CHEAT_REPO
git grep "$@"
