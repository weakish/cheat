#!/bin/sh

set -e
set -u

### edit a cheatsheet

cd "$CHEAT_REPO"
if (which editor &> /dev/null); then
    editor "$1.md"
elif (which vim &> /dev/null); then
    vim "$1.md"
elif (which vi &> /dev/null); then
    vi "$1.md"
else
    echo "Cannot find vi/vim."
    exit 69 # EX_UNAVAILABLE
fi    
git add "$1.md"
git commit -m "Create or update $1"
