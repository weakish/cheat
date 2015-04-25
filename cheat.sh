#!/bin/sh

### display a cheatsheet

readonly cheatsheet=$1.md

if [ -e $CHEAT_REPO/$cheatsheet ]; then
  less $CHEAT_REPO/$cheatsheet
elif ( ls -1 $CHEAT_REPO | grep -qe $cheatsheet ); then
  echo 'Do you mean' `ls -1 $CHEAT_REPO | grep $cheatsheet | sed -e 's/.md$//'` '?'
else
  cheat-ed ${cheatsheet%.md}
fi
