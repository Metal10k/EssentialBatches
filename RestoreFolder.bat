set sourcePath=%1
set targetPath=%2

IF "%~1"=="" GOTO endparse

robocopy %targetPath% %sourcePath% /MIR /E /Z

:endparse