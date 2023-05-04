@echo off & mode 80,24 & color f0
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
cls
echo           -=SNS-DOS=-
echo [%date% %time%] SNS-DOS is in init status.>>SNS-DOS.log
echo Preparing emulation...
if "%1"=="/Native" (goto snsboot)
ping 127.0.0.1>nul
call syscfg.bat
echo Emulation preset: %SnsRam%/%SnsRom% RAM/ROM
echo CPU: %SnsCpu%
echo GPU: %UiSnsGpu% %SnsVram%
echo SnsGraphX GPU: %UiSnsGrphXGpu% %SnsGVram%
ping 127.0.0.1>nul
echo [%date% %time%] Started emulator.>>SNS-DOS.log
ping 127.0.0.1>nul
echo Prepared SNS-DOS 0.8.0 emulation. Starting SnsUI...
echo Starting emulator...
echo Starting SnsAPI emulation...
ping 127.0.0.1>nul
echo Starting SnsBoot [1 phase]
echo %col%[42m     -=SNS-DOS is starting...=-
echo [%date% %time%] Started SnsBoot and services.>>SNS-DOS.log
echo Started SnsDisk service
echo Started SnsReg service
echo Started SnsDisplay.
echo Setting up resolution: 90x27 symbols
ping 127.0.0.1>nul
echo Starting SnsBoot [2 phase]
echo Starting SnsTime service
echo Starting SnsCmdHost service
echo Starting SnsUiProvider service
echo Starting SnsGraphics service
ping 127.0.0.1>nul
echo [%date% %time%] SnsDisk init.>>SNS-DOS.log
echo           -=SnsFiles / Info=-
echo Free space: 100 MB of 160 MB
echo RAM: 65% filled
echo CPU load: 99%
echo GPU load: 69%
echo SnsUI can't process 473 of 999 render methods (47,3 = unsuccess)
echo GPU (SnsGraphX) load: 90%
echo SnsUI can't process 369 of 999 render methods (36,9 = unsuccess)
ping 127.0.0.1>nul
echo SnsUI.RenderText is started.
echo Connecting to emulator...
ping 127.0.0.1>nul
echo Success!
goto snsboot

:named
echo        -=SNS-DOS / Setup=-
echo [%date% %time%] Login screen is appeared.>>SNS-DOS.log
set name=
set /p name=Enter name: 
echo Creating %name%...
if "%name%"=="SNS-DOS" (
    echo       -=SnsUser / Error=-
    echo %sysusr%
    goto named
)
if "%name%"=="SNS" (
    echo       -=SnsUser / Error=-
    echo %sysusr%
    goto named
)
if "%name%"=="System" (
    echo       -=SnsUser / Error=-
    echo %sysusr%
    goto named
)
if "%name%"=="Administrator" (
    echo       -=SnsUser / Error=-
    echo %sysusr%
    goto named
)
if "%name%"=="Admin" (
    echo       -=SnsUser / Error=-
    echo %sysusr%
    goto named
)
if "%name%"=="SnsUI" (
    echo       -=SnsUser / Error=-
    echo %sysusr%
    goto named
)
if "%name%"=="SnsUi" (
    echo       -=SnsUser / Error=-
    echo %sysusr%
    goto named
)
if "%1"=="/Native" (goto bootsns)
goto boot

:boot
echo Reading memory...
ping 127.0.0.1>nul
echo Building SnsCore... 0%
ping 127.0.0.1>nul
echo Building SnsCore... 100%
echo Starting SnsCore...
ping 127.0.0.1>nul
echo           -=SNS-DOS=-  -=%name%=-
if "%src%"=="dsc" (echo SNS-DOS Original)
if "%src%"=="git" (echo SNS-DOS)
echo Version 0.8.0
echo Compilling SnsCon... 0
ping 127.0.0.1>nul
echo Compilling SnsCon... 100
echo Starting SnsCon...
ping 127.0.0.1>nul
echo Starting console...
echo Console is started!
echo.
echo.
goto sns-dos

:snscode_a9x
if "%ache%"=="1" (echo a nicho)
if "%ache%"=="2" (echo scha otformatiruyou tebya)
if "%ache%"=="3" (echo doigralsa)
if "%ache%"=="4" (echo bruh)
if "%ache%"=="5" (exit)
goto snscode

:snsboot
cls
echo        -=SNS-DOS / Starting=-
echo [Starting SnsAPI]
echo [%date% %time%] Standard SNS-DOS boot.>>SNS-DOS.log
call syscfg.bat
ping 127.0.0.1>nul
cls
echo        -=SNS-DOS / Starting=-
echo [Starting SnsCore]
set ache=0
title SNS-DOS %SnsVer% Build %SnsBuild%.%SnsSubBuild%
set sysusr=This name is reserved by system.
if not exist SnsHelper.vbs (
echo [%date% %time%] SNS-DOS wasn't booted because SnsHelper.vbs doesn't exist.>>SNS-DOS.log
exit
)
goto named

:bootsns
:: Don't forget inviting your friends to our Discord server ;)
echo           -=SNS-DOS=-  -=%name%=-
if "%src%"=="dsc" (echo SNS-DOS [Project Towergen])
if "%src%"=="git" (echo SNS-DOS)
echo Version 0.8.1
echo SNS-DOS Console [Version 1.0.2038.1]
echo [%date% %time%] SNS-DOS is started!>>SNS-DOS.log
goto sns-dos

:sns-dos
set command=
set /p command=%name%: 
if "%command%"=="SnsAPI.SnsHelp" (goto help)
if "%command%"=="help" (goto help)
if "%command%"=="?" (goto help)
if "%command%"=="cmds" (goto help)
if "%command%"=="SnsAPI.Display.Clear" (goto clear)
if "%command%"=="clear" (goto clear)
if "%command%"=="cls" (goto clear)
if "%command%"=="exit" (exit)
if "%command%"=="quit" (exit)
if "%command%"=="SnsAPI.System.Shutdown" (goto exit)
if "%command%"=="about" (goto snsver)
if "%command%"=="snsver" (goto snsver)
if "%command%"=="SnsAPI.SnsSettings.AboutSystem" (goto snsver)
if "%command%"=="ver" (goto snsver)
if "%command%"=="random" (goto random)
if "%command%"=="SnsAPI.Random" (goto random)
if "%command%"=="theme" (goto theme)
if "%command%"=="SnsAPI.SnsSettings.SelectTheme" (goto theme)
if "%command%"=="cmd" (start cmd.exe & goto sns-dos)
if "%command%"=="taskmgr" (start taskmgr.exe & echo Sended command to host. & goto sns-dos)
if "%command%"=="time" (goto date)
if "%command%"=="news" (echo %lastnews% & goto sns-dos)
if "%command%"=="run" (goto run)
if "%command%"=="start" (goto run)
if "%command%"=="update" (echo Now, SNS-DOS Update in the SNS-DOS boot file. & goto sns-dos)
if "%command%"=="reboot" (echo Rebooting... & sns_en.cmd)
if "%command%"=="SnsCode" (goto code)
if "%command%"=="snscode" (goto code)
if "%command%"=="Snscode" (goto code)
if "%command%"=="snsCode" (goto code)
if "%command%"=="snsdisk" (goto files)
if "%command%"=="snstasks" (goto tasks)
if "%command%"=="snsvm" (goto snsvm)
if "%command%"=="beta" (goto beta)
if "%command%"=="network" (goto networking)
if "%command%"=="SnsSettings" (goto settings)
if "%command%"=="Snssettings" (goto settings)
if "%command%"=="snsSettings" (goto settings)
if "%command%"=="snssettings" (goto settings)
if "%command%"=="discord" (goto discord)
echo Unknown command. Try 'help' to find required command.
goto sns-dos

rem ======================
rem SNS-DOS AltCommands
rem ======================
:discord
set titlename=Discord
call SnsUiEngine.cmd std
echo Hi there, %name%! Our Discord is:
echo https://discord.gg/2ZkbJPHqJ6
goto sns-dos 

:settings
if "%UnlockSettings%"=="1" (
    set titlename=Settings
    call SnsUiEngine.cmd std
    echo The most modern SNS-DOS setup app ever!
    echo      -=1 / Network=-
    echo      -=2 / System=-
    echo      -=3 / Themes=-    
    echo      -=4 / SNS-DOS=-
    echo                          -=0 / Exit=-
    choice /c 12340 /n
    if "%errorlevel%"=="1" (goto network_setup)
    if "%errorlevel%"=="2" (goto sys_setup)
    if "%errorlevel%"=="3" (goto theme)
    if "%errorlevel%"=="4" (goto snsver)
) else (goto InBeta)

:run
set titlename=RunFile
call SnsUiEngine.cmd std
echo Enter directory name to open file.
set runapp_folder=
set /p runapp_folder=Directory (example: X:\fldr):
echo Enter file name to start this file
set runapp_file=
set /p runapp_file=File name: 
echo Starting %runapp_folder%\%runapp_file%...
start %runapp_folder%\%runapp_file%
goto sns-dos

:textout
set text=
set /p text=Enter text here: 
echo %text%
goto sns-dos

:help
echo         -=SnsHelp / Commands=-
echo Select page:
echo 1 - Basic commands
echo 2 - Fun and games
echo 3 - System Tools
echo 0 - Back
choice /c 1230 /n /m Selected:
if "%errorlevel%"=="1" (
    echo      -=SnsHelp / System=-
    echo help, cmds, ? - help command
    echo about, ver, snsver - About SNS-DOS
    echo beta - Check beta features
    echo quit, exit - Exit from SNS-DOS
    echo     -=b / Back=-  -=x / Exit=-
    choice /c bx /n
    if "%errorlevel%"=="1" (goto help)
    if "%errorlevel%"=="2" (goto sns-dos)
)
if "%errorlevel%"=="2" (
    echo      -=SnsHelp / System=-
    echo time - Data and time
    echo cls, clear - Clears the screen
    echo cmd - cmd
    echo taskmgr - taskmgr
    echo update - Update check
    echo random - Random.
    echo news - Some news about SNS-DOS
    echo     -=b / Back=-  -=x / Exit=-
    choice /c bx /n
    if "%errorlevel%"=="1" (goto help)
    if "%errorlevel%"=="2" (goto sns-dos)
)
if "%errorlevel%"=="3" (
    echo      -=SnsHelp / System=-
    echo exit, quit - Exit from SNS-DOS
    echo reboot - Reboot SNS-DOS
    echo update - Update checker
    echo run, start - Starts file
    echo theme - Theme changer (default: light)
    echo snstasks - Built-in Task Manager
    echo snsdisk - Built-in SnsFiles app
    echo snsvm - SnsVM
    echo network - WebSNS (Beta)
    echo     -=SNS-DOS Build %SnsBuild%.%SnsSubBuild%=-
    echo     -=b / Back=-  -=x / Exit=-
    choice /c bx /n
    if "%errorlevel%"=="1" (goto help)
    if "%errorlevel%"=="2" (goto sns-dos)
)
if "%errorlevel%"=="4" (goto sns-dos)
goto sns-dos

:clear
cls
echo Cleared successfully!
goto sns-dos

:snsver
cls
echo     -=Settings / About SNS-DOS=-
echo  -=SNS-DOS=-
echo   -=Version: %SnsVer%=-
echo   -=Build: %SnsBuild%.%SnsSubBuild%=-
echo  -=SnsAPI=-
echo   -=Version: %ApiLibVer%.%SnsBuild%=-
echo   -=Status: %SnsApiStatus%=-
echo   -=Verify status: Fail - No SnsAPI Execute Code=-
echo  -=SnsUI=-
echo   -=Version: 1.0.0b27=-
echo   -=Pre-release=-
echo -=Stable Release=-
echo -=Released: 01.05.2023=-
echo        -=x - Back=-
echo        -=a - Advanced Info=-
choice -c xa -n
if "%errorlevel%"=="1" (goto settings)
if "%errorlevel%"=="2" (goto AdvSNS)

:AdvSNS
echo     -=SnsUI / About SNS-DOS=-
echo  -=Updates=-
echo   -=Update ID: %SnsBuild%=-
echo   -=Installed update: %SnsUpdInst%=-
echo   -=Is SNS-DOS updated: %updSnsAPI%=-
echo  -=Features=-
if "%src%"=="dsc" (echo   -=Install source: SNS-DOS Installer in Project SNS=-)
if "%src%"=="git" (echo   -=Install source: SNS-DOS Installer [3rd party or GitHub]=-)
if "%src%"=="upd" (echo   -=Updated from GitHub=-)
echo   -=SnsUI=-
echo    -=SnsVer version: 1.2=-
goto sns-dos

:random
set titlename=Random
call SnsUiEngine.cmd std
echo Here's 100 random numbers:
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random% %random% %random%
goto sns-dos
:: Did you know, that...
:: This command is made only for fun?

:InBeta
set titlename=WARNING
call SnsUiEngine.cmd std
echo This command is disabled.
echo We are developing this feature, but protected agaisnt:
echo 1] system corruption
echo 2] tons of bugs
:: echo 3] russia and belarus ;)
goto sns-dos

:theme
set titlename=Themes
call SnsUiEngine.cmd std
echo Choose a theme:
echo 1 - Light
echo 2 - Dark
echo 3 - SNS-DOS Classic
echo 4 - SNS-DOS Anti-Classic
echo 5 - Darkest [cmd only]
:: Maybe (if you have window 11) ;)
echo 6 - Unique SNS-DOS Theme
echo 7 - Custom
choice /c 12345 /n /m Colorcode: 
if "%errorlevel%"=="1" (color f0)
if "%errorlevel%"=="2" (color 0f)
if "%errorlevel%"=="3" (color 0a)
if "%errorlevel%"=="4" (color a0)
if "%errorlevel%"=="5" (color 08)
goto sns-dos

:date
set titlename=Date'n Time
call SnsUiEngine.cmd std
echo  -=Date: %date%=-   -=Time: %time%=-
echo.
echo           -=x - Exit=-
choice /c xr /n /d r /t 1
if "%errorlevel%"=="1" (goto sns-dos)
if "%errorlevel%"=="2" (cls & goto date)
goto date

:code
set titlename=Codes
call SnsUiEngine.cmd std
echo Enter code to enter the secret things:
echo Example: SnsHelp
set SnsCode=
set /p SnsCode=Code:
if "%SnsCode%"=="SnsCon" (goto sns-dos)
if "%SnsCode%"=="SnsHelp" (echo SnsExit - Exit from SnsUI Codes)
if "%SnsCode%"=="SnsExit" (goto sns-dos)
if "%SnsCode%"=="SnsSudo" (echo No command found)
if "%SnsCode%"=="Sns1stAnniversary" (echo Happy 1st SNS-DOS Anniversary! & echo The first SNS-DOS version is 0.6.0. & echo Now, latest version is %SnsVer%. & echo Thanks for supporting SNS-DOS!)
if "%SnsCode%"=="Sns2ndAnniversary" (echo Thanks for 2 years of using SNS-DOS! & echo Did you know that there's only 2 major updates? & echo So, if you want to contribute, just send some ideas and feedback! & echo That will help us making SNS-DOS better.)
if "%SnsCode%"=="SnsTime" (goto date)
if "%SnsCode%"=="SnsInstallBonus" (echo You've got a 1000 SnsCoins code! & echo Code: V5SA-CM3Q-ODEM-55FK)
if "%SnsCode%"=="SnsFilledGrill" (echo You've got a gift code! & echo Code: M56K-V309-3C95-CRT1)
if "%SnsCode%"=="SnsInBeta" (goto InBeta)
if "%SnsCode%"=="SnsAir" (echo You've got a 1000 SnsCoins code! & echo Code: X48F-556T-FWB9-ZS76)
if "%SnsCode%"=="SnsConsole" (goto sns-dos)
if "%SnsCode%"=="SnsTasks" (goto tasks)
if "%SnsCode%"=="SnsTask" (goto tasks)
if "%SnsCode%"=="SnsFiles" (goto files)
if "%SnsCode%"=="SnsDisk" (goto files)
if "%SnsCode%"=="SnsCritical" (set ErrName=ViaCode & goto critical)
if "%SnsCode%"=="SnsThemes" (goto theme)
if "%SnsCode%"=="AppMgr" (goto AppMgr)
if "%SnsCode%"=="Run" (goto run)
if "%SnsCode%"=="SnsRun" (goto run)
if "%SnsCode%"=="SnsVer" (goto snsver)
if "%SnsCode%"=="SnsVM" (goto snsvm)
if "%SnsCode%"=="SnsEnv" (echo You've got a SnsUltimate code! & echo Code: SNSVM-34092-X74M1-X28MS-V5M39)
if "%SnsCode%"=="win.sns" (goto sns-dos)
if "%SnsCode%"=="sns/sns" (set ErrName=MemDmg & goto critical)
if "%SnsCode%"=="ache" (set /a ache=%ache%+1 & goto snscode_a9x)
if "%SnsCode%"=="acho" (set /a ache=%ache%+1 & goto snscode_a9x)
if "%SnsCode%"=="ачо" (set /a ache=%ache%+1 & goto snscode_a9x)
if "%SnsCode%"=="аче" (set /a ache=%ache%+1 & goto snscode_a9x)
if "%SnsCode%"=="ачё" (set /a ache=%ache%+1 & goto snscode_a9x)
goto code

:files
if "%SnsDisk%"=="1" (echo WARNING! Still in development.) else (echo In Development & goto sns-dos)
set titlename=SnsDisk Files
call SnsUiEngine.cmd std
echo Drives:
echo     -=1 - S: / System Data=-
echo     -=2 - D: / User Data=-
choice /c 12 /n /m Selected:
if "%errorlevel%"=="1" (
    set titlename=SnsDisk Files
    call SnsUiEngine.cmd std
    echo Location: S: / System Data
    echo Files:
    echo     -=1 - SnsUI / System Folder=-
    echo     -=2 - SnsApps / Application Folder=-
    echo     -=3 - SnsCore / System Folder=-
    echo     -=4 - SNS-DOS / System Folder=-
    echo     -=5 - %name% / User Folder
    echo     -=6 - Hidden Folder=-
    choice /c 123456 /n /m Selected:
    if "%errorlevel%"=="1" (
        echo     -=SnsUI / SnsDisk Files=-
        echo Location: S:/SnsUI
        echo Files:
        echo     -= 1 - SnsUI.sns / Size: 2,048 KB =-
        echo     -= 2 - SnsUI.cfg / Size: 4 KB =-
        echo     -= 3 - UiProvider.sns / Size: 512 KB =-
        echo     -= 4 - Critical.sns / Size: 256 KB =-
        choice /c 1234 /n /m Selected:
        if "%errorlevel%"=="1" (set File=SnsUI.sns & goto files_sel)
        if "%errorlevel%"=="2" (set File=SnsUI.cfg & goto files_sel)
        if "%errorlevel%"=="3" (set File=UiProvider.sns & goto files_sel)
        if "%errorlevel%"=="4" (set File=Critical.sns & goto files_sel)
    )
    if "%errorlevel%"=="2" (
        echo     -=SnsUI / SnsDisk Files=-
        echo Location: S:/SnsApps
        echo Apps:
        echo SnsDisk can't read UiConsole.sns file.
        set ErrName=UNACCEPTABLE_FILE
        goto critical
        echo     -= 1 - SnsVM / Size: 768 KB =-
        echo     -= 2 - Console / Size: 512 KB =-
        echo     -= 3 - SnsTools / Size: 384 KB =-
        echo     -= 4 - SnsAPI / Size: 4096 KB =-
        echo     -= 5 - System / Size: 16384 KB =-
        choice /c 12345 /n /m Selected:
        if "%errorlevel%"=="1" (set File=SnsUI.sns & goto files_sel)
        if "%errorlevel%"=="2" (set File=SnsUI.cfg & goto files_sel)
        if "%errorlevel%"=="3" (set File=UiProvider.sns & goto files_sel)
        if "%errorlevel%"=="4" (set File=Critical.sns & goto files_sel)
        if "%errorlevel%"=="5" (set File=Critical.sns & goto files_sel)
    )
    if "%errorlevel%"=="3" (
        echo     -=SnsCore / SnsDisk Files=-
        echo Location: S:/SnsCore
        echo Files:
        echo 1000+ (80% corrupted)
        echo SnsDisk can't read NAND RAM (4).
        set ErrName=UNACCEPTABLE_FILE
        goto critical
    )
    if "%errorlevel%"=="4" (
        echo     -=SNS-DOS / SnsDisk Files=-
        echo Location: S:/SNS-DOS
        echo Files:
        echo SnsDisk can't read MSYSXQ2.SO8.
        set ErrName=UNACCEPTABLE_FILE
        goto critical
    )
    if "%errorlevel%"=="5" (
        echo     -=%name% / SnsDisk Files=-
        echo Location: S:/%name%
        echo Files:
        echo     -= 1 - Cfg / Size: 4 KB =-
        echo     -= 2 - SnsNet / Size: 8 KB =-
        echo     -= 3 - UiCfg / Size: 4 KB =-
        echo     -= 4 - Cache / Size: 512 KB =-
        set ErrName=UNACCEPTABLE_FILE
        goto critical
        echo     -= 5 - Unknown / Size: ? KB =-
        choice /c 12345 /n /m Selected:
        if "%errorlevel%"=="1" (set File=cfg.sns & goto files_sel)
        if "%errorlevel%"=="2" (set File=SnsNet.cfg & goto files_sel)
        if "%errorlevel%"=="3" (set File=UiCfg.sns & goto files_sel)
        if "%errorlevel%"=="4" (set File=cache.sns & goto files_sel)
        if "%errorlevel%"=="5" (set File=NoFile.sns & goto files_sel)
    )
    if "%errorlevel%"=="6" (
        echo      -=%name% / SnsDisk Files=-
        echo Location: Ukraine
        echo Keyboards:
        echo      -= 1 - SnsNetworking / Module: errorlevel =-
        set ErrName=UNACCEPTABLE_FILE
        :: Why not?
        goto critical
    )
)
if "%errorlevel%"=="2" (
    echo     -=SnsUI / SnsDisk Files=-
    echo Location: D: / User Data
    echo Files: 
    echo     -=1 - snsvm.cfg / Size: 4 KB=-
    echo     -=2 - pagesns.sns / Size: 4-8192 KB=-
    echo     -=3 - snscfg.sns / Size: 4 KB=-
    choice /c 123 /n
    set File=snsvm.cfg
    if "%errorlevel%"=="1" (goto files_sel)
    set File=pagesns.sns
    if "%errorlevel%"=="2" (goto files_sel)
    set File=snscfg.sns
    if "%errorlevel%"=="3" (goto files_sel)
)
goto sns-dos

:files_sel
echo        -=SnsUI / SnsDisk=-
echo File: %File%
echo Actions:
echo     -=1 - Delete file=-
echo     -=2 - Move file=-
echo     -=3 - Start file=-
choice /c 123 /n /m Selected: 
if "%errorlevel%"=="1" (goto files_del)
if "%errorlevel%"=="2" (goto files_move)
if "%errorlevel%"=="3" (goto files_run)

:files_del
set ErrName=UNACCEPTABLE_FILE
goto critical

:files_move
set ErrName=UNACCEPTABLE_FILE
goto critical

:files_run
if "%File%"=="pagesns.sns" (goto rewrite_mem)
if "%File%"=="Critical.sns" (set ErrName=OTHER_SYSTEM_ISSUES & goto critical)
echo Error! This file is not an executable or not allowed to start.
echo Or, this file still isn't implemented.
goto files_run

:rewrite_mem
cls
echo [SnsBIOS / Memory]
echo Rewriting memory...
echo [X         ]
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
echo [XX        ]
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
echo [XXX       ]
SnsHelper.vbs /SnsUiCooldown
echo [XXXX      ]
SnsHelper.vbs /SnsUiCooldown
echo [SnsUI UiProvider]
echo Error 387
echo UiProvider can't provide 'SnsCmd' style to WindowStyle.SnsUi
echo Restart SnsUI to fix this problem.
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
echo [XXXXXX    ]
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
echo [SnsCore]
echo Error in line 395,5:
echo SnsMem can't write 4KB mem to 3001 RAMsector.
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
echo [XXXXXXXX  ]
echo [SnsTools]
echo SnsTools can't start SnsProvideVer function.
echo Error 385
echo SnsTools memory is partially overwrited.
SnsHelper.vbs /SnsUiCd
:: That cooldowns...
echo [XXXXXXXXX ]
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
set ErrName=MemDmg
goto critical

:snsvm
if "%SnsVM%"=="1" (
    title -=SnsVM 0.4 / Choice Menu=-
    echo       -=SnsVM 0.4 / Menu=-
    echo Select virtual machine:
    echo      -=1 - SNS-DOS 0.6.0=-
    echo      -=2 - SNS-DOS 0.7.0=-
    echo     -=3 - TAMST Nano 22.06=-
    echo      -=4 - drymeat=-
    echo      -=5 - SNS-DOS 0.7.7=-
    echo    -=More SNS-DOS versions and BetaSNS are for Sns+ members, =-
    echo    -=to activate Sns+, just boost our Discord server or test =-
    echo    -=/create SNS-DOS build to claim this! Thanks for reading.=-
    echo    -=Don't forget to post bugs and feedback in Discord server=-
    choice /c 123 /n
    if "%errorlevel%"=="1" (call :SetVmCodeOne)
    if "%errorlevel%"=="2" (call :SetVmCodeTwo)
    if "%errorlevel%"=="3" (call :SetVmCodeThree)
    if "%errorlevel%"=="4" (call :SetVmCodeFour)
    if "%errorlevel%"=="5" (call :SetVmCodeFive)
    goto snsvm_preboot
) else (goto InBeta)

:snsvm_preboot
echo       -=SnsVM / VM: %VmName%=-
echo Do you want to start %VmName%?
echo Configuration:
echo CPU: Custom 300 MHz Pentium CPU with 8 MB RAM
echo GPU: Custom 6 MB GF GPU
echo Storage: 20 MB drive
echo    -=Y - Yes / N - No=-
choice /n /m SnsUI.RenderText.SelYn:
if "%errorlevel%"=="1" (goto vmboot)
if "%errorlevel%"=="2" (echo Good luck! & goto sns-dos)

:snsvm_glowfire
echo       -=SnsVM / VM: SNS-DOS 0.6.0=-
echo Do you want to start SNS-DOS 0.6.0?
echo Configuration:
echo CPU: Custom 300 MHz Pentium CPU with 8 MB RAM
echo GPU: Custom 6 MB GF GPU
echo Storage: 20 MB drive
echo    -=Y - Yes / N - No=-
set VmCode=glowfire
choice /n /m SnsUI.RenderText.SelYn:
if "%errorlevel%"=="1" (goto vmboot)
if "%errorlevel%"=="2" (echo Good luck! & goto sns-dos)

:snsvm_waterlight
echo       -=SnsVM / VM: SNS-DOS 0.7.0=-
echo Do you wanna start SNS-DOS 0.7.0?
echo Configuration:
echo CPU: Custom 300 MHz Pentium CPU with 8 MB RAM
echo GPU: Custom 6 MB GF GPU
:: Don't read this.
echo Storage: 20 MB drive
echo    -=Y - Yes / N - No=-
choice /n /m SnsUI.RenderText.SelYn:
set VmCode=waterlight
if "%errorlevel%"=="1" (goto vmboot)
if "%errorlevel%"=="2" (echo Good luck! & goto sns-dos)

:snsvm_airshot
echo       -=SnsVM / VM: SNS-DOS 0.7.7=-
echo Do you wanna start SNS-DOS 0.7.7?
echo Configuration:
echo CPU: Custom 300 MHz Pentium CPU with 8 MB RAM
echo GPU: Custom 6 MB GF GPU
:: Don't read this.
echo Storage: 20 MB drive
echo    -=Y - Yes / N - No=-
choice /n /m SnsUI.RenderText.SelYn:
set VmCode=airshot
if "%errorlevel%"=="1" (goto vmboot)
if "%errorlevel%"=="2" (echo Good luck! & goto sns-dos)

:snsvm_lightflow
echo       -=SnsVM / VM: TAMST Nano 22.06=-
echo Do you wanna start TAMST Nano 22.06?
echo Configuration:
echo CPU: Custom 400 MHz Pentium CPU with 12 MB RAM
echo GPU: 8 MB KMU DualFight Series GPU
:: Don't read this.
echo Storage: 40 MB drive
echo    -=Y - Yes / N - No=-
choice /n /m SnsUI.RenderText.SelYn:
set VmCode=lightflow
if "%errorlevel%"=="1" (goto vmboot)
if "%errorlevel%"=="2" (echo Good luck! & goto sns-dos)

:vmboot
echo       [SnsVM BIOS 1.03]
echo CPU: KMU Qews 298 MHz
echo %VmCode%
echo Press [D]el to start BIOS.
echo Press [F]8 to start Boot Menu.
choice /c df /n
if "%errorlevel%"=="1" (goto vmbios)
if "%errorlevel%"=="2" (goto vmbootmenu)

:vmbios
echo [SnsVM BIOS Setup v1.03 x32]
echo CPU: 32-bit KMU CPU (299 MHz)
echo RAM: 16384 KB [available: 16000 KB]
echo ROM: 40960 KB [available: 32768 KB]
echo GPU: DX9 KMU GPU (8 MB VRAM)
echo UserData: %name%
echo [1 - Start Boot Menu ]
echo [2 - Reboot          ]
echo [3 - Compatibility   ]
echo [4 - Link to devices ]
choice /c 1234 /n
if "%errorlevel%"=="1" (goto vmbootmenu)
if "%errorlevel%"=="2" (goto vmboot)
if "%errorlevel%"=="3" (
    echo [SnsVM BIOS Setup v1.03 x32]
    echo SnsVM BIOS is compatible with:
    echo TAMST Nano up to 22.01
    echo SNS-DOS up to 0.8.0
    echo Windows up to 5.1
    echo SnsNetwork: 1.0 Prototype
    echo Status: NOT_INSTALLED
)
if "%errorlevel%"=="4" (
    echo [SnsVM BIOS Setup v1.03 x32]
    echo Available devices:
    echo SnsVR
    echo UiController
    echo SnsTea 270 Gamepad
    echo Minicamp Window 14
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    echo Connecting...
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCd
    echo Unsuccess. Device is not recognized.
    goto vmbios
)
goto vmbios

:vmbootmenu
echo [SnsVM Boot Menu v1.00]
if "%VmCode%"=="glowfire" (
    echo Booting 32 MB SnsDrive
    SnsHelper.vbs /SnsUiCooldown
    echo Starting SNS-DOS...
    goto vmsnsboot_glowfire
)
if "%VmCode%"=="waterlight" (
    echo Booting 32 MB SnsDrive
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    echo Starting SNS-DOS...
    goto vmsnsboot_waterlight
)
if "%VmCode%"=="lightflow" (
    echo Booting 40 MB SnsDrive
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    echo Reading loader...
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCd
    echo Starting tt.loader...
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting TAMST...
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting TAMST Core System...
    echo [tt.loader] Starting SnsVM Tools...
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting Boot Phase 1
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    echo [tt.loader] Device 'pci/usb/port1/input1' initialization: success
    echo [tt.loader] Device 'pci/sata/disk1' initialization: success [SD: SnsDrive]
    echo [tt.loader] Starting basic TAMST services...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting TAMST Core Drivers...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting background start...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting Boot Phase 2...
    echo [tt.loader] Starting input services...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting console.tt...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting tt.defender...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Optimizing tt.loader.Bypass* [TAMST mTiny 22.06] and CPU...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting TAMST Interface...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    echo [tt.loader] Starting TAMST Booter...
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    SnsHelper.vbs /SnsUiCd
    goto vmsnsboot_lightflow
)
goto vmbootmenu

:vmsnsboot_glowfire
echo SNS PC
set VmSnsCPU=SNS Other CPU
set VmSnsRAM=8 MB
set VmSnsROM=20 MB
set VmSnsVCard=SNS Other GPU
set VmSnsVRAM=6 MB
set VmSnsVer=0.6.0
set VmBuild=385
echo [SnsVM]
echo File checker is disabled.
echo.
echo Scan is ended.
echo Found %VmSnsRAM% RAM; %VmSnsROM% ROM.
echo CPU: %VmSnsCPU%
echo GPU: %VmSnsVCard%; VRAM: %VMSnsVRAM%.
echo Welcome to the SNS-DOS, %name%!
goto vmsns_glowfire

:vmsns_glowfire
set command=
set /p command=%name%: 
if "%command%"=="help" (
echo.
echo help - Help Menu
echo exit - Exit from SNS-DOS
echo clear - Clears screen
echo about - About SNS-DOS and VM Configuration
echo cmd - Starts cmd
echo taskmgr - Starts taskmgr
echo.
echo.
goto vmsns_glowfire
)
if "%command%"=="clear" (cls & echo Screen is now cleaned. & goto vmsns_glowfire)
if "%command%"=="exit" (goto snsvm)
if "%command%"=="about" (echo CPU: %VmSnsCPU% & echo GPU: %VmSnsVCard% & echo VRAM: %VmSnsVRAM%. & echo RAM: %VmSnsRAM% & echo SNS-DOS version: %VmSnsVer%, Build %VmBuild%. & goto vmsns_glowfire)
if "%command%"=="cmd" (start cmd.exe & goto vmsns_glowfire)
if "%command%"=="taskmgr" (start taskmgr.exe & goto vmsns_glowfire)
echo Unknown command.
goto vmsns_glowfire

:vmsnsboot_waterlight
set VmSnsVer=0.7.0
set VmSnsBuild=501
set VmSnsVerAPI=1.01
echo Starting SNS-DOS...
:: Do you remember SNS-OS?
SnsHelper.vbs /SnsUiCooldown
echo [SnsVM Info]
echo File checker is disabled.
SnsHelper.vbs /SnsUiCooldown
echo SNS-DOS 0.7.0 is lighter for extra performance.
goto vmsns_waterlight

:vmsns_waterlight
echo Welcome to SNS-DOS, %name%!
echo Exit or quit - shutdown SNS-DOS 0.7.0
echo About - system version and build
echo cmd and taskbar - starts windows apps
echo time, news, run, start - Other commands 
set command=
set /p command=%name%: 
if "%command%"=="clear" (
cls
echo Screen is cleared.
goto vmsns_waterlight
)
if "%command%"=="exit" (goto snsvm)
if "%command%"=="quit" (goto snsvm)
if "%command%"=="about" (
echo ================
echo =SNS-DOS=0.7.0==
echo ================
echo ==Build====500==
echo ================
goto vmsns_waterlight
)
if "%command%"=="cmd" (start cmd.exe & goto vmsns_waterlight)
if "%command%"=="taskmgr" (start taskmgr.exe & goto vmsns_waterlight)
if "%command%"=="time" (echo Data: %date% & echo Time: %time% & goto vmsns_waterlight)
if "%command%"=="run" (
echo SNS-DOS can run files from directories.
echo Enter destination of folder and file to open file.
set runapp_folder=
set /p runapp_folder=Directory:
set runapp_file=
set /p runapp_file=File: 
start %runapp_folder%\%runapp_file% 
goto vmsns_waterlight
)
if "%command%"=="start" (
echo SNS-DOS can run files from directories.
echo Enter destination of folder and filename to open file.
set runapp_folder=
set /p runapp_folder=Directory:
set runapp_file=
set /p runapp_file=File: 
start %runapp_folder%\%runapp_file% 
goto vmsns_waterlight
)
echo Unknown command.
goto vmsns_waterlight

:tasks
echo          -=SnsUI / TaskMgr=-
echo Select process to terminate:
echo   -=1 - SnsUI.sns [SnsEngine] =-
echo   -=2 - theme.sns [SnsThemes] =-
echo   -=3 - SnsCore.sns [SNS-DOS] =-
echo   -=4 - SnsCon.sns [Console]  =-
echo   -=5 - UiProvider.sns [SnsUI]=-
echo   -=6 - UNKNOWN.sns [???????] =-
echo   -=7 - SnsTasks.sns [TaskMgr]=-
echo   -=8 - SnsTime.sns [TimeSvc] =-
choice /c 12345678 /n /m Selected: 
set ErrName=TaskFail
echo Process terminated successfully!
if "%errorlevel%"=="1" (goto critical)
if "%errorlevel%"=="2" (color 0f & goto sns-dos)
if "%errorlevel%"=="3" (goto crittcal)
if "%errorlevel%"=="4" (goto critical)
if "%errorlevel%"=="5" (goto critical)
if "%errorlevel%"=="6" (goto sns-dos)
if "%errorlevel%"=="7" (goto sns-dos)
if "%errorlevel%"=="8" (goto sns-dos)

:: ==============================

:vmsnsboot_lightflow
echo [TAMST] Logging as %name%...
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST AiBoost] Boosting overall performance...
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST Overclock] CPU overclocked to 800 MHz.
echo [TAMST] Booting up...
echo [TAMST] File not found: tamst\tt.systemui.tar.gz
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST] File not found: tamst\tt.syscore.tar.gz
SnsHelper.vbs /SnsUiCd
echo [TAMST Console] Starting console...
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST Fail] Failed driver load: vmkb.sys
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST Fail] Failed driver load: snd.sys
SnsHelper.vbs /SnsUiCd
echo [TAMST Fail] Failed driver load: vmmouse.sys
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST Fail] Failed driver load: vmnet.sys
echo [TAMST Fail] Failed driver load: vmbth.sys
echo [TAMST Fail] Failed driver load: vmwifi.sys
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST Fail] Failed driver load: vmusb.sys
echo [TAMST Fail] Failed driver load: vmci.sys
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST Fail] Failed driver engine init: tt.drivers
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
SnsHelper.vbs /SnsUiCd
echo [TAMST Console] Console is started.
cls
echo.
echo TAMST Console Version 22.06
echo Nano (mTiny) edition
goto vmsns_lightflow

:vmsns_lightflow
choice /c 1 /N
goto vmsns_lightflow
set cmd=
set /c cmd=%name%:
if "%cmd%"=="tt.help" (
    echo [tt.help]
    echo TAMST Nano mTiny 22.06
    echo We are trying to port OS features.
)
if "%cmd%"=="tt.help" (
    echo [tt.music]
    echo TAMST Nano mTiny 22.06 Player
    echo Enter audio link:
)

:vmsnsboot_airshot
set SnsVer=0.7.7
set SnsBuild=1354.2
set SnsApiStatus=Enabled
echo Welcome to the SNS-DOS, %name%!
goto vmsns_airshot

:: SnsVM Codenames:
:: Airshot = SNS-DOS 0.7.7
:: glowfire = SNS-DOS 0.6.0
:: waterlight = SNS-DOS 0.7.0
:: lightflow = TAMST 22.06 Nano [prototype]

:vmsns_airshot
set vmcommand=
set /p vmcommand=%name%: 
if "%vmcommand%"=="help" (goto vmhelp)
if "%vmcommand%"=="?" (goto vmhelp)
if "%vmcommand%"=="cmds" (goto vmhelp)
if "%vmcommand%"=="clear" (cls & echo Console cleared. & goto snsvm_airshot)
if "%vmcommand%"=="exit" (goto snsvm)
if "%vmcommand%"=="quit" (goto snsvm)
if "%vmcommand%"=="about" (
echo =========================
echo ==SNS-DOS=0.7.7=NoAppMgr=
echo =========================
echo ==By ArtemMine37=========
echo =========================
echo ==Build==1354.2==SnsVM===
echo =========================
goto snsvm_airshot
)
if "%vmcommand%"=="cmd" (cmd.exe & goto snsvm_airshot)
if "%vmcommand%"=="taskmgr" (taskmgr.exe & goto snsvm_airshot)
if "%vmcommand%"=="time" (echo Time and date: %date% %time% & goto snsvm_airshot)
if "%vmcommand%"=="run" (goto vmrun)
if "%vmcommand%"=="start" (goto vmrun)
if "%vmcommand%"=="SnsAPI" (echo SnsAPI is Enabled & goto snsvm_airshot)
if "%vmcommand%"=="AppMgr" (echo SnsApi.AppMgr wasn't found. & goto snsvm_airshot)
if "%vmcommand%"=="update" (echo UPDATE FAILED. & goto snsvm_airshot)
echo Unknown command.
goto snsvm_airshot

rem ======================
rem SNS-DOS Short Commands
rem ======================

:vmrun
echo You can run any program in any directories.
echo Enter directory and program name, and it'll be opened!
set runapp_folder=
set /p runapp_folder=Directory:
set runapp_file=
set /p runapp_file=File name: 
start %runapp_folder%\%runapp_file% 
goto snsvm_airshot

:vmhelp
echo  __________________________________________
echo lSNS-DOS 0.7.7 by ArtemMine37        l_l X l
echo l------------------------------------------l
echo l help, ?, cmds - Displays this text.      l
echo l exit, quit - Exit from SNS-DOS.          l
echo l clear - Clears console.                  l
echo l about - About System.                    l
echo l cmd - Command Prompt.                    l
echo l taskmgr - Task Manager (Windows).        l
echo l time - Date amd time.                    l
echo l run, start - Open a file.                l
echo l AppMgr - AppMgr.                         l
echo l update - Check for updates.              l
echo l__________________________________________l
goto snsvm_airshot

:: =================================

:beta
echo In beta:
echo New bootloader with animation
echo SnsFiles
echo SnsUI
echo SnsCode
echo SnsSettings
echo SnsVM
echo SnsCalc
echo SnsNotepad
echo New add-on system
echo New logon
echo SnsUpdate 1.1
goto sns-dos

:snsplus
echo       -=Booster Menu=-
echo Booster features:
echo More customization options to enable [;],
echo More builds and portable SNS-DOS versions,
echo Early feature releases or additional files,
echo Includes additional content to explore UI,
echo And hilarious things pre-enabled to update.
goto sns-dos

:calc
set titlename=Calculator
call SnsUiEngine.cmd %windowtype%
echo 2+2=4, 6/3=2, 5*13=65, 83-78=5, 952^3=9253 etc... 
set inputcalc=
set /p inputcalc=
if "%inputcalc%"=="exit" (goto sns-dos)
set /a result=%inputcalc%
echo Result: %result%
goto calc

:readpad
set titlename=Calculator
call SnsUiEngine.cmd %windowtype%

:critical
echo.
echo SNS-DOS is shutted down due to error.
if "%ErrName%"=="TaskFail" (echo CRITICAL_PROCESS_FAIL)
if "%ErrName%"=="ViaCode" (echo SNSUI_STARTED_CRITICAL_SCREEN_DUE_TO_SNSCODE)
if "%ErrName%"=="MemDmg" (echo MEMORY_IS_DAMAGED)
if "%ErrName%"=="Other" (echo OTHER_SYSTEM_ISSUES)
echo To fix this problem, just restart SNS-DOS
echo Rebooting to default mode in a few seconds...
ping 127.0.0.1>nul
color f0
goto snsboot

:: Wow! There's nothing!..
:: ...but there's 200+ f*cking lines to
:: make SNS-DOS heavier (stabilize size)

:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================

:SetVmCodeOne
set VmCode=glowfire
set VmName=SNS-DOS 0.6.0

:SetVmCodeTwo
set VmCode=waterlight
set VmName=SNS-DOS 0.7.0

:SetVmCodeThree
set VmCode=lightflow
set VmName=TAMST Nano 22.06

:SetVmCodeFour
set VmCode=drymeat
set VmName=SNS-DOS 0.8.0

:SetVmCodeFive
set VmCode=airshot
set VmName=SNS-DOS 0.7.7

:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================
:: ===========================================================================================================