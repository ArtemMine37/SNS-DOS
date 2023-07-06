if "%1"=="1" (goto SetVmCodeOne)
if "%1"=="2" (goto SetVmCodeTwo)
if "%1"=="3" (goto SetVmCodeThree)
if "%1"=="4" (goto SetVmCodeFour)
if "%1"=="5" (goto SetVmCodeFive)
if "%1"=="6" (goto SetVmCodeSix)


:SetVmCodeOne
set VmCode=glowfire
set VmName=SNS-DOS 0.6.0
goto eof

:SetVmCodeTwo
set VmCode=waterlight
set VmName=SNS-DOS 0.7.0
goto eof

:SetVmCodeThree
set VmCode=lightflow
set VmName=TAMST Nano 22.06
goto eof

:SetVmCodeFour
set VmCode=drymeat
set VmName=SNS-DOS 0.8.0
goto eof

:SetVmCodeFive
set VmCode=airshot
set VmName=SNS-DOS 0.7.7
goto eof

:SetVmCodeSix
set VmCode=slapshit
set VmName=SnsUI
goto eof



:eof