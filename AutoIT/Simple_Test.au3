
Global $x,$y,$Left_X,$Left_Y,$Top,$Right_X,$Right_Y,$Right,$Left,$snapshot_path,$hamdlepath,$Utility,$CloseDocActionpath, $Utilitypath,$Defaultpath,$scanmode,$iniversion,$thresholeloop,$Titlepath,$finaltime,$scantype,$Bottom,$Paused
$wait=1000
HotKeySet("{Esc}", "_Exit")
Func _Exit()
    Send("{F11}");close counter
    Exit
EndFunc
HotKeySet("{F3}", "TogglePause")
Func TogglePause()
    Send("{F10}");stop counter
    $Paused = NOT $Paused
    While $Paused
        sleep(100)
       ToolTip('Script "STOP"',1000,500,"Stop",2,1)

    WEnd
    ToolTip("")
EndFunc
func autoTS($a)
$hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
While 1
$hamdlepath_1=IniRead(".\route.ini","GetHandleInfo_exe","GetHandleInfo_exe","0")
IniWrite($hamdlepath,"Environment","Ready","1")
RunWait(""&$hamdlepath_1&"  "&$a&" ")
     $Ready=IniRead($hamdlepath,"Environment","Ready","-1")
    $Status=IniRead($hamdlepath,"Environment","Status","-1")
    if    $Ready=0   AND $Status=0  Then
       $x=IniRead($hamdlepath,"Component_Rect","Center_X","100")
       $y=IniRead($hamdlepath,"Component_Rect","Center_Y","100")
       $Left_X=IniRead($hamdlepath,"ScrollBar","Left_X","100")
       $Left_Y=IniRead($hamdlepath,"ScrollBar","Left_Y","100")
       $Right_X=IniRead($hamdlepath,"ScrollBar","Right_X","100")
       $Right_Y=IniRead($hamdlepath,"ScrollBar","Right_Y","100")
       $Top=IniRead($hamdlepath,"Component_Rect","Top","100")
       $Right=IniRead($hamdlepath,"Component_Rect","Right","100")
       $Left=IniRead($hamdlepath,"Component_Rect","Left","100")
       $Bottom=IniRead($hamdlepath,"Component_Rect","Bottom","100")
         ExitLoop
         ElseIf  $Ready=0 And $Status=1 Then
    Sleep(100)
    ElseIf  $Ready=1 And $Status=0 Then
    Sleep(100)
    ElseIf  $Status=1 And $Ready=1 Then
    Sleep(100)
    Else
     Sleep(100)
    ExitLoop
     EndIf
 WEnd
EndFunc
Func color($color)            ;Color
    $colorpath=IniRead(".\"&$iniversion&".ini","Color","Color","0")
    $StringInStr=StringInStr ($colorpath,"A",2);比對字串如果有A就會回2
if $StringInStr=2 Then
    if $color=1 Then
    autoTS($colorpath)
    MouseClick("left",$x,$y,1)
   autoTS($colorpath)
    MouseClick("left",$x,$y+20,1)
    elseif $color=2 Then
    autoTS($colorpath)
    MouseClick("left",$x,$y,1)
    autoTS($colorpath)
    MouseClick("left",$x,$y+30,1)
    elseif $color=3 Then
    autoTS($colorpath)
    MouseClick("left",$x,$y,1)
    autoTS($colorpath)
    MouseClick("left",$x,$y+40,1)
    elseif $color=4 Then
    autoTS($colorpath)
    MouseClick("left",$x,$y,1)
    autoTS($colorpath)
    MouseClick("left",$x,$y+60,1)
    elseif $color=5 Then
    autoTS($colorpath)
    MouseClick("left",$x,$y,1)
    autoTS($colorpath)
    MouseClick("left",$x,$y+70,1)
    elseif $color=6 Then
    autoTS($colorpath)
    MouseClick("left",$x,$y,1)
    autoTS($colorpath)
    MouseClick("left",$x,$y+80,1)
   Else
    Sleep(100)
   EndIf
Else
    Sleep(100)
EndIf
EndFunc
Func gray($gray)             ;Grayscale
    $grayscalepath=IniRead(".\"&$iniversion&".ini","Grayscale","Grayscale","0")
    $StringInStr=StringInStr ($grayscalepath,"A",2)
if $StringInStr=2 Then
    if  $gray=1 Then
    autoTS($grayscalepath)
    MouseClick("left",$x,$y,1)
    autoTS($grayscalepath)
    MouseClick("left",$x,$y+20,1)
    elseif $gray=2 Then
    autoTS($grayscalepath)
    MouseClick("left",$x,$y,1)
    autoTS($grayscalepath)
    MouseClick("left",$x,$y+30,1)
    elseif $gray=3 Then
    autoTS($grayscalepath)
    MouseClick("left",$x,$y,1)
    autoTS($grayscalepath)
    MouseClick("left",$x,$y+40,1)
    elseif $gray=4 Then
    autoTS($grayscalepath)
    MouseClick("left",$x,$y,1)
    autoTS($grayscalepath)
    MouseClick("left",$x,$y+60,1)
    elseif $gray=5 Then
    autoTS($grayscalepath)
    MouseClick("left",$x,$y,1)
    autoTS($grayscalepath)
    MouseClick("left",$x,$y+70,1)
    elseif $gray=6 Then
    autoTS($grayscalepath)
    MouseClick("left",$x,$y,1)
    autoTS($grayscalepath)
    MouseClick("left",$x,$y+80,1)
    Else
    Sleep(100)
    EndIf
Else
    Sleep(100)
EndIf
EndFunc
Func bw($BW)                 ;bw
    $BWpath=IniRead(".\"&$iniversion&".ini","BW","BW","0")
    $StringInStr=StringInStr ($BWpath,"A",2)
if $StringInStr=2 Then
    if  $BW=1 Then
    autoTS($BWpath)
    MouseClick("left",$x,$y,1)
   autoTS($BWpath)
    MouseClick("left",$x,$y+20,1)
    elseif $BW=2 Then
    autoTS($BWpath)
    MouseClick("left",$x,$y,1)
    autoTS($BWpath)
    MouseClick("left",$x,$y+30,1)
    elseif $BW=3 Then
    autoTS($BWpath)
    MouseClick("left",$x,$y,1)
    autoTS($BWpath)
    MouseClick("left",$x,$y+40,1)
    elseif $BW=4 Then
    autoTS($BWpath)
    MouseClick("left",$x,$y,1)
    autoTS($BWpath)
    MouseClick("left",$x,$y+60,1)
    elseif $BW=5 Then
    autoTS($BWpath)
    MouseClick("left",$x,$y,1)
    autoTS($BWpath)
    MouseClick("left",$x,$y+70,1)
    elseif $BW=6 Then
    autoTS($BWpath)
    MouseClick("left",$x,$y,1)
    autoTS($BWpath)
    MouseClick("left",$x,$y+80,1)
    Else
    Sleep(100)
    EndIf
Else
     Sleep(100)
endif
EndFunc
func scantype($scantype)          ;Scan Type
    $ScanTypepath=IniRead(".\"&$iniversion&".ini","ScanType","ScanType","0")
    $StringInStr=StringInStr ($ScanTypepath,"A",2)
if $StringInStr=2 Then
        if $scantype=1 Then
    autoTS( $ScanTypepath)
    MouseClick("left",$x,$y,1)
        autoTS( $ScanTypepath)
    MouseClick("left",$x,$y+20,1)


;~     elseif $scantype=2 Then
;~     	autoTS( $ScanTypepath)
;~ 	MouseClick("left",$x,$y,1)

;~ 	autoTS( $ScanTypepath)
;~ 	MouseClick("left",$x,$y+30,1)

;~     elseif $scantype=3 Then
;~     	autoTS( $ScanTypepath)
;~ 	MouseClick("left",$x,$y,1)

;~ 	autoTS( $ScanTypepath)
;~ 	MouseClick("left",$x,$y+40,1)
     Else
     Sleep(100)
     EndIf
Else
     Sleep(100)
EndIf
EndFunc
Func pagesize($pagesize)         ;Page  Size
     $PageSizepath=IniRead(".\"&$iniversion&".ini","PageSize","PageSize","0")
     $StringInStr=StringInStr ($PageSizepath,"A",2)
if $StringInStr=2 Then
    if $pagesize=1 Then
    autoTS( $PageSizepath)
    MouseClick("left",$x,$y,1)
        autoTS( $PageSizepath)
    MouseClick("left",$x,$y+30,1)
    elseif $pagesize=2 Then
        autoTS( $PageSizepath)
    MouseClick("left",$x,$y,1)
    autoTS( $PageSizepath)
    MouseClick("left",$x,$y+40,1)
    elseif $pagesize=3 Then
        autoTS( $PageSizepath)
    MouseClick("left",$x,$y,1)
    autoTS( $PageSizepath)
    MouseClick("left",$x,$y+60,1)

;~     elseif $pagesize=4 Then
;~     	autoTS( $PageSizepath)
;~ 	MouseClick("left",$x,$y,1)

;~ 	autoTS( $PageSizepath)
;~ 	MouseClick("left",$x,$y+60,1)

;~     elseif $pagesize=5 Then
;~     	autoTS( $PageSizepath)
;~ 	MouseClick("left",$x,$y,1)

;~ 	autoTS( $PageSizepath)
;~ 	MouseClick("left",$x,$y+70,1)
     Else
     Sleep(100)
     EndIf
Else
    Sleep(100)
EndIf
EndFunc
Func scanmode($scanmode)    ;Scan Mode
    $ScanModepath=IniRead(".\"&$iniversion&".ini","ScanMode","ScanMode","0")
    $StringInStr=StringInStr ($ScanModepath,"A",2)
if $StringInStr=2 Then
    if $scanmode=1 Then
    autoTS($ScanModepath)
    MouseClick("left",$x,$y,1)
   autoTS($ScanModepath)
    MouseClick("left",$x,$y+30,1)
    elseif $scanmode=2 Then
   autoTS($ScanModepath)
    MouseClick("left",$x,$y,1)
    autoTS($ScanModepath)
    MouseClick("left",$x,$y+40,1)
    elseif $scanmode=3 Then
   autoTS($ScanModepath)
    MouseClick("left",$x,$y,1)
    autoTS($ScanModepath)
    MouseClick("left",$x,$y+60,1)

;~         elseif $scanmode=4 Then

;~ autoTS($ScanModepath)
;~ 	MouseClick("left",$x,$y,1)

;~ 	autoTS($ScanModepath)
;~ 	MouseClick("left",$x,$y+60,1)
    Else
    Sleep(100)
    EndIf
Else
    Sleep(100)
EndIf
EndFunc
Func DocumentType($DocumentType)   ;DocumentType
    $DocumentTypepath=IniRead(".\"&$iniversion&".ini","DocumentType","DocumentType","0")
    $Brightpath=IniRead(".\"&$iniversion&".ini","DocumentType","Bright","0")
    $Contrastpath=IniRead(".\"&$iniversion&".ini","DocumentType","Contrast","0")
    $StringInStr=StringInStr ($DocumentTypepath,"A",2)
if $StringInStr=2 Then
    if $scanmode=1 Then                            ;scan mode=黑白,document有text
    if $DocumentType=1 Then
        autoTS($DocumentTypepath)
    MouseClick("left",$x,$y,1)
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y+20,1)
    elseif $DocumentType=2 Then
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y,1)
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y+40,1)
    elseif $DocumentType=3 Then
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y,1)
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y+60,1)
   Else
   Sleep(100)
    EndIf
    Else               ;scan mode=灰階/彩色,document沒有text
    if $DocumentType=1 Then
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y,1)
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y+20,1)
    autoTS($Brightpath)
    MouseClick("left",$Right-3,$y,5)
    autoTS($Contrastpath)
    MouseClick("left",$Left+3,$y,5)
    elseif $DocumentType=2 Then
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y,1)
    autoTS($DocumentTypepath)
    MouseClick("left",$x,$y+60,1)
    Else
    Sleep(100)
    EndIf
    EndIf
Else
    Sleep(100)
EndIf
EndFunc
Func resolution($resolution)    ;resolution
    $Resolutionpath=IniRead(".\"&$iniversion&".ini","Resolution","Resolution","0")
     $StringInStr=StringInStr ($Resolutionpath,"A",2)
if $StringInStr=2 Then
    if $resolution=1 Then
       autoTS($Resolutionpath)
    MouseClick("left",$x,$y,1)
    autoTS($Resolutionpath)
    MouseClick("left",$x,$y+20,1)
    elseif $resolution=2 Then
        autoTS($Resolutionpath)
    MouseClick("left",$x,$y,1)
        autoTS($Resolutionpath)
    MouseClick("left",$x,$y+30,1)
    elseif $resolution=3 Then
        autoTS($Resolutionpath)
    MouseClick("left",$x,$y,1)
        autoTS($Resolutionpath)
    MouseClick("left",$x,$y+40,1)
  elseif $resolution=4 Then
        autoTS($Resolutionpath)
    MouseClick("left",$x,$y,1)
       autoTS($Resolutionpath)
    MouseClick("left",$x,$y+60,1)

;~       elseif $resolution=5 Then
;~     	autoTS($Resolutionpath)
;~ 	MouseClick("left",$x,$y,1)
;~ 	autoTS($Resolutionpath)
;~ 	MouseClick("left",$x,$y+70,1)

;~       elseif $resolution=6 Then
;~     	autoTS($Resolutionpath)
;~ 	MouseClick("left",$x,$y,1)
;~ 	autoTS($Resolutionpath)
;~ 	MouseClick("left",$x,$y+80,1)
    Else
        Sleep(100)
    EndIf
Else
    Sleep(100)
endif
EndFunc
func thresholeloop($thresholeloop)   ;thresholeloop
          $thresholelooppath=IniRead(".\"&$iniversion&".ini","thresholeloop","thresholeloop","0")
          $thresholdpath=IniRead(".\"&$iniversion&".ini","thresholeloop","threshold","0")
          $ScrollBarpath=IniRead(".\"&$iniversion&".ini","thresholeloop","ScrollBar","0")
          $OKButtonpath=IniRead(".\"&$iniversion&".ini","thresholeloop","OKButton","0")
          $ChineseScroll=IniRead(".\"&$iniversion&".ini","thresholeloop","ChineseScroll","0")
          $ChineseOK=IniRead(".\"&$iniversion&".ini","thresholeloop","ChineseOK","0")
          $StringInStr=StringInStr ($thresholelooppath,"A",2)
if $StringInStr=2 Then
                If $thresholeloop=1 then
            autoTS($thresholelooppath)
                MouseClick("left",$x,$y,1)
            autoTS($thresholelooppath);basic
                MouseClick("left",$x,$y+20,1)
                CompareResult_image1()
            autoTS($thresholdpath);>>
                MouseClick("left",$x,$y,1)
                Sleep(1000)
                        if WinActive("Threshold Setting","") Then
                        $hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
                        IniWrite($hamdlepath,"ImageFile","SavePath","D:\Test\test-2.bmp")
                         autoTS("-FLAG 131072");截Image-2,當前視窗
                         autoTS("-FLAG 524288");比對Image1與Image2
                                                                $CompareResult=IniRead($hamdlepath,"ImageFile","CompareResult","0")
                                                                    if $CompareResult=-3 Then
                                                                        MsgBox(0,"",$CompareResult,0.5)
                                                                        autoTS($ScrollBarpath)
                                                                        MouseClick("left",$Right-3,$y,10)
                                                                        autoTS($OKButtonpath)
                                                                        MouseClick("left",$x,$y,1)
                                                                  Else
                                                                        MsgBox(0,"",$CompareResult,1)
                                                                        autoTS($thresholdpath);>>
                                                                        MouseClick("left",$x,$y,1)
                                                                        WinWaitActive("Threshold Setting","",2)
                                                                        WinActive("Threshold Setting")
                                                                        autoTS($ScrollBarpath)
                                                                        MouseClick("left",$Right-3,$y,10)
                                                                        autoTS($OKButtonpath)
                                                                        MouseClick("left",$x,$y,1)
                                                                  EndIf
                        Elseif WinActive("高反差設定") Then
                        $hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
                        IniWrite($hamdlepath,"ImageFile","SavePath","D:\Test\test-2.bmp")
                         autoTS("-FLAG 131072");截Image-2,當前視窗
                         autoTS("-FLAG 524288");比對Image1與Image2
                                                                $CompareResult=IniRead($hamdlepath,"ImageFile","CompareResult","0")
                                                                    if $CompareResult=-3 Then
                                                                        MsgBox(0,"",$CompareResult,0.5)
                                                                        WinActivate("高反差設定")
                                                                        WinWaitActive("高反差設定","",2)
                                                                        WinActive("高反差設定")
                                                                        autoTS($ChineseScroll)
                                                                        MouseClick("left",$Right-3,$y,10)
                                                                        autoTS($ChineseOK)
                                                                        MouseClick("left",$x,$y,1)
                                                                  Else
                                                                        MsgBox(0,"",$CompareResult,1)
                                                                        autoTS($thresholdpath);>>
                                                                        MouseClick("left",$x,$y,1)
                                                                        WinWaitActive("高反差設定","",2)
                                                                        WinActive("高反差設定")
                                                                        autoTS($ChineseScroll)
                                                                        MouseClick("left",$Right-3,$y,10)
                                                                        autoTS($ChineseOK)
                                                                        MouseClick("left",$x,$y,1)
                                                                  EndIf
                        Else
                            Sleep(10)
                        EndIf
              Else
            Sleep(100)
              EndIf
Else
    Sleep(100)
EndIf
EndFunc
Func Descreenloop($Descreenloop)                 ;Descreenloop
      $Descreenlooppath=IniRead(".\"&$iniversion&".ini","Descreenloop","Descreenloop","0")
      $StringInStr=StringInStr ($Descreenlooppath,"A",2)
if $StringInStr=2 Then
    if $Descreenloop=1 then
autoTS($Descreenlooppath)
    MouseClick("left",$x,$y,1)
autoTS($Descreenlooppath)
    MouseClick("left",$x,$y+20,1)
Elseif $Descreenloop=2 then
autoTS($Descreenlooppath)
    MouseClick("left",$x,$y,1)
autoTS($Descreenlooppath)
    MouseClick("left",$x,$y+30,1)
Elseif $Descreenloop=3 then
autoTS($Descreenlooppath)
    MouseClick("left",$x,$y,1)
autoTS($Descreenlooppath)
    MouseClick("left",$x,$y+40,1)
Elseif $Descreenloop=4 then
autoTS($Descreenlooppath)
    MouseClick("left",$x,$y,1)
autoTS($Descreenlooppath)
    MouseClick("left",$x,$y+60,1)
   Else
    Sleep(100)
   EndIf
Else
    Sleep(100)
EndIf
EndFunc
Func gammaloop($gammaloop)                     ;Gammaloop
    $Gammalooppath=IniRead(".\"&$iniversion&".ini","Gammaloop","Gammaloop","0")
    $StringInStr=StringInStr ($Gammalooppath,"A",2)
if $StringInStr=2 Then
    if $gammaloop=1 Then
    autoTS($Gammalooppath)
    MouseClick("left",$Right-3,$y,10);右點10
    ElseIf $gammaloop=2 then
    autoTS($Gammalooppath)
    MouseClick("left",$Left+3,$y,10);左點10
   Else
    Sleep(100)
   EndIf
 Else
    Sleep(100)
EndIf
   EndFunc
Func ColorDropoutloop($ColorDropoutloop)   ;ColorDropoutloop
    $ColorDropoutlooppath=IniRead(".\"&$iniversion&".ini","ColorDropoutloop","ColorDropoutloop","0")
    $StringInStr=StringInStr ($ColorDropoutlooppath,"A",2)
if $StringInStr=2 Then
    if $ColorDropoutloop=1 then
autoTS($ColorDropoutlooppath)
    MouseClick("left",$x,$y,1)
autoTS($ColorDropoutlooppath)
    MouseClick("left",$x,$y+20,1)
ElseIf $ColorDropoutloop=2 then
autoTS($ColorDropoutlooppath)
    MouseClick("left",$x,$y,1)
autoTS($ColorDropoutlooppath)
    MouseClick("left",$x,$y+30,1)
ElseIf $ColorDropoutloop=3 then
autoTS($ColorDropoutlooppath)
    MouseClick("left",$x,$y,1)
autoTS($ColorDropoutlooppath)
    MouseClick("left",$x,$y+40,1)
ElseIf $ColorDropoutloop=4 then
autoTS($ColorDropoutlooppath)
    MouseClick("left",$x,$y,1)
autoTS($ColorDropoutlooppath)
    MouseClick("left",$x,$y+60,1)
  Else
    Sleep(100)
  EndIf
Else
    Sleep(100)
EndIf
EndFunc
func final()                                                                 ;Apply+Scan+Snapshot(沒有加入判斷字串,因為每次都會坐apply跟preview)
    $Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0")
    $Previewpath=IniRead(".\"&$iniversion&".ini","final","Preview","0")
    $Preview_Closepath=IniRead(".\"&$iniversion&".ini","final","Preview_Close","0")
    $ChinesePreview=IniRead(".\"&$iniversion&".ini","final","ChinesePreview","0")
autoTS($Applypath)
MouseClick("left",$x,$y,1)
WinActivate($Titlepath)
WinWaitActive($Titlepath)
WinActive($Titlepath)
autoTS($Previewpath)
MouseClick("left",$x,$y,1)

;~ while 1
;~     if WinActive("Preview","") Then
;~         WinWaitActive("Preview","")
;~         WinActive("Preview","")
;~         snapshot_path();截圖
;~         WinActivate("Preview","")
;~         WinWaitActive("Preview","")
;~         WinActive("Preview","")
;~         autoTS($Preview_Closepath)
;~         MouseClick("left",$x,$y,1)
;~         ExitLoop
;~     Elseif WinActive("預覽") Then
;~         WinWaitActive("預覽")
;~         WinActive("預覽")
;~         snapshot_path();截圖
;~         WinActivate("預覽")
;~         WinWaitActive("預覽")
;~         WinActive("預覽")
;~         autoTS($ChinesePreview)
;~         MouseClick("left",$x,$y,1)
;~         ExitLoop
;~     EndIf
;~ WEnd
Sleep(1000)
WinWaitActive("[ACTIVE]")
WinActive("[ACTIVE]")
snapshot_path();截圖
WinWaitActive("[ACTIVE]")
WinActive("[ACTIVE]")
        autoTS($Preview_Closepath)
        MouseClick("left",$x,$y,1)
$Clickupleftpath=IniRead(".\"&$iniversion&".ini","Clickupleft","Clickupleft","0")
autoTS($Clickupleftpath)
MouseClick("left",$x,$y-270,1);先點一下,左上方Icon

;*********************************************************************************************************************儲存Image-1
$hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
 $Compare=IniRead(".\route.ini","Compare","Compare","0")
IniWrite($hamdlepath,"ImageFile","SavePath",""&$Compare&"\test-1.bmp")
autoTS("-FLAG 131072");截Image-1,當前視窗
snapshot_path();截圖
WinActivate($Titlepath);喚起DocAction介面
WinWaitActive($Titlepath)
WinActive($Titlepath)
autoTS($Clickupleftpath)
MouseClick("left",$x,$y-270,2) ;在點2下,左上方Icon
sleep($wait)
 While 1
    if WinWaitActive("Scan","",3) Then
        Sleep($wait)
    ElseIf WinWaitActive("DocuAction MFC Application","",3) Then
         snapshot_path()
            WinClose("DocuAction MFC Application")
            $ExecuteDocAction=IniRead(".\route.ini","ExecuteDocAction","ExecuteDocAction","0")
            Sleep(3000)
             run($ExecuteDocAction)
             WinActivate($Titlepath)
             WinWaitActive($Titlepath)
             WinActive($Titlepath)
           run(".\remove.bat")
            FileMove(".\Snapshot\*.PNG",".\Image\CrashImage");將crash畫面移到crashimageFolder
             WinActivate($Titlepath)
             WinActive($Titlepath)
            Sleep(1000)
            ExitLoop
    ElseIf     WinActive("Save Print Output As") or WinActive("另存檔案為") Then
         $i=1
        while $i<=100
                if  WinWaitActive("Save Print Output As","",1) then
                    ControlSetText("Save Print Output As","","Edit1","copy#_"& $i &"")
                    Sleep(1000)
                    send("{enter}")
                        if WinWaitActive("Confirm Save As","",1) Then
                        Send("!y")
                        Else
                            Sleep(10)
                        EndIf
                        WinClose("Save Print Output As")
                Elseif  WinWaitActive("另存檔案為","",1) then
                            ControlSetText("另存檔案為","","Edit1","copy#_"& $i &"")
                            Sleep(1000)
                            send("{enter}")
                                if WinWaitActive("確認另存新檔","",1) Then
                                Send("!y")
                                Else
                                Sleep(100)
                                EndIf
                            WinClose("另存檔案為")
                Else
                    ExitLoop
                EndIf
        $i=$i+1
        WEnd
    Else
        ExitLoop;跳出迴圈
    EndIf
WEnd
 EndFunc
Func snapshot_path()                                              ;Snapshot_path,目前加入判斷中、英文語系
   $snapshot_path=IniRead(".\route.ini","snapshot","snapshot","0")
Run($snapshot_path)
Sleep(1000)

;~ if WinActive("FastStone 擷取") Then
;~     WinWaitActive("FastStone 擷取","")
;~     WinActive("FastStone 擷取","")
;~     Send("{F2}")
;~     Sleep($wait)
;~     WinClose("FastStone 擷取","")
;~         $WinWaitCloseStatus=WinWaitClose("FastStone 擷取","")
;~         if $WinWaitCloseStatus=0 Then       ;防止沒有關閉FastStone
;~             WinClose("FastStone 擷取","")
;~         EndIf
;~ Elseif WinActive("FastStone Capture") Then
;~         WinWaitActive("FastStone Capture")
;~         WinActive("FastStone Capture")
;~         Send("{F2}")
;~         Sleep($wait)
;~         WinClose("FastStone Capture")
;~             $WinWaitCloseStatus=WinWaitClose("FastStone Capture")
;~             if $WinWaitCloseStatus=0 Then       ;防止沒有關閉FastStone
;~                 WinClose("FastStone Capture")
;~             EndIf
;~ Else
;~     Sleep(10)
;~ EndIf
    WinActive("[CLASS:FastStoneScreenCapturePanel]")
    WinWaitActive("[CLASS:FastStoneScreenCapturePanel]")
    WinActive("[CLASS:FastStoneScreenCapturePanel]")
    Send("{F2}")
    Sleep($wait)
    WinClose("[CLASS:FastStoneScreenCapturePanel]")
        $WinWaitCloseStatus=WinWaitClose("[CLASS:FastStoneScreenCapturePanel]")
        if $WinWaitCloseStatus=0 Then       ;防止沒有關閉FastStone 0=no close
            WinClose("[CLASS:FastStoneScreenCapturePanel]")
        EndIf
EndFunc
func CompareResult()                                     ;比對圖像並關閉再打開DocAction
$begintimer=TimerInit()
Do
    $hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
    $Compare=IniRead(".\route.ini","Compare","Compare","0")
    IniWrite($hamdlepath,"ImageFile","SavePath",""&$Compare&"\test-2.bmp")
     autoTS("-FLAG 131072");截Image-2,當前視窗
     autoTS("-FLAG 524288");比對Image1與Image2
    $CompareResult=IniRead($hamdlepath,"ImageFile","CompareResult","0")
if $CompareResult>=95 Then  ;===========圖片相同
        MsgBox(0,"",$CompareResult,0.5)
        Sleep(1000)
        ExitLoop
ElseIf $CompareResult>=0 And $CompareResult<95 then ;===========圖片內容不相同
        snapshot_path()
        MsgBox(0,"",$CompareResult,2)
            if WinWaitActive("DocuAction MFC Application","",3) Then
             WinClose("DocuAction MFC Application")
            $ExecuteDocAction=IniRead(".\route.ini","ExecuteDocAction","ExecuteDocAction","0")
            Sleep(3000)
             run($ExecuteDocAction)
             WinActivate($Titlepath)
             WinWaitActive($Titlepath)
             WinActive($Titlepath)
             run(".\remove.bat")
              FileMove(".\Snapshot\*.PNG",".\Image\CrashImage");將crash畫面移到crashimageFolder
               WinActivate($Titlepath)
               WinActive($Titlepath)
            Else
             $Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0")
             FileMove(".\Snapshot\*.PNG",".\Image\CompareLow95");將crash畫面移到CompareLow95
             autoTS($Applypath)
            MouseClick("left",$x,$y,1)
            Sleep(3000)
             CloseDocAction()
              run(".\remove.bat")
               WinActivate($Titlepath)
               WinActive($Titlepath)
         endif
            Sleep(1000)
        ExitLoop
ElseIf $CompareResult=-1 then
         MsgBox(0,"",$CompareResult,1)
         snapshot_path()
         ExitLoop
ElseIf $CompareResult=-2 then
         MsgBox(0,"",$CompareResult,2)
ElseIf $CompareResult=-3 then
             MsgBox(0,"",$CompareResult,2)
        If WinWaitActive("DocuAction MFC Application","",3) Then
                snapshot_path()
                WinClose("DocuAction MFC Application")
            $ExecuteDocAction=IniRead(".\route.ini","ExecuteDocAction","ExecuteDocAction","0")
            Sleep(3000)
             run($ExecuteDocAction)
             WinActivate($Titlepath)
             WinWaitActive($Titlepath)
             WinActive($Titlepath)
                run(".\remove.bat")
                FileMove(".\Snapshot\*.PNG",".\Image\CrashImage");將crash畫面移到crashimageFolder
                WinActivate($Titlepath)
                WinActive($Titlepath)
            Sleep(1000)
            ExitLoop
        Else
            Sleep(100)
            Endif
Else
    Sleep(100)
EndIf
$finaltime=TimerDiff( $begintimer)
Until $finaltime>=60000
if $finaltime>=60000 then
            Snapshot_path()
             $Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0")
             autoTS($Applypath)
            MouseClick("left",$x,$y,1)
            Sleep(3000)
            CloseDocAction()
           FileMove(".\Snapshot\*.PNG",".\Image\OverTime\Snapshot_now");截當前頁面
            $Compare=IniRead(".\route.ini","Compare","Compare","0")
            FileCopy(""&$Compare&"\*.bmp",".\Image\OverTime\Compare\"&@MON&""&"-"&""&@MDAY&""&"-"&""&@HOUR&""&"-"&""&@MIN&""&"-"&""&@SEC&"*.bmp");超出比對時間會儲存image-1和imge-2
            run(".\remove.bat");存Log
            WinActivate($Titlepath)
            WinActive($Titlepath)
            Sleep(1000)
Else
Sleep(100)
EndIf
EndFunc
Func CloseDocAction()                                   ;關閉DocAction再打開
ProcessClose("DocuAction.exe")
Sleep(1000)
$ExecuteDocAction=IniRead(".\route.ini","ExecuteDocAction","ExecuteDocAction","0")
run($ExecuteDocAction)
WinWaitActive($Titlepath)
WinActive($Titlepath)
EndFunc
func CompareResult_image1()                       ;儲存Image-1
$hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
$Compare=IniRead(".\route.ini","Compare","Compare","0")
IniWrite($hamdlepath,"ImageFile","SavePath",""&$Compare&"\test-1.bmp")
Sleep(1000);防止DocAction介面還沒準備好就截圖
autoTS("-FLAG 131072");截Image-1,當前視窗
EndFunc
func CompareResult_image2()                       ;儲存Image-2+比對
$begintimer=TimerInit()
Do
    $hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
    $Compare=IniRead(".\route.ini","Compare","Compare","0")
    IniWrite($hamdlepath,"ImageFile","SavePath",""&$Compare&"\test-2.bmp")
     autoTS("-FLAG 131072");截Image-2,當前視窗
     autoTS("-FLAG 524288");比對Image1與Image2
    $CompareResult=IniRead($hamdlepath,"ImageFile","CompareResult","0")
if $CompareResult>=95 Then  ;===========圖片相同
        MsgBox(0,"",$CompareResult,0.5)
        ExitLoop
ElseIf $CompareResult>=0 And $CompareResult<95 then ;===========圖片內容不相同
        snapshot_path()
        MsgBox(0,"",$CompareResult,1)
         if WinWaitActive("DocuAction MFC Application","",3) Then
             WinClose("DocuAction MFC Application")
            $ExecuteDocAction=IniRead(".\route.ini","ExecuteDocAction","ExecuteDocAction","0")
            Sleep(3000)
             run($ExecuteDocAction)
             WinActivate($Titlepath)
             WinWaitActive($Titlepath)
             WinActive($Titlepath)
             run(".\remove.bat")
              FileMove(".\Snapshot\*.PNG",".\Image\CrashImage");將crash畫面移到crashimageFolder
               WinActivate($Titlepath)
               WinActive($Titlepath)
         Else
            FileMove(".\Snapshot\*.PNG",".\Image\CompareLow95");將crash畫面移到CompareLow95
             $Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0")
             autoTS($Applypath)
            MouseClick("left",$x,$y,1)
            Sleep(3000)
             CloseDocAction()
              run(".\remove.bat")
               WinActivate($Titlepath)
               WinActive($Titlepath)
         endif
            Sleep(1000)
        ExitLoop
ElseIf $CompareResult=-1 then           ;no image-1
         MsgBox(0,"",$CompareResult,1)
         snapshot_path()
         ExitLoop
ElseIf $CompareResult=-2 then            ;no image-2
         MsgBox(0,"",$CompareResult,1)
ElseIf $CompareResult=-3 then            ;大小不相同
             MsgBox(0,"",$CompareResult,2)
        If WinWaitActive("DocuAction MFC Application","",5) Then
                snapshot_path()
                WinClose("DocuAction MFC Application")
            $ExecuteDocAction=IniRead(".\route.ini","ExecuteDocAction","ExecuteDocAction","0")
            Sleep(3000)
             run($ExecuteDocAction)
             WinActivate($Titlepath)
             WinWaitActive($Titlepath)
             WinActive($Titlepath)
                run(".\remove.bat")
                FileMove(".\Snapshot\*.PNG",".\Image\CrashImage");將crash畫面移到crashimageFolder
                WinActivate($Titlepath)
                WinActive($Titlepath)
            Sleep(1000)
            Endif
Else
    Sleep(100)
EndIf
$finaltime=TimerDiff( $begintimer)
Until $finaltime>=60000
            if $finaltime>=60000  then
            Snapshot_path()
             $Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0")
             autoTS($Applypath)
            MouseClick("left",$x,$y,1)
            Sleep(3000)
            CloseDocAction()
             FileMove(".\Snapshot\*.PNG",".\Image\OverTime\Snapshot_now");截當前頁面
            $Compare=IniRead(".\route.ini","Compare","Compare","0")
            FileCopy(""&$Compare&"\*.bmp",".\Image\OverTime\Compare\"&@MON&""&"-"&""&@MDAY&""&"-"&""&@HOUR&""&"-"&""&@MIN&""&"-"&""&@SEC&"*.bmp");超出比對時間會儲存image-1和imge-2
            run(".\remove.bat");存Log
            WinActivate($Titlepath)
            WinActive($Titlepath)
            Sleep(1000)
            Else
            Sleep(100)
            EndIf
EndFunc
func  ButtonTest()                                          ;switchUtility.ok.cancel.help
    $OK_2=IniRead(".\"&$iniversion&".ini","GlobalSettings","OK_2","0")
    $Cancel=IniRead(".\"&$iniversion&".ini","GlobalSettings","Cancel","0")
    $Help=IniRead(".\"&$iniversion&".ini","GlobalSettings","Help","0")
    $Title=IniRead(".\"&$iniversion&".ini","Title","Title","0")
snapshot_path();截圖
Sleep($wait)
autoTS($OK_2)
MouseClick("left",$x,$y,1)
Sleep($wait)
WinSetState($Titlepath,"",@SW_SHOW)
WinActivate($Titlepath)
WinWaitActive($Titlepath)
WinActive($Titlepath)
Sleep($wait)
autoTS($Cancel)
MouseClick("left",$x,$y,1)
Sleep($wait)
WinSetState($Titlepath,"",@SW_SHOW)
WinActivate($Titlepath)
WinWaitActive($Titlepath)
WinActive($Titlepath)
autoTS($Help)
MouseClick("left",$x,$y,1)
;已加入中、英文語系判斷
    if WinActive("DocAction 說明") then
        WinWaitActive("DocAction 說明")
        WinActive("DocAction 說明")
        WinClose("DocAction 說明")
    Else
        WinWaitActive("DocAction Help")
        WinActive("DocAction Help")
        WinClose("DocAction Help")
    EndIf
EndFunc
$ExecuteDocAction=IniRead(".\route.ini","ExecuteDocAction","ExecuteDocAction","0")
Run($ExecuteDocAction)
Sleep(2000)
$Windowshandle=IniRead(".\route.ini","Windowshandle","Windowshandle","0")
AutoTS($Windowshandle);判斷版本檔案,需要先開啟DocAction才能獲取到檔案版本
$hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
$iniversion=IniRead($hamdlepath,"FileInfo","Version","0")
$Titlepath=IniRead(".\"&$iniversion&".ini","Title","Title","0")
WinWaitActive($Titlepath)
Sleep($wait)
MsgBox(0,"Forecast Time","About 7 min",2) ;tip forecast time
Run("Simple_timer.exe") ;excute prograss bar






;***********************************clickGlobal Settings
$Globalpath=IniRead(".\"&$iniversion&".ini","GlobalSettings","Globalpath","0")
$GlobalDialog=IniRead(".\"&$iniversion&".ini","GlobalSettings","GlobalDialog","0")
$BlankPageSensitivity=IniRead(".\"&$iniversion&".ini","GlobalSettings","BlankPageSensitivity","0")
$ColorMode=IniRead(".\"&$iniversion&".ini","GlobalSettings","ColorMode","0")
$GrayscaleMode=IniRead(".\"&$iniversion&".ini","GlobalSettings","GrayscaleMode","0")
$Slider1=IniRead(".\"&$iniversion&".ini","GlobalSettings","Slider1","0")
$OK_1=IniRead(".\"&$iniversion&".ini","GlobalSettings","OK_1","0")
$BWMode=IniRead(".\"&$iniversion&".ini","GlobalSettings","BWMode","0")
$Allsidesmatch=IniRead(".\"&$iniversion&".ini","GlobalSettings","Allsidesmatch","0")
$TOPScrollBar=IniRead(".\"&$iniversion&".ini","GlobalSettings","TOPScrollBar","0")
$LeftScrollBar=IniRead(".\"&$iniversion&".ini","GlobalSettings","LeftScrollBar","0")
$DownScrollBar=IniRead(".\"&$iniversion&".ini","GlobalSettings","DownScrollBar","0")
$RightScrollBar=IniRead(".\"&$iniversion&".ini","GlobalSettings","RightScrollBar","0")
$RemoveCustom=IniRead(".\"&$iniversion&".ini","GlobalSettings","RemoveCustom","0")
$ColorMode_1=IniRead(".\"&$iniversion&".ini","GlobalSettings","ColorMode_1","0")
$GrayscaleMode_1=IniRead(".\"&$iniversion&".ini","GlobalSettings","GrayscaleMode_1","0")
$Slider1_1=IniRead(".\"&$iniversion&".ini","GlobalSettings","Slider1_1","0")
$OK_2=IniRead(".\"&$iniversion&".ini","GlobalSettings","OK_2","0")
$BWMode_1=IniRead(".\"&$iniversion&".ini","GlobalSettings","BWMode_1","0")
$DisplayBlankPageMessage=IniRead(".\"&$iniversion&".ini","GlobalSettings","DisplayBlankPageMessage","0")
autoTS($Globalpath)
MouseClick("left",$x,$y,1)
WinWaitActive("GlobalSetting")
WinActive("GlobalSetting")
autoTS($GlobalDialog)
MouseClick("left",$x,$y,1)
Send("{down}");Remove Blank Page
Opt("MouseClickDelay",100)
autoTS($BlankPageSensitivity);往右點15下
MouseClick("left",$Right-3,$y,14)
autoTS($BlankPageSensitivity);往左點15下
MouseClick("left",$Left+3,$y,14)
autoTS($DisplayBlankPageMessage)
MouseClick("left",$x,$y,1)
Sleep(1000)
MouseClick("left",$x,$y,1)
Opt("MouseClickDelay",10)
autoTS($GlobalDialog)
MouseClick("left",$x,$y,1)
Send("{down 2}");Image Edge Fill
autoTS($ColorMode)
MouseClick("left",$x,$y,1)
if WinActive("色彩") or WinActive("Color") Then ;判斷中、英文語系
Sleep(10)
endif
$selectcolor=1
While $selectcolor<=8
$i=1
While $i<=5
Send("{space}")
Sleep(100)
Send("{up}")
Send("{space}")
Sleep(100)
if $i=5 then
Send("{down 6}")
Send("{left 1}")
EndIf
$i=$i+1
WEnd
$selectcolor=$selectcolor+1
WEnd
Send("{down 6}")
Send("{right 8}")
Send("{space}")
Send("{enter}")
autoTS($GrayscaleMode)
MouseClick("left",$x,$y,1)
WinWaitActive("Choose Fill Color");不管電腦什麼語系皆顯示英文,除非有更改語系檔案
WinActive("Choose Fill Color")
autoTS($Slider1);滑鼠拉移
MouseClick("left",$right-10,$y,1)
send("{left 255}")
send("{right 255}")
autoTS($OK_1)
MouseClick("left",$x,$y,1)
autoTS($BWMode);B/W
MouseClick("left",$x,$y,1)
autoTS($TOPScrollBar);
MouseClick("left",$x,$Top+2,99)
autoTS($TOPScrollBar);
MouseClick("left",$x,$Bottom-2,99)
autoTS($Allsidesmatch);All sides match
MouseClick("left",$x,$y,1)
autoTS($TOPScrollBar);top
MouseClick("left",$x,$Top+2,99)
autoTS($TOPScrollBar)
MouseClick("left",$x,$Bottom-2,99)
autoTS($LeftScrollBar);left
MouseClick("left",$x,$Top+2,99)
autoTS($LeftScrollBar)
MouseClick("left",$x,$Bottom-2,99)
autoTS($DownScrollBar);down
MouseClick("left",$x,$Top+2,99)
autoTS($DownScrollBar)
MouseClick("left",$x,$Bottom-2,99)
autoTS($RightScrollBar);right
MouseClick("left",$x,$Top+2,99)
autoTS($RightScrollBar)
MouseClick("left",$x,$Bottom-2,99)
autoTS($Allsidesmatch);All sides match
MouseClick("left",$x,$y,1)
autoTS($GlobalDialog)
MouseClick("left",$x,$y,1)
Send("{down}");Remove Punch Holes
autoTS($RemoveCustom);填補裝訂孔自訂
MouseClick("left",$x,$y,1)
$Globalsettingcustom=IniRead(".\"&$iniversion&".ini","GlobalSettings","RemoveCustom","0")
autoTS($Globalsettingcustom);Custom
MouseClick("left",$x,$y,1)
autoTS($ColorMode_1)
MouseClick("left",$x,$y,1)
if WinActive("色彩") or WinActive("Color") Then ;判斷中、英文語系
Sleep(10)
endif
$b=1
While $b<=8
$i=1
While $i<=5
Send("{space}")
Sleep(100)
Send("{up}")
Send("{space}")
Sleep(100)
if $i=5 then
Send("{down 6}")
Send("{right 1}")
EndIf
$i=$i+1
WEnd
$b=$b+1
WEnd
Send("{down 6}")
Send("{left 8}")
Send("{space}")
Send("{enter}")
autoTS($GrayscaleMode_1)
MouseClick("left",$x,$y,1)
WinWaitActive("Choose Fill Color")
WinActive("Choose Fill Color")
autoTS($Slider1_1)
;~ MouseClick("left",$Left+15,$y,1)
MouseClick("left",$right-10,$y,1)
send("{left 255}")
send("{right 255}")
autoTS($OK_1)
MouseClick("left",$x,$y,1)
autoTS($BWMode_1);B/W
MouseClick("left",$x,$y,1)
$GlobalSettingOK=IniRead(".\"&$iniversion&".ini","GlobalSettings","GlobalSettingOK","0")
autoTS($GlobalSettingOK)
MouseClick("left",$x,$y,1)


;*************************************切換Utility+OK+Cancel+Help
          $Utility=1
while  $Utility<=8
$Utilitypath=IniRead(".\"&$iniversion&".ini","Utility","Utility","0")
    Select




           Case $Utility=1       ;copy
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+20,1)
ButtonTest()
           Case $Utility=2       ;mail
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+30,1)
ButtonTest()
           Case $Utility=3      ;file
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+40,1)
ButtonTest()
           Case $Utility=4     ;OCR
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+60,1)
ButtonTest()
           Case $Utility=5    ;scan
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+70,1)
ButtonTest()
           Case $Utility=6    ;PDF
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+80,1)
ButtonTest()
           Case $Utility=7    ;FTP
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+90,1)
ButtonTest()
EndSelect
$Utility=$Utility+1
WEnd

;~ ;************************************點File變更dpi+Scan
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
MouseClick("left",$x,$y+40,1);選file
$ScanTypepath=IniRead(".\"&$iniversion&".ini","ScanType","ScanType","0")
$Resolutionpath=IniRead(".\"&$iniversion&".ini","Resolution","Resolution","0")
$scantype=1            ;scan type
while $scantype<=3
WinActive($Titlepath)
	if $scantype=1 Then
	autoTS($ScanTypepath)
	MouseClick("left",$x,$y,1)
    autoTS($ScanTypepath)
	MouseClick("left",$x,$y+20,1)
    elseif $scantype=2 Then
    	autoTS($ScanTypepath)
	MouseClick("left",$x,$y,1)
    autoTS($ScanTypepath)
	MouseClick("left",$x,$y+30,1)
    else
        $scantype=3
    autoTS($ScanTypepath)
	MouseClick("left",$x,$y,1)
    autoTS($ScanTypepath)
    MouseClick("left",$x,$y+40,1)
    EndIf
    $resolution=1
    while $resolution<=4
if $resolution=1 Then
    	autoTS($Resolutionpath)
	MouseClick("left",$x,$y,1)
	autoTS($Resolutionpath)
	MouseClick("left",$x,$y+20,1)
elseif $resolution=2 Then
    	autoTS($Resolutionpath)
	MouseClick("left",$x,$y,1)
	autoTS($Resolutionpath)
	MouseClick("left",$x,$y+30,1)
elseif $resolution=3 Then
    	autoTS($Resolutionpath)
	MouseClick("left",$x,$y,1)
	autoTS($Resolutionpath)
	MouseClick("left",$x,$y+40,1)
else
    $ResolutionEditpath=IniRead(".\"&$iniversion&".ini","GlobalSettings","ResolutionEdit","0")
    autoTS($Resolutionpath)
	MouseClick("left",$x,$y,1)
	autoTS($Resolutionpath)
	MouseClick("left",$x,$y+90,1)
     autoTS($ResolutionEditpath)
	MouseClick("left",$x,$y,2)
    Send("250")
EndIf
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
    WinWaitClose("Image Processing")

;~ While 1

;~     if WinWaitActive("Image Processing","",3) Then

;~ WinWaitClose("Image Processing","",3)

;~     else

;~     ExitLoop

;~ EndIf

;~ WEnd
CompareResult()
$resolution=$resolution+1
WEnd
$scantype=$scantype+1
WEnd
FileMove(".\Snapshot\*.PNG",".\SimpleTest")
ProcessClose("DocuAction.exe")
Sleep(1000)
MsgBox(0,"Finish","Success")
exit

















