@echo off
if "%1"=="/SnsUpdate" (
if "%2"=="/NoUpdates" (
goto boot
)
if "%2"=="/UpdateInstalled" (
echo We're installed update. Enjoy the latest SNS-DOS!
goto boot
)
)
set UpdateLink=
set UpdateID=080_b2_1
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
echo Checking for updates... If we found update, we message it.
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
echo [E]nglish (US)
echo [R]ussian (Russia)
choice -c er -n
if "%errorlevel%"=="1" (
echo 1>en
goto boot
) else (
if "%errorlevel%"=="2" (
echo 1>ru
goto boot
)
)

:sns-ru
cd sns_rus
sns_ru.cmd

:sns-en
cd sns_eng
sns_en.cmd

:UpdChk
if "%SnsUpdateMode%"=="1" (
update.cmd
)
if "%SnsUpdateMode%"=="2" (
update.cmd /AutoDL
)
