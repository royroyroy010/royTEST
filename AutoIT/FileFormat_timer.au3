Global $Paused
HotKeySet("{F11}","_esc")
func _esc()
    Exit
EndFunc
HotKeySet("{F10}", "TogglePause")
Func TogglePause()
    $Paused = NOT $Paused
    While $Paused
        sleep(100)
       ToolTip('Script "STOP"',1000,500,"Stop",2,1)
    WEnd
    ToolTip("")
EndFunc
ProgressOn("Progress", "Current ProgressĄG", "0 %",100,300)

$i=IniRead(".\Progress_bar.ini","Progressbar","Progress_Fileformat","-1")

if $i=-1 Then
    MsgBox(0,"False","False=-1")
EndIf
while $i<=100
    ProgressSet( $i, $i & " %")
    sleep(248400) ;about  second total=6.55 hr

    $i=$i+1
    If $i<=100 Then
    IniWrite(".\Progress_bar.ini","Progressbar","Progress_Fileformat",$i)
    Else
    IniWrite(".\Progress_bar.ini","Progressbar","Progress_Fileformat","0")
    EndIf
WEnd
    ProgressSet(100 , "Finish", "Progress is finish")
sleep(500)
ProgressOff()