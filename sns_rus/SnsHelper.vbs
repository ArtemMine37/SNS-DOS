Option Explicit

Dim Snd
Set Snd = CreateObject("WMPlayer.OCX")

If WScript.Arguments.Count <> 0 then
    Select Case WScript.Arguments(0)
    Case "/StrtpSnd": Startup
    Case "/Test": Window1
    Case "/NotAvailable": Window2
    Case "/SnsUiCooldown": UiCooldown
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

Sub UiCooldown()
    WScript.Sleep 400
End Sub