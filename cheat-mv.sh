#!/bin/sh

### rename a cheatsheet

cd "$CHEAT_REPO"
git mv $1.md $2.md
git commit -m "rename $1 to $2" "($3)"
