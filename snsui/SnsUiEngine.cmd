if "%1"=="std" (goto SnsUI_CreateTitleStyle)
if "%1"=="old" (goto SnsUI_ReferToAddons)
if "%1"=="std" (goto SnsUI_CreateTitleStyle)


:SnsUI_CreateTitleStyle
if "%1"=="std" (
    echo       -=SnsUI / %titlename%=-
)
if "%1"=="old" (
    echo [%titlename%]
)
goto eof

:SnsUI_CreateButtonStyle
:: Placeholder
goto eof

:SnsUI_CreateDescStyle
if "%1"=="std" (
    echo    -=%desc%=-
)
if "%1"=="old" (
    echo %desc%
)
goto eof

:SnsUI_CreateInputStyle
:: Placeholder
goto eof

:SnsUI_CreateErrStyle
:: Placeholder
goto eof

:SnsUI_ReferToAddons
if "%2"=="SnsVM" (if exist "%appdata%\SNS-DOS\snsui\snsvm.cmd" (snsvm.cmd & sns_en /UiCon))
if "%2"=="SnsVM" (if exist "%appdata%\SNS-DOS\snsui\browse.cmd" (browse.cmd & sns_en /UiCon))
goto eof

:eof