@echo off
rem SnsBoot Version 1.2
rem Changelog:
rem Added SubVersion check
rem Updated arguments
rem Added new comments
rem Added SnsBIOS
rem Added Boot Menu
rem Added SNS-DOS Verison Check
rem Added color support
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
if "%1"=="/SnsUpdate" (
if "%2"=="/NoUpdates" (
goto boot
)
if "%2"=="/UpdateInstalled" (
echo We installed the update. Enjoy the latest SNS-DOS!
goto boot
)
)
set UpdateLink=
set UpdateID=2000
set UpdateSubID=100
set SnsUpdVer=0.8.0
set SnsUpdateMode=0
rem SnsUpdateMode is requied for checking updates.
rem 0 - Disabled automatic update check.
rem 1 - Automatic update check enabled,
rem if it found update, SNS-DOS gives
rem choice to download updates.
rem 2 - Automatic update install enabled.
echo                     =SNS-DOS=
echo Booting up...
if "%SnsUpdateMode%"=="0" (
goto boot
) else (
echo Checking for updates... If we found update, we notify you about it.
bitsadmin /create SnsUpdate
bitsadmin /addfile SnsUpdate %UpdateLink% %cd%\update.cmd
bitsadmin /RESUME SnsUpdate
bitsadmin /complete SnsUpdate
goto UpdChk
)
:boot
if exist ru (
goto sns-ru
) else (
if exist en (
goto sns-en
) else (
goto oobe
)
)

:oobe
echo Select language:
echo [E]nglish
echo [R]ussian (Russia)
color 0f
choice -c er -n
if "%errorlevel%"=="1" (
echo 1>en
cd sns_eng
sns_en.cmd /Native
) else (
if "%errorlevel%"=="2" (
echo 1>ru
cd sns_eng
sns_en.cmd /Native
)
)

:sns-ru
cd sns_rus
sns_ru.cmd /Native

:sns-en
cd sns_eng
sns_en.cmd /Native

:UpdChk
if "%SnsUpdateMode%"=="1" (
update.cmd
)
if "%SnsUpdateMode%"=="2" (
update.cmd /AutoDL
)