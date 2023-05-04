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
rem Moved SnsUpdate into SNS-DOS
:: SnsBoot 1.2.1-1.2.5
:: - Removed color support, and...
:: we made SnsBIOS
echo [SnsBIOS v1.10]
echo                     =SNS-DOS=
echo Booting up...

:boot
if exist y (
cd snsui
sns_en.cmd /Native
) else (
goto oobe
)

:oobe
echo     -=Random Text=-
cd snsui
md SnsUpdate
cd..
echo SNS-DOS - OS, that can be used for:
echo - Fun, experiments, and, even, INTERACTION!
echo Also, SnsUI helps making SNS-DOS more fancy.
echo There's a lot of features with hidden commands.
echo Do you wanna continue booting SNS-DOS?
echo Y = Yes / N = No
choice /n
if "%errorlevel%"=="1" (echo.>y & goto boot)