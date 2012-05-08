#!/bin/sh

# by Jakukyo Friel <weakish@gmail.com> under GPL-2

### display a cheatsheet

readonly cheatsheet=$1.md 

if [ -e $CHEAT_REPO/$cheatsheet ]; then
  less $CHEAT_REPO/$cheatsheet
elif ( ls -1 $CHEAT_REPO | grep -qe ${cheatsheet%.md} ); then
  echo 'Do you mean' `ls -1 $CHEAT_REPO | grep` '?'
else
  cheat-ed ${cheatsheet%.md}
fi
