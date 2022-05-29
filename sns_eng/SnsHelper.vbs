Option Explicit

Dim Snd
Set Snd = CreateObject("WMPlayer.OCX")

If WScript.Arguments.Count <> 0 then
    Select Case WScript.Arguments(0)
    Case "/StrtpSnd": StrtpSnd
    Case "/LogonSnd": lgnsnd
    End Select
end if

Set Snd = Nothing

Sub StrtpSnd()
    Snd.URL = "https://cdn.discordapp.com/attachments/920228415251038218/958332251203072010/startup.mp3"
    Snd.controls.play 
    While Snd.playState <> 1 
      WScript.Sleep 100
    Wend
    
    Snd.close
End Sub

Sub Upd()
    Snd.URL = "https://cdn.discordapp.com/attachments/920228415251038218/958332251203072010/startup.mp3"
    Snd.controls.play 
    While Snd.playState <> 1 
      WScript.Sleep 100
    Wend
    
    Snd.close
End Sub