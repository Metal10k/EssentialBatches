set sourcePath=%1
set targetPath=%2

IF "%~1"=="" GOTO endparse

git remote add backupRemote %targetPath%

git add -A
git commit -m "Backup via script"
git push backupRemote

:endparse