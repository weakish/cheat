#!/bin/sh

set -e
set -u

### grep for cheatsheet

cd "$CHEAT_REPO"
git grep "$@"
