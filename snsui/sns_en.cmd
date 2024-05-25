@echo off & mode 80,24 & color f0
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
cls
echo           -=SNS-DOS=-
echo [%date% %time%] SNS-DOS is in init status.>>SNS-DOS.log
echo Preparing emulation...
if "%1"=="/UiCon" (goto sns-dos)
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
echo Prepared SNS-DOS 0.8.1 emulation. Starting SnsUI...
echo Starting emulator...
echo Starting SnsAPI emulation...
ping 127.0.0.1>nul
echo Starting SnsBoot [1 phase]
echo      -=SNS-DOS is starting...=-
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
echo Free space: 260 MB of 320 MB
echo RAM: 64% filled
echo CPU load: 99%
echo GPU load: 70%
echo SnsUI can't process 470 of 999 render methods (47 = unsuccess)
echo GPU (SnsGraphX) load: 91%
echo SnsUI can't process 367 of 999 render methods (36,7 = unsuccess)
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
echo SNS-DOS Version %SnsVer%
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
echo SNS-DOS Console [Version 1.0.%SnsBuild%]
echo [%date% %time%] SNS-DOS is started!>>SNS-DOS.log
echo.
echo Hi there in SNS-DOS, %name%!
goto sns-dos

:sns-dos
set command=
set /p command=%name%: 
:: Command Range 1
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
if "%command%"=="about" (goto refSettings)
if "%command%"=="snsver" (goto refSettings)
if "%command%"=="ver" (goto refSettings)
if "%command%"=="random" (goto random)
if "%command%"=="SnsAPI.Random" (goto random)
:: End?..
if "%command%"=="cmd" (start cmd.exe & goto sns-dos)
if "%command%"=="taskmgr" (start taskmgr.exe & echo Sended command to host. & goto sns-dos)
if "%command%"=="time" (goto date)
if "%command%"=="news" (echo %lastnews% & goto sns-dos)
if "%command%"=="run" (goto run)
if "%command%"=="start" (goto run)
if "%command%"=="update" (snsupdate.cmd & goto sns-dos)
if "%command%"=="reboot" (echo Rebooting... & sns_en.cmd)
if "%command%"=="SnsCode" (goto code)
if "%command%"=="snscode" (goto code)
if "%command%"=="Snscode" (goto code)
if "%command%"=="snsCode" (goto code)
if "%command%"=="snsdisk" (goto files)
if "%command%"=="snstasks" (goto tasks)
if "%command%"=="snsvm" (goto snsvm)
if "%command%"=="beta" (goto beta)
if "%command%"=="SnsSettings" (goto settings)
if "%command%"=="Snssettings" (goto settings)
if "%command%"=="snsSettings" (goto settings)
if "%command%"=="snssettings" (goto settings)
if "%command%"=="settings" (goto settings)
if "%command%"=="discord" (goto discord)
if "%command%"=="calc" (goto calc)
if "%command%"=="calculator" (goto calc)
if "%command%"=="echo" (goto textout)
echo Unknown command. Try 'help' to find required command.
goto sns-dos

rem ======================
rem SNS-DOS AltCommands
rem ======================

:snsvm
call snsvm.cmd
goto sns-dos

:discord
SnsUiEngine SnsUI.ShowTitle Discord
echo Project Towergen:
echo https://discord.gg/2ZkbJPHqJ6
choice /n /m "Do you want to open invite link? Y/N:"
if "%errorlevel%"=="1" (start "" "https://discord.gg/2ZkbJPHqJ6" & goto sns-dos) else (goto sns-dos)


:settings
SnsUiEngine SnsUI.ShowTitle Settings
echo The most modern SNS-DOS setup app ever!
echo      -=1 / Network=-  -=5 / Codes=-
echo      -=2 / System=-
echo      -=3 / Themes=-    
echo      -=4 / SNS-DOS=-
echo                          -=0 / Exit=-
choice /c 123450 /n
if "%errorlevel%"=="1" (goto netsetup)
if "%errorlevel%"=="2" (goto snsver)
if "%errorlevel%"=="3" (goto theme)
if "%errorlevel%"=="4" (goto snsver)
if "%errorlevel%"=="5" (goto code)
goto sns-dos


:netsetup
echo there's something wrong.
SnsUiEngine SnsUI.ShowTitle Network
SnsHelper.vbs /SnsUiCd
echo fine. you've got the easiest easter egg.
set Easter1status=Unlocked
goto sns-dos

:run
SnsUiEngine SnsUI.ShowTitle RunFile
echo Enter file path to open it. Don't use "", it is already used.
set filepath=
set /p filepath=File location:
echo Starting %filepath%...
start "%filepath%"
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
    echo time - Data and time
    echo quit, exit - Exit from SNS-DOS
    echo echo - type some text and display it
    echo     -=b / Back=-  -=x / Exit=-
    choice /c bx /n
    if "%errorlevel%"=="1" (goto help)
    if "%errorlevel%"=="2" (goto sns-dos)
)
if "%errorlevel%"=="2" (
    echo      -=SnsHelp / System=-
    echo cls, clear - Clears the screen
    echo cmd - cmd
    echo taskmgr - taskmgr
    echo update - Update check
    echo random - Random.
    echo news - Some news about SNS-DOS
    echo calc - just Calculator.
    echo discord - Discord.
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
    echo network - WebSNS (N/A)
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
echo   -=Verify status: Fail - No SnsAPI myCow Code=-
echo  -=SnsUI=-
echo   -=Version: 1.0=-
echo   -=Release Candidate=-
echo -=Stable Release=-
echo -=Released: 01.07.2023=-
echo        -=x - Back=-
echo        -=a - Advanced Info=-
echo        -=e - Easter Eggs=-
choice -c xae -n
if "%errorlevel%"=="1" (goto settings)
if "%errorlevel%"=="2" (goto AdvSNS)
if "%errorlevel%"=="3" (goto EasterProgress)

:AdvSNS
SnsUiEngine SnsUI.ShowTitle "About SNS-DOS"
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

:EasterProgress
echo Easter Egg "I want to surf via SNS-DOS" status: %Easter1status%
echo Easter Egg "Contributors Research" status: %Easter2status%
echo Easter Egg "Coming soon" status: %Easter3status%
echo Easter Egg "Coming Soon" status: %Easter4status%
echo Easter Egg "Coming Soon" status: %Easter5status%
echo Easter Egg "Coming Soon" status: %Easter6status%
echo Easter Egg "Coming Soon" status: %Easter7status%
echo Easter Egg "Coming Soon" status: %Easter8status%
echo Easter Egg "Coming Soon" status: %Easter9status%
echo Easter Egg "Coming Soon" status: %Easter0status%
goto sns-dos

:random
SnsUiEngine SnsUI.ShowTitle Random
echo Here's 80 random numbers:
echo %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random%
echo %random% %random% %random% %random% %random% %random% %random% %random%
goto sns-dos
:: Did you know, that...
:: This command is made only for fun?

:InBeta
SnsUiEngine SnsUI.ShowTitle WARNING
echo This command is disabled.
echo We are developing this feature, but also protecting agaisnt:
echo 1] system corruption
echo 2] tons of bugs
:: echo 3] russia and belarus ;)
goto sns-dos

:theme
SnsUiEngine SnsUI.ShowTitle Themes
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
SnsUiEngine SnsUI.ShowTitle "Date 'n Time"
echo  -=Date: %date%=-   -=Time: %time%=-
echo.
echo           -=x - Exit=-
choice /c xr /n /d r /t 1
if "%errorlevel%"=="1" (goto sns-dos)
if "%errorlevel%"=="2" (cls & goto date)
goto date

:code
SnsUiEngine SnsUI.ShowTitle Codes
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
SnsUiEngine SnsUI.ShowTitle SnsDisk Files
echo Drives:
echo     -=1 - S: / System Data=-
echo     -=2 - D: / User Data=-
choice /c 12 /n /m Selected:
if "%errorlevel%"=="1" (
    SnsUiEngine SnsUI.ShowTitle SnsDisk Files
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
        echo     -= 1 - SnsVM / Size: 768 KB =-
        echo     -= 2 - Console / Size: 512 KB =-
        echo     -= 3 - SnsTools / Size: 384 KB =-
        echo     -= 4 - SnsAPI / Size: 4096 KB =-
        echo     -= 5 - System / Size: 16384 KB =-
        choice /c 12345 /n /m Selected:
        if "%errorlevel%"=="1" (set File=SnsVM.vdi & goto files_sel)
        if "%errorlevel%"=="2" (set File=ConsoleUI.vdi & goto files_sel)
        if "%errorlevel%"=="3" (set File=tools.vdi & goto files_sel)
        if "%errorlevel%"=="4" (set File=ApiFiles.vdi & goto files_sel)
        if "%errorlevel%"=="5" (set File=core.vdi & goto files_sel)
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
if "%File%"=="core.vdi" (set ErrName=IMAGE_IS_CORRUPTED & goto critical)
if "%File%"=="Critical.sns" (set ErrName=OTHER_SYSTEM_ISSUES & goto critical)
if "%File%"=="ConsoleUI.vdi" (set ErrName=IMAGE_IS_CORRUPTED & goto critical)
if "%File%"=="ApiFiles.vdi" (set ErrName=IMAGE_IS_CORRUPTED & goto critical)
if "%File%"=="tools.vdi" (set ErrName=IMAGE_IS_CORRUPTED & goto critical)
if "%File%"=="SnsVM.vdi" (set ErrName=IMAGE_IS_CORRUPTED & goto critical)
if "%File%"=="pagesns.vdi" (goto rewrite_mem)
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
if "%errorlevel%"=="3" (goto critical)
if "%errorlevel%"=="4" (goto critical)
if "%errorlevel%"=="5" (goto critical)
if "%errorlevel%"=="6" (goto sns-dos)
if "%errorlevel%"=="7" (goto sns-dos)
if "%errorlevel%"=="8" (goto sns-dos)
goto tasks

:beta
echo In beta:
echo SnsFiles
echo SnsUpdate 1.1
echo SNS-DOS Next Release Features
goto sns-dos

:calc
SnsUiEngine SnsUI.ShowTitle Calculator
echo 2+2=4, 6/3=2, 5*13=65, 83-78=5, 952^3=9253 etc... 
set inputcalc=
set /p inputcalc=
if "%inputcalc%"=="exit" (goto sns-dos)
set /a result=%inputcalc%
echo Result: %result%
goto calc

:critical
echo [%date% %time%] SNS-DOS is shutted down due to error.>>SNS-DOS.log
if "%ErrName%"=="TaskFail" (echo [%date% %time%] Reason: CRITICAL_PROCESS_FAIL %errname%.>>SNS-DOS.log)
if "%ErrName%"=="ViaCode" (echo [%date% %time%] Reason: SNSUI_STARTED_CRITICAL_SCREEN_DUE_TO_SNSCODE %errname%.>>SNS-DOS.log)
if "%ErrName%"=="MemDmg" (echo [%date% %time%] Reason: MEMORY_IS_DAMAGED %errname%.>>SNS-DOS.log)
if "%ErrName%"=="Other" (echo [%date% %time%] Reason: OTHER_SYSTEM_ISSUES %errname%.>>SNS-DOS.log)
SnsHelper.vbs /Critical
echo.
pause
