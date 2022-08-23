#!/usr/bin/env bash

git add . &>/dev/null 
git stash save -u 'wip' &>/dev/null
git stash drop  &>/dev/null
echo "removed all changes"

