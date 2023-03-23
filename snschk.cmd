if "%UpdVer%"=="0.8.0" (goto Update)
if "%1"=="ChkAll" (goto all)
if "%1"=="ChkSys" (goto sys)
if "%1"=="NoSysChk" (goto soft)

:all
set snsupdatever=1.0
set SnsLatestBuild=2000
set SnsLatestVer=0.8.0
set snsupdbuild=500
set snsdos_updatepath="%appdata%\SNS-DOS\sns_eng\SnsUpdate\SNS-DOS"
echo In development
pause

:sys
set snsupdatever=1.0
set SnsLatestBuild=2000
set SnsLatestVer=0.8.0
set snsupdbuild=500
set snsdos_updatepath="%appdata%\SNS-DOS\sns_eng\SnsUpdate\SNS-DOS"
echo In development
pause

:soft
echo No updates.
pause

:Update
echo No updates found.
start_sns.bat /SnsUpdate /NoUpdates