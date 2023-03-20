set src=git
set updSnsAPI=True
rem updSnsAPI - Updated SnsAPI
rem Don't touch this variable.
set ApiLibEnable=1
rem Disable/enable SnsAPI here.
rem Disabled SnsAPI will skip SnsAPI initialization.
rem Default: 1 (enabled)
set SnsUpdInst=SNS-DOS Experience
set ApiVariables=2
set ApiGUI=SnsUI
set ApiSnsUI=2
set ApiSnsDisk=2
set ApiSnsVM=2
set ApiSnsScripting=2
set SnsLogger=2
set SnsApiStatus=Enabled
set SnsPlayer=2
set ApiIf=2
set ApiExOption=1
set SnsAppMgr=1
set ApiFunction=2
set lastnews=SnsUI 1.0 Stable may come in SNS-DOS 0.9.0 and SNS-DOS 0.8.x. So, SnsUI is still in development and there's some new experimental features that can be added.
set ApiFor=2
set ApiOther=2
set ApiAppMgr=2
rem SnsAPI & SnsUI Compatibility
set SnsApiSupport_1=1
set SnsApiSupport_1.5=1
set SnsAPI2=1
set SnsAPI21=1
set SnsAPI25=1
set SnsAPI26=1
set SnsAPI-Support=1
rem SnsUI, SNS-DOS and SnsAPI versions
set SnsVer=0.8.1 Alpha
set SnsBuild=2003
set SnsSubBuild=1
set ApiLibVer=2.6
rem SnsUI Settings (including experimental functions)
set SnsUiEnabled=1
set SnsDisk=1
set SnsVM=1
set SnsScripting=1
set SnsLogger=1
set UiRender=Std
set UiSysChk=1
set UiSnsGpu=KMU Fidelity 3900X
set UiSnsGrphXGpu=KMU Fidelity 3900X4D
set SnsVram=24 MB
set SnsGVram=32 MB
set SnsCpu=Mediatech Meleo X500 @ 500 MHz
set SnsRam=40 MB
set SnsRom=160 MB
ver | findstr /i "6\.0\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=Vista & SnsHelper.vbs /WinIsEOL_Partial)
ver | findstr /i "6\.1\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=7 & SnsHelper.vbs /WinIsEOL_Partial)
ver | findstr /i "6\.2\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=8 & SnsHelper.vbs /WinIsEOL_Partial)
ver | findstr /i "6\.3\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=8.1 & SnsHelper.vbs /WinIsEOL_Partial)
ver | findstr /i "6\.4\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Pre-RTM & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.10240\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 RTM & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.10586\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1511 & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.14393\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1607 & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.15063\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1703 & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.16299\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1709 & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.17134\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1803 & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.17763\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1809 & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.18362\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1903)
ver | findstr /i "10\.0\.18363.\" > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1909)
ver | findstr /i "10\.0\.1904.\" > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 20H1 or later)
ver | findstr /i "10\.0\.22000\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=11 RTM)
ver | findstr /i "10\.0\.22621\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=11 22H2 or later)
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set SysArch=x64) else (SnsHelper.vbs /EOS_Arch & set SysArch=x32)
set SysFullName=Windows %WinVerChk% (%SysArch%)
echo [%date% %time%] OS: %SysFullName%>SNS-DOS.log
:: SNS-DOS 0.8.1
:: Changelog:
:: !NEW! Config file!
:: !REVAMP! Login screen setup!
:: Optimized & integrated SnsUpdate, so there's
:: no need to download SnsUpdate every time.
:: !FIX! Fixed corrupted installer
:: !INSTALLER! Upgrade option.
:: New features for SnsUI & SnsAPI
:: Upcoming: translations to 4 languages
:: (Ukrainian, Polish, German and French)
:: SnsNetworking Alpha (only SnsExperiments!)
:: SnsBoot 1.2 & SnsUpdate 1.0 Revamp
:: Compatibility check
:: SnsHelper 0.3
:: - New warnings
:: Configuring hardware
