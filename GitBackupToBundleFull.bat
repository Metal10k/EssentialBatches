set sourcePath=%1
set targetPath=%2

IF "%~1"=="" GOTO endparse


cd %sourcePath%
git init 

git add -A
git commit -m "Backup via script"

git bundle create %targetPath% --all

:endparse