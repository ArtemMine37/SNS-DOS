@echo off & mode 80,24 & color f0
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (set "DEL=%%a" & set "COL=%%b")
cls
echo           -=SNS-DOS=-
echo [%date% %time%] SNS-DOS is in init status.>>SNS-DOS.log
echo Preparing emulation...
if "%1"=="/Native" (goto snsboot)
ping 127.0.0.1>nul
echo Emulation preset: 16/64 MB RAM/ROM
echo CPU: 300 MHz Custom Pentium CPU
echo GPU: Custom 8MB GPU
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
echo Free space: 32768 KB of 65536 KB
echo RAM: 53% filled
echo CPU load: 99%
echo GPU load: 42%
echo SnsUI can't process 700 of 999 render methods
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

:snsboot
cls
echo        -=SNS-DOS / Starting=-
echo [Starting SnsAPI]
echo [%date% %time%] Standard SNS-DOS boot.>>SNS-DOS.log
set src=dsc
set updSnsAPI=False
rem updSnsAPI - Updated SnsAPI
rem Don't touch this variable.
set ApiLibVer=2.5.4
rem SnsAPI version. Required for SNS-DOS
set ApiLibEnable=1
rem Disable/enable SnsAPI here.
rem Disabled SnsAPI will skip SnsAPI initialization.
rem Default: 1 (enabled)
set SnsUpdInst=SNS-DOS Experience
set SnsCoins=1
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
set lastnews=SnsUI 1.0 now comes in SNS-DOS 0.8.0!
set ApiFor=2
set ApiOther=2
set ApiAppMgr=2
ping 127.0.0.1>nul
cls
echo        -=SNS-DOS / Starting=-
echo [Starting SnsCore]
set SnsVer=0.8.0
set SnsBuild=2000
set SnsSubBuild=100
title SNS-DOS %SnsVer% Build %SnsBuild%.%SnsSubBuild%
set SnsApiSupport_1=1
set SnsApiSupport_1.5=1
set SnsAPI2=1
set SnsAPI21=1
set SnsAPI25=1
set SnsAPI26=1
set SnsAPI-Support=1
set sysusr=This name is reserved by system.
if not exist SnsHelper.vbs (
echo [%date% %time%] SNS-DOS wasn't booted because SnsHelper.vbs doesn't exist.>>SNS-DOS.log
exit
)
echo Starting SNS-DOS...
goto named

:bootsns
echo           -=SNS-DOS=-  -=%name%=-
if "%src%"=="dsc" (echo SNS-DOS Original)
if "%src%"=="git" (echo SNS-DOS)
echo Version 0.8.0
echo SNS-DOS Console [Version 1.0.2000.100]
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
if "%command%"=="AppMgr" (goto AppMgr)
if "%command%"=="appmgr" (goto AppMgr)
if "%command%"=="appMgr" (goto AppMgr)
if "%command%"=="Appmgr" (goto AppMgr)
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
if "%command%"=="echo" (goto textout)
echo Unknown command. Try 'help' to find required command.
goto sns-dos

rem ======================
rem SNS-DOS AltCommands
rem ======================

:run
echo      -=SnsUI / RunFile=-
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
    goto sns-dos
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
    goto sns-dos
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
    echo snsvm - SnsVM (Beta)
    echo     -=SNS-DOS Build %SnsBuild%.%SnsSubBuild%=-
    goto sns-dos
)
if "%errorlevel%"=="4" (goto sns-dos)
goto sns-dos

:clear
cls
echo Cleared successfully!
goto sns-dos

:snsver
echo     -=SnsUI / About SNS-DOS=-
echo  -=SNS-DOS=-
echo   -=Version: %SnsVer%=-
echo   -=Build: %SnsBuild%.%SnsSubBuild%=-
echo  -=SnsAPI=-
echo   -=Version: %ApiLibVer%.%SnsBuild%=-
echo   -=Status: %SnsApiStatus%=-
echo   -=Verify status: Success=-
echo  -=SnsUI=-
echo   -=Version: 1.0.0b23=-
echo   -=Pre-release=-
echo -=Stable Release=-
echo -=Released: 01.14.2022=-
echo [WARNING!] This version has 20 experimental features.
echo 11 of 20 features are now stable!
echo        -=x - Exit from 'About SNS-DOS'=-
echo        -=a - Advanced Info=-
choice -c xa -d x -t 10 -n
if "%errorlevel%"=="1" (goto sns-dos)
if "%errorlevel%"=="2" (goto AdvSNS)

:AdvSNS
echo     -=SnsUI / About SNS-DOS=-
echo  -=Updates=-
echo   -=Update ID: 2000.100=-
echo   -=Installed update: %SnsUpdInst%=-
echo   -=Is SNS-DOS updated: %updSnsAPI%=-
echo  -=Features=-
if "%src%"=="dsc" (echo   -=Install source: SNS-DOS Installer in Project SNS=-)
if "%src%"=="git" (echo   -=Install source: SNS-DOS Installer [3rd party or GitHub]=-)
echo   -=SnsUI=-
echo    -=SnsVer version: 1.2=-
goto sns-dos

:AppMgr
if "%SnsAppMgr%"=="1" (
    echo      -=SnsUI / Outdated AppMgr=-
    echo You can start SNS-DOS program using .sns file.
    echo Drag .sns file to sns_eng folder, & echo enter program name and program starts
    set ProgName=
    set /p ProgName=File:
    echo Warning: this is outdated app. Use 'run'.
    echo SnsAppMgr will be removed in SNS-DOS 0.8.1 
    echo Please, wait.
    ping 127.0.0.1>nul
    if exist %ProgName%.sns (
        ren %ProgName%.sns %ProgName%.cmd
        echo Warning: SNS-DOS 0.8.0 is the latest SNS-DOS
        echo version with outdated AppMgr. SNS-DOS 0.8.0.x
        echo will also have AppMgr. In SNS-DOS 0.8.2, SnsApps
        echo will replace AppMgr. 
        echo [%date% %time%] Started %ProgName%.>>SNS-DOS.log
        start %ProgName%.cmd
        goto sns-dos
    ) else (
        echo Not found %ProgName%. If you're entered this with 1st try, it is a bug.
        echo Just re-open AppMgr and enter something.
        echo [%date% %time%] Not found %ProgName%. It is bug or file wasn't found.>>SNS-DOS.log
        goto sns-dos
    )
    goto sns-dos
)
echo SnsApi.AppMgr wasn't found.
goto sns-dos

:random
echo         -=SnsUI / Random=-
echo Enter min value [min:1]:
set /p num1=min:
echo Enter max value [max:32767]:
set /p num2=max:
set result=0
set ResIsCorrect=0
echo SnsCore can't process SnsAPI.Random command.
echo Reason: PROCESSING_IS_LOOPED
goto RandomEngine

:RandomEngine
goto InBeta
set rnd=%random%
if "%num1%" gtr "%rnd%" (set /a ResIsCorrect=%ResIsCorrect%+1)
if "%num2%" lss "%rnd%" (set /a ResIsCorrect=%ResIsCorrect%+1)
if "%ResIsCorrect%"=="2" (
    set result=%rnd%
    echo Success! Number: %result%
    set ResIsCorrect=0
    set num1=0
    set num2=0
    set result=0
    goto sns-dos
) else (
    set ResIsCorrect=0
    goto RandomEngine
)

:InBeta
echo        -=SnsUI / Warning=-
echo This command is disabled.
echo This command may be enabled in SNS-DOS Stable version.
goto sns-dos

:theme
echo        -=SnsUI / Themes=-
echo Choose a theme:
echo 1 - Light
echo 2 - Dark
echo 3 - SNS-DOS Classic
echo 4 - SNS-DOS Anti-Classic
echo 5 - Darkest
choice /c 12345 /n /m Colorcode: 
if "%errorlevel%"=="1" (color f0)
if "%errorlevel%"=="2" (color 0f)
if "%errorlevel%"=="3" (color 0a)
if "%errorlevel%"=="4" (color a0)
if "%errorlevel%"=="5" (color 08)
goto sns-dos

:date
echo       -=SnsUI / Date and time 2.0=-
echo  -=Date: %date%=-   -=Time: %time%=-
echo.
echo        -=x - Exit \ c - Code=-
choice /c xcr /n /d r /t 1
if "%errorlevel%"=="1" (goto sns-dos)
if "%errorlevel%"=="2" (goto code)
if "%errorlevel%"=="3" (cls & goto date)
goto date

:code
echo        -=SnsUI / Codes=-
echo Enter code to enter the secret things:
echo Example: SnsHelp
set SnsCode=
set /p SnsCode=Code:
if "%SnsCode%"=="SnsCon" (goto sns-dos)
if "%SnsCode%"=="SnsHelp" (echo SnsExit - Exit from SnsUI Codes)
if "%SnsCode%"=="SnsExit" (goto sns-dos)
if "%SnsCode%"=="SnsSudo" (echo No command found)
if "%SnsCode%"=="Sns1stAnniversary" (echo Happy 1st SNS-DOS Anniversary! & echo The first SNS-DOS version is 0.6.0. & echo Now, latest version is %SnsVer%. & echo Thanks for supporting SNS-DOS!)
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
goto code

:files
echo     -=SnsUI / SnsDisk Files=-
echo Drives:
echo     -=1 - S: / System Data=-
echo     -=2 - D: / User Data=-
choice /c 12 /n /m Selected:
if "%errorlevel%"=="1" (
    echo     -=SnsUI / SnsDisk Files=-
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
    )
    goto InBeta
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
goto InBeta

:files_move
goto InBeta

:files_run
if "%File%"=="pagesns.sns" (goto rewrite_mem)
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
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
echo [XXXXXXXXX ]
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
SnsHelper.vbs /SnsUiCooldown
set ErrName=MemDmg
goto critical

:snsvm
echo       -=SnsVM 0.3 / Menu=-
echo Select virtual machine:
echo    -=1 - SNS-DOS 0.6.0=-
echo    -=2 - SNS-DOS 0.7.0=-
choice /c 12 /n
if "%errorlevel%"=="1" (goto snsvm_glowfire)
if "%errorlevel%"=="2" (goto snsvm_waterlight)

:snsvm_glowfire
echo       -=SnsVM / VM: SNS-DOS 0.6.0=-
echo Do you wanna start SNS-DOS 0.6.0?
echo Configuration:
echo CPU: Custom 199 MHz Pentium CPU with 2 MB RAM
echo GPU: Custom 3 MB GF GPU
echo Storage: 6 MB drive
echo    -=Y - Yes / N - No=-
set VmCode=glowfire
choice /n /m SnsUI.RenderText.SelYn:
if "%errorlevel%"=="1" (goto vmboot)
if "%errorlevel%"=="2" (echo Good luck! & goto sns-dos)

:snsvm_waterlight
echo       -=SnsVM / VM: SNS-DOS 0.7.0=-
echo Do you wanna start SNS-DOS 0.7.0?
echo Configuration:
echo CPU: Custom 199 MHz Pentium CPU with 2 MB RAM
echo GPU: Custom 3 MB GF GPU
echo Storage: 6 MB drive
echo    -=Y - Yes / N - No=-
choice /n /m SnsUI.RenderText.SelYn:
set VmCode=waterlight
if "%errorlevel%"=="1" (goto vmboot)
if "%errorlevel%"=="2" (echo Good luck! & goto sns-dos)

:vmboot
echo       [SnsVM BIOS 1.00]
echo CPU: Intel Core 0000 199 MHz
echo %VmCode%
echo Press [D]el to start BIOS.
echo Press [F]8 to start Boot Menu.
choice /c df /n
if "%errorlevel%"=="1" (goto vmbios)
if "%errorlevel%"=="2" (goto vmbootmenu)

:vmbios
echo [SnsVM BIOS Setup v1.00 x32]
echo CPU: Intel Core 0000 199 MHz
echo RAM: 2048 KB [available: 1920 KB]
echo ROM: 6144 KB
echo GPU: NVIDIA GeForce 3 MB Series
echo UserData: %name%
echo [1 - Start Boot Menu ]
echo [2 - Reboot          ]
echo [3 - Compatibility   ]
choice /c 123 /n
if "%errorlevel%"=="1" (goto vmbootmenu)
if "%errorlevel%"=="2" (goto vmboot)
if "%errorlevel%"=="3" (
    echo [SnsVM BIOS Setup v1.00 x32]
    echo SnsVM BIOS is compatible with:
    echo SNS-DOS up to 0.7.5
    echo Windows up to 5.1
)
goto vmbios

:vmbootmenu
echo [SnsVM Boot Menu v1.00]
if "%VmCode%"=="glowfire" (
    echo Booting 4 MB SnsDrive
    SnsHelper.vbs /SnsUiCooldown
    echo Starting SNS-DOS...
    goto vmsnsboot_glowfire
)
if "%VmCode%"=="waterlight" (
    echo Booting 6 MB SnsDrive
    SnsHelper.vbs /SnsUiCooldown
    SnsHelper.vbs /SnsUiCooldown
    echo Starting SNS-DOS...
    goto vmsnsboot_waterlight
)
goto vmbootmenu

:vmsnsboot_glowfire
echo SNS PC
set VmSnsCPU=SNS Other CPU
set VmSnsRAM=2 MB
set VmSnsROM=4 MB
set VmSnsVCard=SNS Other GPU
set VmSnsVRAM=2 MB
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
set VmSnsEasterEggVer=SNS-OS 1.01
set vmlastnews=Обновление SNS-DOS 0.7.0: переделка ядра ОС!
set VmSnsVerAPI=1.01
echo Starting SNS-DOS...
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
if "%command%"=="time" (echo Дата: %date% & echo Время: %time% & goto vmsns_waterlight)
if "%command%"=="news" (echo %vmlastnews% & goto vmsns_waterlight)
if "%command%"=="run" (
echo SNS-DOS can run files from directories.
echo Enter destioantion of folder and file to open file.
set runapp_folder=
set /p runapp_folder=Directory:
set runapp_file=
set /p runapp_file=File: 
start %runapp_folder%\%runapp_file% 
goto vmsns_waterlight
)
if "%command%"=="start" (
echo SNS-DOS can run files from directories.
echo Enter destioantion of folder and file to open file.
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

:beta
echo In beta:
echo New bootloader with animation
echo SnsFiles
echo SnsUI
echo Critical
echo SnsCode
goto sns-dos

:snsplus
echo       -=SNS+ Menu=-
echo SnsPlus features:
echo More customization
echo More animations
echo Early feature releases
echo Includes SNS-DOS theme

:critical
echo.
echo SNS-DOS is shutted down due to error.
if "%ErrName%"=="TaskFail" (echo CRITICAL_PROCESS_FAIL)
if "%ErrName%"=="ViaCode" (echo SNSUI_STARTED_CRITICAL_SCREEN_DUE_TO_SNSCODE)
if "%ErrName%"=="MemDmg" (echo MEMORY_IS_DAMAGED)
echo To fix this problem, just restart SNS-DOS
echo Rebooting to default mode in a few seconds...
ping 127.0.0.1>nul
color f0
goto snsboot