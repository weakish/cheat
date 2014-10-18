#!/bin/sh

# by Jakukyo Friel <weakish@gmail.com> under GPL-2

### synchronize with remote repo

cd $CHEAT_REPO
git pull && push
