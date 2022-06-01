@echo off & mode 90,27 & color b
cls
set updSnsAPI=True
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
set lastnews=SNS-DOS 0.8.0: Global Update
set ApiFor=2
set ApiOther=2
set ApiAppMgr=2
set ApiEaster=1
set ApiCompability=2
set ApiPS2=2
set ApiDlFile=2
set SnsVer=0.8.0
set SnsBuild=1700.4
title SNS-DOS %SnsVer% Build %SnsBuild%
set ApiVBS=2
set ApiSnd=2
set ApiColor=2
set SnsApiSupport_1=1
set SnsApiSupport_1.5=1
set SnsAPI2=1
set SnsAPI21=1
set SnsAPI-Support=1
set sysusr=This name is reserved by system.
:chk0
if exist help_en.txt (
goto chk1
) else (
echo [%date% %time%] SNS-DOS wasn't booted because help_en.txt doesn't exist.>>SNS-DOS.log
exit
)
:chk1
if not exist SnsHelper.vbs (
echo [%date% %time%] SNS-DOS wasn't booted because SnsHelper.vbs doesn't exist.>>SNS-DOS.log
exit
)
cls
:named
set name=
set /p name=Enter name: 
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
if "%name%"=="Administrator" (
echo %sysusr%
goto named
)
if "%name%"=="Admin" (
echo %sysusr%
goto named
)
echo           =SNS-DOS=  =%name%=
echo Built 01.06.2022
echo Translated by ArtemMine37
wscript "%cd%\SnsHelper.vbs" /StrtpSnd
:sns-dos
set command=
set /p command=%name%: 
if "%command%"=="help" (goto help)
if "%command%"=="?" (goto help)
if "%command%"=="cmds" (goto help)
if "%command%"=="clear" (goto clear)
if "%command%"=="cls" (goto clear)
if "%command%"=="exit" (exit)
if "%command%"=="quit" (exit)
if "%command%"=="about" (goto snsver)
if "%command%"=="snsver" (goto snsver)
if "%command%"=="ver" (goto snsver)
if "%command%"=="ua" (goto ua)
if "%command%"=="color" (
echo Enter colorcode for console.
set setColor=
set /p setColor=Colorcode:
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
echo Data: %date% & echo Time: %time%
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
echo Now, SNS-DOS Update in the SNS-DOS boot file.
goto sns-dos
)
if "%command%"=="reboot" (
echo Restarting...
echo.
cls
sns_en.cmd
)
echo Unknown command. Try 'help' to find required command.
goto sns-dos

:run
echo [Run] {SnsAPI.Utility.Run} (v2)
echo Enter directory name, file name.
echo and SNS-DOS opens this file.
set runapp_folder=
set /p runapp_folder=Directory (example: X:\fldr):
set runapp_file=
set /p runapp_file=File name: 
start %runapp_folder%\%runapp_file% 
goto sns-dos

:help
type help_en.txt
goto sns-dos

:clear
cls
echo Cleared successfully!
goto sns-dos

:snsver
echo [==[About SNS-DOS]=={SnsAPI.System.About}=(v1)==]
echo SNS-DOS
echo =Version: %SnsVer%
echo =Build: %SnsBuild%
echo =SnsAPI
echo ==Version: %ApiLibVer%.%SnsBuild%
echo ==Status: %SnsApiStatus%
echo =Beta 2
echo [WARNING!] Beta versions are little bit unstable!
echo [===============================================]
echo x - Exit from 'About System'
echo a - Advanced Info
choice -c xa -d x -t 10 -n
if "%errorlevel%"=="1" (goto sns-dos)
if "%errorlevel%"=="2" (goto AdvSNS)

:AdvSNS
echo [==[About SNS-DOS]=={SnsAPI.System.About}=(v1)==]
echo SNS-DOS
echo =PC Architecture: %Processor_Architecture%
echo Updates
echo =Update ID: 0.8.0b2_en2
echo =Installed update: SNS-DOS Beta Expirience
echo =Is SNS-DOS updated: %updSnsAPI%
echo Source: Installed via Github or 3rd party source.
echo [WARNING!] Beta versions are little bit unstable!
echo [===============================================]
goto sns-dos

:AppMgr
if "%SnsAppMgr%"=="1" (
echo You can start SNS-DOS program using .sns file.
echo Drag .sns file to sns_eng folder, & echo enter program name and this program is starts
set ProgName=
set /p ProgName=File: 
echo Please, wait.
ping 127.0.0.1>nul
if exist %ProgName%.sns (
ren %ProgName%.sns %ProgName%.cmd
echo [%date% %time%] Started %ProgName%.>>SNS-DOS.log
start %ProgName%.cmd
goto sns-dos
) else (
echo Not found %ProgName%. If you enter this with 1st try, it is bug.
echo Just re-open AppMgr and enter something.
echo [%date% %time%] Not found %ProgName%. It is bug or file wasn't found.>>SNS-DOS.log
goto sns-dos
)
goto sns-dos
)
echo SnsApi.AppMgr wasn't found.
goto sns-dos

:clr
%Windir%\System32\WindowsPowerShell\v1.0\Powershell.exe write-host -foregroundcolor %2 %1

:NotUsedCommands
rem That's useless command.
