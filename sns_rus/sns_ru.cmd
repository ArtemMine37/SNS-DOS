@echo off & mode 90,27 & color b & chcp 1251
cls
set ApiLibVer=2.5
set ApiLibEnable=1
set ApiStart=2
set ApiSet=2
set ApiGUI=SNS
set SnsApiStatus=Enabled
set ApiEcho=2
set ApiChoiceGUI=2
set ApiIf=2
set ApiExOption=1
set SnsAppMgr=1
set ApiFunction=2
set ApiGoto=2
set ApiType=2
set ApiCopy=2
set ApiMove=2
set lastnews=Обновление SNS-DOS 0.8.0: Глобальное обновление
set ApiFor=2
set ApiOther=2
set ApiAppMgr=2
set ApiEaster=1
set ApiCompability=2
set ApiPS2=2
set ApiDlFile=2
set SnsVer=0.8.0
set SnsBuild=1624.3
title SNS-DOS %SnsVer%, сборка %SnsBuild%
set ApiVBS=2
set ApiSnd=2
set ApiColor=2
set SnsApiSupport_1=1
set SnsApiSupport_1.5=1
set SnsAPI2=1
set SnsAPI21=1
set SnsAPI-Support=1
set sysusr=Имя, которое установлено, занято системой.
:chk0
if exist help_ru.txt (
goto chk1
) else (
echo [%date% %time%] SNS-DOS нельзя запустить без файла help_ru.txt>>SNS-DOS.log
exit
)
:chk1
if not exist SnsHelper.vbs (
echo [%date% %time%] SNS-DOS нельзя запустить без файла SnsHelper.vbs>>SNS-DOS.log
exit
)
cls
:named
set name=
set /p name=Введите имя: 
if "%name%"=="SNS-DOS" (
echo %sysusr%
goto named
)
if "%name%"=="SNS-OS" (
echo %sysusr%
goto named
)
if "%name%"=="SNS" (
echo %sysusr%
goto named
)
if "%name%"=="System" (
echo %sysusr%
goto named
)
if "%name%"=="Система" (
echo %sysusr%
goto named
)
if "%name%"=="Администратор" (
echo %sysusr%
goto named
)
if "%name%"=="Administrator" (
echo %sysusr%
goto named
)
if "%name%"=="Admin" (
echo %sysusr%
goto named
)
call :clr "SNS-DOS Version 0.8.0" DarkRed
echo Built 10.05.2022
wscript "%cd%\SnsHelper.vbs" /StrtpSnd
:sns-dos
set command=
set /p command=%name%: 
if "%command%"=="help" (
goto help
)
if "%command%"=="?" (
goto help
)
if "%command%"=="cmds" (
goto help
)
if "%command%"=="clear" (
goto clear
)
if "%command%"=="cls" (
goto clear
)
if "%command%"=="exit" (
exit
)
if "%command%"=="quit" (
exit
)
if "%command%"=="about" (
goto snsver
)
if "%command%"=="snsver" (
goto snsver
)
if "%command%"=="ver" (
goto snsver
)
if "%command%"=="color" (
echo Выберите цвет, как в cmd.exe.
set setColor=
set /p setColor=Код цвета:
color %setColor%
goto sns-dos
)
if "%command%"=="cmd" (
start cmd.exe
goto sns-dos
)
if "%command%"=="taskmgr" (
start taskmgr.exe
goto sns-dos
)
if "%command%"=="time" (
echo Дата: %date%
echo Время: %time%
goto sns-dos
)
if "%command%"=="news" (
echo %lastnews%
goto sns-dos
)
if "%command%"=="run" (goto run)
if "%command%"=="start" (goto run)
if "%command%"=="AppMgr" (goto AppMgr)
if "%command%"=="appmgr" (goto AppMgr)
if "%command%"=="appMgr" (goto AppMgr)
if "%command%"=="Appmgr" (goto AppMgr)
if "%command%"=="update" (
echo Подготовка к обновлению...
if exist UpdChk.sns (
ren UpdChk.sns UpdChk.cmd
echo [%date% %time%] ===========Update==========>>SNS-DOS.log
cmd /c UpdChk.cmd
goto sns-dos
) else (
echo Не удалось найти %ProgName%. Подробнее в SNS-DOS.log
echo [%date% %time%] Нет файла UpdChk.sns.>>SNS-DOS.log
goto sns-dos
)
goto sns-dos
)
if "%command%"=="reboot" (
echo Перезагрузка...
echo.
cls
core1.cmd
)
echo Неизвестная комманда.
goto sns-dos

rem ======================
rem SNS-DOS AltCommands
rem ======================

:run
echo Можно запустить любую программу в определённых директории.
echo Введите название директории,
echo название программы и она будет открыта.
set runapp_folder=
set /p runapp_folder=Путь к директории программы:
set runapp_file=
set /p runapp_file=Название программы: 
start %runapp_folder%\%runapp_file% 
goto sns-dos

:help
type help_ru.txt
goto sns-dos

:clear
cls
echo Очистка успешна!
goto sns-dos

:snsver
echo [===============================================]
echo SNS-DOS
echo =Версия: %SnsVer%
echo =Build: %SnsBuild%
echo =PC Architecture: %ProcessorArchitecture%
echo =SnsAPI
echo ==Версия: %ApiLibVer%.%SnsBuild%
echo ==Статус: %SnsApiStatus%
echo =Beta 1
echo ==Exclusive: No; available for everyone.
echo [WARNING!] Beta versions are little bit unstable!
echo [===============================================]
echo x - Exit from SnsAPI.System.About
echo a - Advanced Info
choice -c xa -d x -t 10 -n
if "%errorlevel%"=="1" (goto sns-dos)
if "%errorlevel%"=="1" (goto AdvSNS)

:AppMgr
if "%SnsAppMgr%"=="1" (
echo Вы можете запускать приложения в текущей папке.
echo Введите название программы, и SNS-DOS откроет его.
set ProgName=
set /p ProgName=Название приложения: 
if exist %ProgName%.sns (
ren %ProgName%.sns %ProgName%.cmd
echo [%date% %time%] Запущен %ProgName%.>>SNS-DOS.log
start %ProgName%.cmd
goto sns-dos
) else (
echo Не удалось найти %ProgName%. Подробнее в SNS-DOS.log
echo [%date% %time%] Не удалось найти %ProgName%. Убедитесь, что вы поместили программу для SNS-DOS в папку с SNS-DOS.>>SNS-DOS.log
goto sns-dos
)
goto sns-dos
)
echo SnsApi.AppMgr не был обнаружен.
goto sns-dos

:clr
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor %2 %1