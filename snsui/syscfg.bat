set src=dsc
set updSnsAPI=False
rem updSnsAPI - Updated SnsAPI
rem Don't touch this variable.
set ApiLibEnable=1
rem Placeholder
set SnsUpdInst=SNS-DOS Experience
set ApiVariables=2
:: Placeholder
set ApiGUI=SnsUI
set SnsPlayer=2
set ApiIf=2
set ApiExOption=1
set SnsAppMgr=1
set ApiFunction=2
set lastnews=SNS-DOS 0.8.1 - More fun, more features and more changes.
set ApiFor=2
set ApiOther=2
set ApiAppMgr=2
rem SnsAPI & SnsUI Compatibility
set SnsAPI2=1
set SnsAPI21=1
set SnsAPI25=1
set SnsAPI26=1
set SnsAPI-Support=1
rem SnsUI, SNS-DOS and SnsAPI versions
set SnsVer=0.8.1
set SnsBuild=2113
set SnsSubBuild=4
set ApiLibVer=2.6.7
rem SnsUI Settings (including experimental functions)
set EasterEggVer=idk
set SnsUiEnabled=1
set SnsDisk=1
set SnsVM=1
set SnsScripting=1
set SnsLogger=1
set UiRender=Std
set UiSysChk=1
set UiSnsGpu=KMU Fidelity 4750X
set UiSnsGrphXGpu=KMU Fidelity 4750X4D
set SnsVram=36 MB
set SnsGVram=44 MB
set SnsCpu=Mediatech Meleo X586 @ 825 MHz
set SnsRam=72 MB
set SnsRom=400 MB
rem Windows Version check
rem A reminder to upgrade to Windows 10 1809+
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
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1809)
ver | findstr /i "10\.0\.1836\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 1903-1909 & SnsHelper.vbs /OldWinX)
ver | findstr /i "10\.0\.1904.\" > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=10 Version 20H1-22H2)
ver | findstr /i "10\.0\.22000\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=11 RTM)
ver | findstr /i "10\.0\.22621\." > nul
if %ERRORLEVEL% EQU 0 (set WinVerChk=11 22H2 or later)
if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (set SysArch=x64) else (SnsHelper.vbs /EOS_Arch & set SysArch=x32)
if "%PROCESSOR_ARCHITECTURE%"=="ARM64" (set SysArch=ARM)
set SysFullName=Windows %WinVerChk% (%SysArch%)
echo [%date% %time%] OS: %SysFullName%>>SNS-DOS.log
:: Unstable Alpha Settings [no use]
:: These apps are unstable.
set UnlockLocalizer=0
set UnlockSnsFiles=0
set UnlockNetwork=0
set UnlockTowergen=1
set windowtype=std
:: SNS-DOS 0.8.1
:: Changelog:
:: !NEW! Windows version detection!
:: !NEW! Config file!
:: !REVAMP! Login screen setup!
:: Optimized & integrated SnsUpdate, so there's
:: no need to download SnsUpdate every time.
:: New features for SnsUI & SnsAPI
:: SnsBoot 1.2 & SnsUpdate 1.0 Revamp
:: Compatibility check
:: SnsHelper 0.3
:: - New warnings
:: - New Critical window
:: - New SnsUpdate prompt window
:: Configuring hardware
:: !NEW! Settings. Every settings will be migrated to Settings
:: !NEW! Reworked SnsVM and Critical to improve UX.
:: !TIP! New secret code has been added.
:: !RUNFILE! Refreshed functionality.
:: !NEW! Easter eggs.
:: !IMPROVEMENT! Windows version check.
:: !OS_SUPPORT! Now, SNS-DOS supports Windows Vista "SP3" instead of all Vista versions and supports only Windows 7 SP1 and newer.
:: Also, Windows 10 1903-1909 are marked as unsupported Windows 10 version.
:: !NEW! discord command.
:: !NEW! echo and calculator. Just basic commands
:: !CHANGED! Help. Now, you can go back and select category. Plus, some commands are moved into other categories.
:: ARM support present.
:: Improved SNS-DOS to be more useful than SNS-DOS 0.8.0