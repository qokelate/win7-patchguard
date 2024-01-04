@echo off & pushd "%~dp0"

copy /y "%CD%\TitanHide.sys" "%systemroot%\system32\drivers\TitanHide.sys"

sc delete TitanHide

sc create TitanHide binPath= "%systemroot%\system32\drivers\TitanHide.sys" type= kernel

sc start TitanHide

sc query TitanHide

pause

exit
