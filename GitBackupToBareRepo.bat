set sourcePath=%1
set targetPath=%2

IF "%~1"=="" GOTO endparse


cd %sourcePath%
git init 

mkdir %targetPath%
cd %targetPath%
git init --bare

cd %sourcePath%
git remote add backup %targetPath%

git add -A
git commit -m "Backup via script"
git push backup

:endparse