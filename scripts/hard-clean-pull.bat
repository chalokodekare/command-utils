set branch=%1

git add *
git stash
git stash clear
git reset HEAD --hard
git clean -f
git checkout %branch%
git pull
robocopy %COMMAND_FILES_PATH% . run.bat