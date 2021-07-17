#!/bin/sh

curBranch=$(git rev-parse --abbrev-ref HEAD |awk '{ print $1 }')

git stash;
git checkout $1;
git pull origin $1;
git checkout $curBranch
git merge $1;
git stash pop;