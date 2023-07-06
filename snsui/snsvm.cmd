:snsvm
if "%SnsAPI2%"=="0" (goto nodirectrun)
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
    choice /c 1234567890x /n
    if "%errorlevel%"=="11" (goto eof)
    goto snsvm_preboot
) else (goto InBeta)

:snsvm_preboot
if "%errorlevel%"=="1" (call vmcode.bat 1)
if "%errorlevel%"=="2" (call vmcode.bat 2)
if "%errorlevel%"=="3" (call vmcode.bat 3)
if "%errorlevel%"=="4" (call vmcode.bat 4)
if "%errorlevel%"=="5" (call vmcode.bat 5)
if "%errorlevel%"=="11" (goto eof)
echo       -=SnsVM / VM: %VmName%=-
echo Do you want to start %VmName%?
echo Configuration:
echo CPU: Custom 300 MHz Pentium CPU with 8 MB RAM
echo GPU: Custom 6 MB GF GPU
echo Storage: 20 MB drive
echo    -=Y - Yes / N - No=-
choice /n /m SnsUI.RenderText.SelYn:
if "%errorlevel%"=="1" (goto vmboot)
if "%errorlevel%"=="2" (echo Good luck! & goto eof)
goto snsvm_preboot

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



:nodirectrun
echo This file is not supported.
pause & exit


:eof