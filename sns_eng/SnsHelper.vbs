Option Explicit

Dim Snd
Set Snd = CreateObject("WMPlayer.OCX")

If WScript.Arguments.Count <> 0 then
    Select Case WScript.Arguments(0)
    Case "/StrtpSnd": Startup
    Case "/Test": Window1
    Case "/WinIsEOL_Partial": Window2
    Case "/WinIsEOL": Window3
    Case "/OldWinX": Window4
    Case "/SnsUiCooldown": UiCooldown
    Case "/EOS_Arch": Window5
    End Select
end if

Set Snd = Nothing

Sub Startup()
    Snd.URL = "https://cdn.discordapp.com/attachments/920228415251038218/958332251203072010/startup.mp3"
    Snd.controls.play 
    While Snd.playState <> 1 
      WScript.Sleep 100
    Wend
    
    Snd.close
End Sub

Sub Window1()
    MsgBox "SNS-DOS is testing messages",0,"SNS-DOS Notify System"
End Sub

Sub Window2()
    MsgBox "SNS-DOS is partially supported by Windows Vista-8.1, but some features will be disabled due to new tools in Windows 10.",64,"SNS-DOS Compatibility"
End Sub

Sub Window3()
    MsgBox "SNS-DOS isn't supported by Windows XP or earlier. You can still use SNS-DOS, but we don't guarantee that SNS-DOS will work stably. We recommend upgrading Windows to at least Windows Vista",16,"SNS-DOS Compatibility"
End Sub

Sub Window4()
    MsgBox "This Windows 10 version is supported (LTSB or LTSC), but we still recommend upgrading to the latest version (20H1 and later). You can still use SNS-DOS without limits.",48,"SNS-DOS Compatibility"
End Sub

Sub Window5()
    MsgBox "SNS-DOS isn't supported by x32 CPUs. SNS-DOS recommends installing x64 version on Windows or switching to x64 PC.",16,"SnsUI Error"
End Sub

Sub UiCooldown()
    WScript.Sleep 400
End Sub