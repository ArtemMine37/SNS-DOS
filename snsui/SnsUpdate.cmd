echo         -=SnsUI / SnsUpdate=-
set uri=
set dlupd=%appdata%\SNS-DOS\
set Unpack=%appdata%\SNS-DOS\7z.exe
echo Welcome to SnsUpdate! You can update system here.
echo    -=C / Check for updates=-
echo    -=S / Check for updates only for SNS-DOS=-
echo    -=P / Check for updates only for programs=-
echo    -=0 / Exit from SnsUpdate=-
choice /c csp0 /n
if "%errorlevel%"=="1" (goto chk_sys_programs)
if "%errorlevel%"=="2" (goto chk_sys)
if "%errorlevel%"=="3" (goto chk_programs)
if "%errorlevel%"=="4" (goto sns-dos)

:chk_sys_programs
set ChkOptions=ChkAll


:chk_sys_programs
set ChkOptions=ChkSys


:chk_programs
set ChkOptions=NoSysChk