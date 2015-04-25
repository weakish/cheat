#!/bin/sh

### grep for cheatsheet

cd $CHEAT_REPO
git grep "$@"
