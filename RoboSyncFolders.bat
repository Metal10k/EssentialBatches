set sourcePath=%1
set targetPath=%2

IF "%~1"=="" GOTO endparse

robocopy %sourcePath% %targetPath% /E /XO
robocopy %targetPath% %sourcePath% /E /XO

:endparse