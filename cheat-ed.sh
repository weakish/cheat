#!/bin/sh

### edit a cheatsheet

cd "$CHEAT_REPO"
editor $1.md
git add $1.md
git commit -m "Create or update $1"
