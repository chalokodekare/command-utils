set branch=%1

git stash
git checkout %branch%
git pull
git stash apply