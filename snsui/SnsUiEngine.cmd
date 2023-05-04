:SnsUI_CreateTitleStyle
if "%1"=="std" (
    echo       -=SnsUI / %titlename%=-
)
if "%1"=="old" (
    echo [%titlename%]
)
goto eof

:SnsUI_CreateButtonStyle

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

:eof