echo [SnsBrowser / Network status: ]
if not exist "%temp%\SnsUI\BrowserData" (md "%temp%\SnsUI" & md "%temp%\SnsUI\BrowserData")
curl --output "%temp%\SnsUI\BrowserData\domainlist.cmd"
curl --output "%temp%\SnsUI\BrowserData\Offline.7z"
