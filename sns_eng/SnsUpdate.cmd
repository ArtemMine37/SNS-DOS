echo         -=SnsUI / SnsUpdate=-
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
set ChkSoftwareLnk=
set ChkOptions=ChkAll
set Unpack=%appdata%\SNS-DOS\7-zip.exe

:chk_sys_programs
set ChkSoftwareLnk=
set ChkOptions=ChkSys
set Unpack=%appdata%\SNS-DOS\7-zip.exe

:chk_programs
set ChkSoftwareLnk=
set ChkOptions=NoSysChk
set Unpack=%appdata%\SNS-DOS\7-zip.exe