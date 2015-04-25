#!/bin/sh

# by Jakukyo Friel <weakish@gmail.com> under GPL-2

### synchronize with remote repo

# git
cd $CHEAT_REPO
git pull && git push

# evernote
if which gnsync; then
  gnsync --two-way --path $CHEAT_REPO --mask '*.md' --format markdown \
  --logpath $CHEAT_REPO/gnsync.log --notebook cheatsheets
fi
