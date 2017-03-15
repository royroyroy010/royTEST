
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



;~ ;******************OCR specially
func FineReaderloop($FineReaderloop)         ;FineReaderloop
    $FineReaderConfigurationpath=IniRead(".\"&$iniversion&".ini","OCR","FineReaderConfiguration","0")
    $Associationpath=IniRead(".\"&$iniversion&".ini","OCR","Association","0")
    $Browsepath=IniRead(".\"&$iniversion&".ini","OCR","Browse","0")
    $Generateonefileeverypath=IniRead(".\"&$iniversion&".ini","OCR","Generateonefileevery","0")
    $Pagepath=IniRead(".\"&$iniversion&".ini","OCR","Page","0")
    $OKbutton_2path=IniRead(".\"&$iniversion&".ini","OCR","OKbutton_2","0")
    $ConvertToPDFpath=IniRead(".\"&$iniversion&".ini","OCR","ConvertToPDF","0")
    $StringInStr=StringInStr ($FineReaderConfigurationpath,"A",2)
if $StringInStr=2 Then
    if $FineReaderloop=1 Then
                autoTS($FineReaderConfigurationpath)
                  MouseClick("left",$x,$y,1)
                 autoTS($FineReaderConfigurationpath);select txt
                  MouseClick("left",$x,$y+20,1)
                autoTS($Associationpath) ;Association
                  MouseClick("left",$x,$y,1)
                autoTS($Browsepath) ;Browse
                  MouseClick("left",$x,$y,1)
                WinWaitActive("開啟舊檔")
                WinActive("開啟舊檔")
                Sleep(1000)
                WinClose("開啟舊檔")
                autoTS($Generateonefileeverypath) ;Generate one file every
                  MouseClick("left",$x,$y,1)
                  autoTS($Pagepath)
                  MouseClick("left",$x,$y,2)
                  Send("3")
                autoTS($OKbutton_2path) ;OK
                  MouseClick("left",$x,$y,1)
                 Elseif $FineReaderloop=2 Then
                autoTS($FineReaderConfigurationpath)
                  MouseClick("left",$x,$y,1)
                 autoTS($FineReaderConfigurationpath);select txt
                  MouseClick("left",$x,$y+30,1)
                autoTS($Associationpath) ;Association
                  MouseClick("left",$x,$y,1)
                autoTS($Browsepath) ;Browse
                  MouseClick("left",$x,$y,1)
                WinWaitActive("開啟舊檔")
                WinActive("開啟舊檔")
                Sleep(1000)
                WinClose("開啟舊檔")
                autoTS($Generateonefileeverypath) ;Generate one file every
                  MouseClick("left",$x,$y,1)
                    autoTS($Pagepath)
                  MouseClick("left",$x,$y,2)
                  Send("3")
                autoTS($OKbutton_2path) ;OK
                  MouseClick("left",$x,$y,1)
                  Elseif $FineReaderloop=3 Then
                autoTS($FineReaderConfigurationpath)
                  MouseClick("left",$x,$y,1)
                 autoTS($FineReaderConfigurationpath);select txt
                  MouseClick("left",$x,$y+40,1)
                autoTS($Associationpath) ;Association
                  MouseClick("left",$x,$y,1)
                autoTS($Browsepath) ;Browse
                  MouseClick("left",$x,$y,1)
                WinWaitActive("開啟舊檔")
                WinActive("開啟舊檔")
                Sleep(1000)
                WinClose("開啟舊檔")
                autoTS($Generateonefileeverypath) ;Generate one file every
                  MouseClick("left",$x,$y,1)
                  autoTS($Pagepath)
                  MouseClick("left",$x,$y,2)
                  Send("3")
                autoTS($OKbutton_2path) ;OK
                  MouseClick("left",$x,$y,1)
                  Elseif $FineReaderloop=4 Then
                autoTS($FineReaderConfigurationpath)
                  MouseClick("left",$x,$y,1)
                 autoTS($FineReaderConfigurationpath);select txt
                  MouseClick("left",$x,$y+60,1)
                autoTS($Associationpath) ;Association
                  MouseClick("left",$x,$y,1)
                autoTS($Browsepath) ;Browse
                  MouseClick("left",$x,$y,1)
                WinWaitActive("開啟舊檔")
                WinActive("開啟舊檔")
                WinClose("開啟舊檔")
                autoTS($Generateonefileeverypath) ;Generate one file every
                  MouseClick("left",$x,$y,1)
                    autoTS($Pagepath)
                  MouseClick("left",$x,$y,2)
                  Send("3")
                autoTS($ConvertToPDFpath) ;Convert To PDF/A
                  MouseClick("left",$x,$y,1)
                autoTS($OKbutton_2path) ;OK
                  MouseClick("left",$x,$y,1)
                  Else
                  Sleep(100)
                  EndIf
Else
    Sleep(100)
EndIf
                  EndFunc
Func PageManage($PageManage)                   ;PageManage
    $FineReaderConfiguration_1path=IniRead(".\"&$iniversion&".ini","OCR","FineReaderConfiguration_1","0")
    $Association_1path=IniRead(".\"&$iniversion&".ini","OCR","Association_1","0")
    $Browse_path=IniRead(".\"&$iniversion&".ini","OCR","Browse_","0")
    $Generateonefileevery_1path=IniRead(".\"&$iniversion&".ini","OCR","Generateonefileevery_1","0")
    $Page_1path=IniRead(".\"&$iniversion&".ini","OCR","Page_1","0")
    $OKbutton_3path=IniRead(".\"&$iniversion&".ini","OCR","OKbutton_3","0")
    $ConvertToPDF_1path=IniRead(".\"&$iniversion&".ini","OCR","ConvertToPDF_1","0")
    $StringInStr=StringInStr ($FineReaderConfiguration_1path,"A",2)
if $StringInStr=2 Then
     if $PageManage=1 Then
                autoTS($FineReaderConfiguration_1path)
                  MouseClick("left",$x,$y,1)
                 autoTS($FineReaderConfiguration_1path);select txt
                  MouseClick("left",$x,$y+20,1)
                autoTS($Association_1path) ;Association
                  MouseClick("left",$x,$y,1)
                autoTS($Browse_path) ;Browse
                  MouseClick("left",$x,$y,1)
                WinWaitActive("開啟舊檔")
                WinActive("開啟舊檔")
                Sleep(1000)
                WinClose("開啟舊檔")
                autoTS($Generateonefileevery_1path) ;Generate one file every
                  MouseClick("left",$x,$y,1)
                  autoTS($Page_1path)
                  MouseClick("left",$x,$y,2)
                  Send("3")
                autoTS($OKbutton_3path) ;OK
                  MouseClick("left",$x,$y,1)
                 Elseif $PageManage=2 Then
                autoTS($FineReaderConfiguration_1path)
                  MouseClick("left",$x,$y,1)
                 autoTS($FineReaderConfiguration_1path);select txt
                  MouseClick("left",$x,$y+30,1)
                autoTS($Association_1path) ;Association
                  MouseClick("left",$x,$y,1)
                autoTS($Browse_path) ;Browse
                  MouseClick("left",$x,$y,1)
                WinWaitActive("開啟舊檔")
                WinActive("開啟舊檔")
                Sleep(1000)
                WinClose("開啟舊檔")
                autoTS($Generateonefileevery_1path) ;Generate one file every
                  MouseClick("left",$x,$y,1)
                  autoTS($Page_1path)
                  MouseClick("left",$x,$y,2)
                  Send("3")
                autoTS($ConvertToPDF_1path) ;Convert To PDF/A
                  MouseClick("left",$x,$y,1)
                autoTS($OKbutton_3path) ;OK
                  MouseClick("left",$x,$y,1)
                  Elseif $PageManage=3 Then
                autoTS($FineReaderConfiguration_1path)
                  MouseClick("left",$x,$y,1)
                 autoTS($FineReaderConfiguration_1path);select txt
                  MouseClick("left",$x,$y+40,1)
                autoTS($Association_1path) ;Association
                  MouseClick("left",$x,$y,1)
                autoTS($Browse_path) ;Browse
                  MouseClick("left",$x,$y,1)
                WinWaitActive("開啟舊檔")
                WinActive("開啟舊檔")
                Sleep(1000)
                WinClose("開啟舊檔")
                autoTS($Generateonefileevery_1path) ;Generate one file every
                  MouseClick("left",$x,$y,1)
                  autoTS($Page_1path)
                  MouseClick("left",$x,$y,2)
                  Send("3")
                autoTS($OKbutton_3path) ;OK
                  MouseClick("left",$x,$y,1)
                  Else
                  Sleep(100)
                  EndIf
    Else
    Sleep(100)
    EndIf
                    EndFunc
Local $ExecuteDocAction=IniRead(".\route.ini","ExecuteDocAction","ExecuteDocAction","0")
Run($ExecuteDocAction)
Sleep(2000)
Local $Windowshandle=IniRead(".\route.ini","Windowshandle","Windowshandle","0")
AutoTS($Windowshandle);判斷版本檔案,需要先開啟DocAction才能獲取到檔案版本
$hamdlepath=IniRead(".\route.ini","GetHandleInfo_ini","GetHandleInfo_ini","0")
$iniversion=IniRead($hamdlepath,"FileInfo","Version","0")
$Titlepath=IniRead(".\"&$iniversion&".ini","Title","Title","0")
WinWaitActive($Titlepath)
Sleep($wait)
MsgBox(0,"Forecast Time","About 6.55 hr",2) ;tip forecast time
Run("FileFormat_timer.exe") ;excute prograss bar
$Utility=IniRead(".\Log.ini","Utility","Utility","0")
while  $Utility<=5
    Select





        Case $Utility=1  ;mail
           $Utilitypath=IniRead(".\"&$iniversion&".ini","Utility","Utility","0")
           $Utilitynumberpath=IniRead(".\"&$iniversion&".ini","Utility","mail","0")
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+$Utilitynumberpath,1)

;點預設
 $Defaultpath=IniRead(".\"&$iniversion&".ini","Default","Default","0")
 CompareResult_image1()
autoTS($Defaultpath)
MouseClick("left",$x,$y,1)
Sleep($wait)
CompareResult_image2()



 ;****************************************************************************************************************************;color
 $color=IniRead(".\Log.ini","Mail","color","0")
while $color<=6
WinActivate($Titlepath)
WinActive($Titlepath)
color($color)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","Mail","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","Mail","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
 $scanmode=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","Mail","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
$mailTitle=IniRead(".\"&$iniversion&".ini","Title","mailTitle","0")
WinWaitActive($mailTitle)
WinActive($mailTitle)
snapshot_path()
WinActivate($mailTitle)
WinActive($mailTitle)
WinClose($mailTitle)


;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\Mail")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","Mail","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","Mail","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","Mail","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","Mail","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","Mail","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","Mail","scan_type",1)
    EndIf
	WEnd
$color=$color+1
   if $color<=6 then
    IniWrite(".\Log.ini","Mail","color",$color)
    Else
    IniWrite(".\Log.ini","Mail","color",1)
    EndIf
	WEnd




;****************************************************************************************************************************;gray
$gray=IniRead(".\Log.ini","Mail","gray","0")
while $gray<=6
WinActivate($Titlepath)
WinActive($Titlepath)
	gray($gray)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","Mail","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","Mail","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()

;************************************* ;scan mode
 $scanmode=2
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()

;********************************;resolution
$resolution=IniRead(".\Log.ini","Mail","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
$mailTitle=IniRead(".\"&$iniversion&".ini","Title","mailTitle","0")
WinWaitActive($mailTitle)
WinActive($mailTitle)
snapshot_path()
WinActivate($mailTitle)
WinActive($mailTitle)
WinClose($mailTitle)


;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\Mail")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","Mail","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","Mail","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","Mail","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","Mail","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","Mail","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","Mail","scan_type",1)
    EndIf
	WEnd
$gray=$gray+1
   if $gray<=6 then
    IniWrite(".\Log.ini","Mail","gray",$gray)
    Else
    IniWrite(".\Log.ini","Mail","gray",1)
    EndIf
	WEnd



;*******************************************************************************************************************************B/W
$BW=IniRead(".\Log.ini","Mail","BW","0")
while $BW<=6
WinActivate($Titlepath)
WinActive($Titlepath)
	bw($BW)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","Mail","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","Mail","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()

;************************************* ;scan mode
 $scanmode=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()

;********************************;resolution
$resolution=IniRead(".\Log.ini","Mail","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
$mailTitle=IniRead(".\"&$iniversion&".ini","Title","mailTitle","0")
WinWaitActive($mailTitle)
WinActive($mailTitle)
snapshot_path()
WinActivate($mailTitle)
WinActive($mailTitle)
WinClose($mailTitle)



;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\Mail")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","Mail","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","Mail","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","Mail","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","Mail","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","Mail","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","Mail","scan_type",1)
    EndIf
	WEnd
$BW=$bw+1
   if $BW<=6 then
    IniWrite(".\Log.ini","Mail","BW",$BW)
    Else
    IniWrite(".\Log.ini","Mail","BW",1)
    EndIf
WEnd





;**********************************************************************************************************************************
        CloseDocAction()
        Case $Utility=2 ;File
            $Utilitypath=IniRead(".\"&$iniversion&".ini","Utility","Utility","0")
            $Utilitynumberpath=IniRead(".\"&$iniversion&".ini","Utility","file","0")
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+$Utilitynumberpath,1)

;點預設
 $Defaultpath=IniRead(".\"&$iniversion&".ini","Default","Default","0")
  CompareResult_image1()
autoTS($Defaultpath)
MouseClick("left",$x,$y,1)
Sleep($wait)
 CompareResult_image2()

 ;****************************************************************************************************************************;color
 $color=IniRead(".\Log.ini","File","color","0")
while $color<=6
WinActivate($Titlepath)
WinActive($Titlepath)
color($color)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","File","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","File","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
$scanmode=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","File","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()




;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
    WinWaitClose("Image Processing")
;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\File")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","File","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","File","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","File","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","File","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","File","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","File","scan_type",1)
    EndIf
	WEnd
$color=$color+1
   if $color<=6 then
    IniWrite(".\Log.ini","File","color",$color)
    Else
    IniWrite(".\Log.ini","File","color",1)
    EndIf
	WEnd


;****************************************************************************************************************************;gray
 $gray=IniRead(".\Log.ini","File","gray","0")
while $gray<=6
WinActivate($Titlepath)
WinActive($Titlepath)
gray($gray)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","File","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","File","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
 $scanmode=2
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","File","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()


;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
    WinWaitClose("Image Processing")

;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\File")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","File","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","File","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","File","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","File","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","File","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","File","scan_type",1)
    EndIf
	WEnd
$gray=$gray+1
 if $gray<=6 then
    IniWrite(".\Log.ini","File","gray",$gray)
    Else
    IniWrite(".\Log.ini","File","gray",1)
    EndIf
	WEnd


;*******************************************************************************************************************************B/W
 $BW=IniRead(".\Log.ini","File","BW","0")
while $BW<=6
WinActivate($Titlepath)
WinActive($Titlepath)
bw($BW)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","File","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","File","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
$scanmode=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","File","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()


;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
    WinWaitClose("Image Processing")

;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\File")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","File","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","File","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","File","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","File","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","File","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","File","scan_type",1)
    EndIf
	WEnd
$BW=$BW+1
 if $BW<=6 then
    IniWrite(".\Log.ini","File","BW",$BW)
    Else
    IniWrite(".\Log.ini","File","BW",1)
    EndIf
	WEnd




;**********************************************************************************************************************************
        CloseDocAction()
        Case $Utility=3 ;Scan
            $Utilitypath=IniRead(".\"&$iniversion&".ini","Utility","Utility","0")
            $Utilitynumberpath=IniRead(".\"&$iniversion&".ini","Utility","scan","0")
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+$Utilitynumberpath,1)


;點預設
$Defaultpath=IniRead(".\"&$iniversion&".ini","Default","Default","0")
 CompareResult_image1()
autoTS($Defaultpath)
MouseClick("left",$x,$y,1)
Sleep($wait)
 CompareResult_image2()

;*******************************************************Application切換
$Application_1path=IniRead(".\"&$iniversion&".ini","Scan","Application_1","0")
$Launchonlypath=IniRead(".\"&$iniversion&".ini","Scan","Launchonly","0")
$StringInStr=StringInStr ($Application_1path,"A",2)
if $StringInStr=2 Then
autoTS($Application_1path);
MouseClick("left",$x,$y,1)
autoTS($Application_1path);
MouseClick("left",$x,$y+30,1) ;Application value
Else
Sleep(100)
EndIf



;*****************************************************************************************************************************color
$color=IniRead(".\Log.ini","Scan","color","0")
while $color<=6
WinActivate($Titlepath)
WinActive($Titlepath)
if $color<>4 Then
color($color)


;************************************ ;scan type
$scantype=IniRead(".\Log.ini","Scan","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","Scan","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
 $scanmode=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","Scan","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
;~ Sleep(10000);等待小畫家出現完畢

$i=1
while $i<=100
;~ Sleep(3000);auto執行太快所以要下sleep讓視窗消失後再檢查
WinActivate("[Class:MSPaintApp]")
WinActive("[Class:MSPaintApp]")
if  WinWaitActive("[Class:MSPaintApp]","",5) then
        Send("!f")
        send("a")
        Sleep($wait);以防paint視窗太快沒偵測到
        if WinWaitActive("Save As","",2) then
        WinActive("Save As")
        Sleep(2000)
        ControlSetText("Save As","","Edit1","scan#_"& $i &"")
        Sleep(2000)
        send("{enter}")
                if WinWaitActive("Confirm Save As","",1) Then
                    Send("!y")
                Else
                    Sleep(100)
                EndIf
        ElseIf WinWaitActive("另存新檔","",2) Then
        WinActive("另存新檔")
        Sleep(2000)
        ControlSetText("另存新檔","","Edit1","scan#_"& $i &"")
        Sleep(2000)
        send("{enter}")
                if WinWaitActive("確認另存新檔","",1) Then
                    Send("!y")
                Else
                    Sleep(100)
                EndIf
        Else
            MsgBox(0,"Error","MS Paint Title is no chinese or no english")
        EndIf
        WinClose("[Class:MSPaintApp]")
        Sleep(1500)
Else
    ExitLoop
EndIf
$i=$i+1
WEnd

;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\Scan")

;~ WinActivate($Titlepath)
;~ WinWaitActive($Titlepath)
;~ WinActive($Titlepath)
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","Scan","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","Scan","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","Scan","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","Scan","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","Scan","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","Scan","scan_type",1)
    EndIf
WEnd
Else
  Sleep(100)
EndIf
$color=$color+1
 if $color<=6 then
  IniWrite(".\Log.ini","Scan","color",$color)
    Else
    IniWrite(".\Log.ini","Scan","color",1)
    EndIf
	WEnd



;****************************************************************************************************************************;gray
$gray=IniRead(".\Log.ini","Scan","gray","0")
while $gray<=6
WinActivate($Titlepath)
WinActive($Titlepath)
if $gray<>4 Then
gray($gray)


;************************************ ;scan type
$scantype=IniRead(".\Log.ini","Scan","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","Scan","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
 $scanmode=2
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","Scan","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
;~ Sleep(10000);等待小畫家出現完畢
$i=1
while $i<=100
;~ Sleep(3000);auto執行太快所以要下sleep讓視窗消失後再檢查
WinActivate("[Class:MSPaintApp]")
if  WinWaitActive("[Class:MSPaintApp]","",5) then
Send("!f")
send("a")
Sleep($wait);以防paint視窗太快沒偵測到
        if WinWaitActive("Save As","",1) then
        WinActive("Save As")
        Sleep(2000)
        ControlSetText("Save As","","Edit1","scan#_"& $i &"")
        Sleep(2000)
        send("{enter}")
                if WinWaitActive("Confirm Save As","",1) Then
                    Send("!y")
                Else
                    Sleep(100)
                EndIf
        ElseIf WinWaitActive("另存新檔","",1) Then
        WinActive("另存新檔")
        Sleep(2000)
        ControlSetText("另存新檔","","Edit1","scan#_"& $i &"")
        Sleep(2000)
        send("{enter}")
                if WinWaitActive("確認另存新檔","",1) Then
                    Send("!y")
                Else
                    Sleep(100)
                EndIf
        Else
            MsgBox(0,"Error","no cha or no eng")
        EndIf
WinClose("[Class:MSPaintApp]")
 Sleep(1500)
Else
    ExitLoop
EndIf
$i=$i+1
WEnd

;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\Scan")

;~ WinActivate($Titlepath)
;~ WinWaitActive($Titlepath)
;~ WinActive($Titlepath)
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","Scan","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","Scan","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","Scan","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","Scan","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","Scan","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","Scan","scan_type",1)
    EndIf
WEnd
Else
   Sleep(100)
EndIf
$gray=$gray+1
 if $gray<=6 then
 IniWrite(".\Log.ini","Scan","gray",$gray)
    Else
    IniWrite(".\Log.ini","Scan","gray",1)
    EndIf
	WEnd



;*******************************************************************************************************************************B/W
$BW=IniRead(".\Log.ini","Scan","BW","0")
while $BW<=6
WinActivate($Titlepath)
WinActive($Titlepath)
if $BW<>4 Then
bw($BW)


;************************************ ;scan type
$scantype=IniRead(".\Log.ini","Scan","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","Scan","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
 $scanmode=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","Scan","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()
;~ Sleep(10000);等待小畫家出現完畢
$i=1
while $i<=100
;~ Sleep(3000);auto執行太快所以要下sleep讓視窗消失後再檢查
WinActivate("[Class:MSPaintApp]")
if  WinWaitActive("[Class:MSPaintApp]","",5) then
Send("!f")
send("a")
Sleep($wait);以防paint視窗太快沒偵測到
        if WinWaitActive("Save As","",1) then
        WinActive("Save As")
        Sleep(2000)
        ControlSetText("Save As","","Edit1","scan#_"& $i &"")
        Sleep(2000)
        send("{enter}")
                if WinWaitActive("Confirm Save As","",1) Then
                    Send("!y")
                Else
                    Sleep(100)
                EndIf
        ElseIf WinWaitActive("另存新檔","",1) Then
        WinActive("另存新檔")
        Sleep(2000)
        ControlSetText("另存新檔","","Edit1","scan#_"& $i &"")
        Sleep(2000)
        send("{enter}")
                if WinWaitActive("確認另存新檔","",1) Then
                    Send("!y")
                Else
                    Sleep(100)
                EndIf
        Else
            MsgBox(0,"Error","no cha or no eng")
        EndIf
WinClose("[Class:MSPaintApp]")
 Sleep(1500)
Else
    ExitLoop
EndIf
$i=$i+1
WEnd

;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\Scan")

;~ WinActivate($Titlepath)
;~ WinWaitActive($Titlepath)
;~ WinActive($Titlepath)
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","Scan","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","Scan","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","Scan","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","Scan","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","Scan","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","Scan","scan_type",1)
    EndIf
WEnd
Else
 Sleep(100)
EndIf
$BW=$bw+1
 if $BW<=6 then
 IniWrite(".\Log.ini","Scan","BW",$BW)
    Else
    IniWrite(".\Log.ini","Scan","BW",1)
    EndIf
	WEnd




;**********************************************************************************************************************************
        CloseDocAction()
        Case $Utility=4 ;FTP
            $Utilitypath=IniRead(".\"&$iniversion&".ini","Utility","Utility","0")
            $Utilitynumberpath=IniRead(".\"&$iniversion&".ini","Utility","FTP","0")
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+$Utilitynumberpath,1)


;點預設
$Defaultpath=IniRead(".\"&$iniversion&".ini","Default","Default","0")
 CompareResult_image1()
autoTS($Defaultpath)
MouseClick("left",$x,$y,1)
Sleep($wait)
 CompareResult_image2()


;********************************************************************FTP連線名稱設定
$Addpath=IniRead(".\"&$iniversion&".ini","FTP","Add","0")
$SessionNamepath=IniRead(".\"&$iniversion&".ini","FTP","SessionName","0")
$Hostnamepath=IniRead(".\"&$iniversion&".ini","FTP","Hostname","0")
$RemoteDirectorypath=IniRead(".\"&$iniversion&".ini","FTP","RemoteDirectory","0")
$Anonymousconnectionpath=IniRead(".\"&$iniversion&".ini","FTP","Anonymousconnection","0")
$Usernamepath=IniRead(".\"&$iniversion&".ini","FTP","Username","0")
$Passwordpath=IniRead(".\"&$iniversion&".ini","FTP","Password","0")
$Portpath=IniRead(".\"&$iniversion&".ini","FTP","Port","0")
$PassiveModepath=IniRead(".\"&$iniversion&".ini","FTP","PassiveMode","0")
$Deletefilepath=IniRead(".\"&$iniversion&".ini","FTP","Deletefile","0")
$Modifypath=IniRead(".\"&$iniversion&".ini","FTP","Modify","0")
$OKpath=IniRead(".\"&$iniversion&".ini","FTP","OK","0")
$Delete_file=IniRead(".\"&$iniversion&".ini","FTP","Delete_file","0")
$SessionNamelog=IniRead(".\route.ini","FTP","SessionNamelog","0")
$Hostnamelog=IniRead(".\route.ini","FTP","Hostnamelog","0")
$RemoteDirectorylog=IniRead(".\route.ini","FTP","RemoteDirectorylog","0")
$Usernamelog=IniRead(".\route.ini","FTP","Usernamelog","0")
$Passwordlog=IniRead(".\route.ini","FTP","Passwordlog","0")
$StringInStr=StringInStr ($Addpath,"A",2)
if $StringInStr=2 Then
autoTS($Addpath) ;Add
                  MouseClick("left",$x,$y,1)
WinWaitActive("FTP Connection Properties")
WinActive("FTP Connection Properties")
autoTS($SessionNamepath) ;
                  MouseClick("left",$x,$y,2)
send("123")
autoTS($Hostnamepath) ;
                  MouseClick("left",$x,$y,2)
send("123")
autoTS($Portpath) ;Port
                  MouseClick("left",$x,$y,2)
send("123")
autoTS($RemoteDirectorypath)
                  MouseClick("left",$x,$y,2)
send("123")
autoTS($Anonymousconnectionpath) ;
                  MouseClick("left",$x,$y,1)
autoTS($Usernamepath) ;
                  MouseClick("left",$x,$y,2)
send("123")
autoTS($Passwordpath) ;
                  MouseClick("left",$x,$y,2)
send("123")
autoTS($PassiveModepath) ;Passive Mode
                  MouseClick("left",$x,$y,1)
autoTS($Deletefilepath) ;Delete file after transfer complete
                  MouseClick("left",$x,$y,1)
autoTS($OKpath) ;OK
                  MouseClick("left",$x,$y,1)
Else
    Sleep(100)
EndIf
$StringInStr=StringInStr ($Modifypath,"A",2)
if $StringInStr=2 Then
autoTS($Modifypath) ;Modify
                  MouseClick("left",$x,$y,1)
WinWaitActive("FTP Connection Properties")
WinActive("FTP Connection Properties")
autoTS($SessionNamepath) ;
                  MouseClick("left",$x,$y,2)
send("999")
autoTS($Hostnamepath) ;
                  MouseClick("left",$x,$y,2)
send("999")
autoTS($Portpath) ;Port
                  MouseClick("left",$x,$y,2)
send("999")
autoTS($RemoteDirectorypath) ;
                  MouseClick("left",$x,$y,2)
send("999")
autoTS($Usernamepath) ;
                  MouseClick("left",$x,$y,2)
send("999")
autoTS($Passwordpath) ;
                  MouseClick("left",$x,$y,2)
send("999")
autoTS($PassiveModepath) ;Passive Mode
                  MouseClick("left",$x,$y,1)
autoTS($Deletefilepath) ;Delete file after transfer complete
                  MouseClick("left",$x,$y,1)
autoTS($OKpath) ;OK
                  MouseClick("left",$x,$y,1)
autoTS($Delete_file) ;Delete
                  MouseClick("left",$x,$y,1)
Else
    Sleep(100)
endif
if $StringInStr=2 Then
autoTS($Addpath) ;Add
                  MouseClick("left",$x,$y,1)
WinWaitActive("FTP Connection Properties")
WinActive("FTP Connection Properties")
autoTS($SessionNamepath) ;
                  MouseClick("left",$x,$y,2)
send(""&$SessionNamelog&"")
autoTS($Hostnamepath) ;
                  MouseClick("left",$x,$y,2)
send(""&$Hostnamelog&"")
autoTS($Portpath) ;Port
                  MouseClick("left",$x,$y,2)
send("21")
autoTS($RemoteDirectorypath)
                  MouseClick("left",$x,$y,2)
send(""&$RemoteDirectorylog&"")
autoTS($Anonymousconnectionpath) ;
                  MouseClick("left",$x,$y,1)
autoTS($Usernamepath) ;
                  MouseClick("left",$x,$y,2)
send(""&$Usernamelog&"")
autoTS($Passwordpath) ;
                  MouseClick("left",$x,$y,2)
send(""&$Passwordlog&"")
autoTS($PassiveModepath) ;Passive Mode
                  MouseClick("left",$x,$y,1)
autoTS($Deletefilepath) ;Delete file after transfer complete
                  MouseClick("left",$x,$y,1)
autoTS($OKpath) ;OK
                  MouseClick("left",$x,$y,1)
Else
    Sleep(100)
EndIf


;*************************************************************************************************************************  **Color
$color=IniRead(".\Log.ini","FTP","color","0")
while $color<=6
WinActivate($Titlepath)
WinActive($Titlepath)
color($color)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","FTP","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","FTP","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
 $scanmode=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","FTP","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()


;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\FTP")

;~ WinActivate($Titlepath)
;~ WinWaitActive($Titlepath)
;~ WinActive($Titlepath)
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","FTP","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","FTP","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","FTP","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","FTP","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","FTP","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","FTP","scan_type",1)
    EndIf
	WEnd
$color=$color+1
 if $color<=6 then
  IniWrite(".\Log.ini","FTP","color",$color)
    Else
    IniWrite(".\Log.ini","FTP","color",1)
    EndIf
WEnd



;****************************************************************************************************************************;gray
$gray=IniRead(".\Log.ini","FTP","gray","0")
while $gray<=6
WinActivate($Titlepath)
WinActive($Titlepath)
gray($gray)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","FTP","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","FTP","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
 $scanmode=2
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","FTP","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()

;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\FTP")

;~ WinActivate($Titlepath)
;~ WinWaitActive($Titlepath)
;~ WinActive($Titlepath)
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","FTP","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","FTP","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","FTP","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","FTP","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","FTP","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","FTP","scan_type",1)
    EndIf
	WEnd
$gray=$gray+1
if $gray<=6 then
  IniWrite(".\Log.ini","FTP","gray",$gray)
    Else
    IniWrite(".\Log.ini","FTP","gray",1)
    EndIf
	WEnd



;*******************************************************************************************************************************B/W
$BW=IniRead(".\Log.ini","FTP","BW","0")
while $BW<=6
WinActivate($Titlepath)
WinActive($Titlepath)
bw($BW)

;************************************ ;scan type
$scantype=IniRead(".\Log.ini","FTP","scan_type","0")
while $scantype<=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
	scantype($scantype)
CompareResult_image2()

;***************************************;page size
$pagesize=IniRead(".\Log.ini","FTP","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
pagesize($pagesize)
CompareResult_image2()


;************************************* ;scan mode
 $scanmode=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
scanmode($scanmode)
CompareResult_image2()



;********************************;resolution
$resolution=IniRead(".\Log.ini","FTP","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
CompareResult_image1()
resolution($resolution)
CompareResult_image2()

;******************************Scan
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()

;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\FTP")

;~ WinActivate($Titlepath)
;~ WinWaitActive($Titlepath)
;~ WinActive($Titlepath)
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","FTP","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","FTP","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","FTP","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","FTP","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","FTP","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","FTP","scan_type",1)
    EndIf
	WEnd
$BW=$bw+1
if $BW<=6 then
 IniWrite(".\Log.ini","FTP","BW",$BW)
    Else
    IniWrite(".\Log.ini","FTP","BW",1)
    EndIf
WEnd

;***************************************************************************刪除新增的FTP
$Delete_file=IniRead(".\"&$iniversion&".ini","FTP","Delete_file","0")
autoTS($Delete_file) ;Delete
MouseClick("left",$x,$y,1)
$Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0")
autoTS($Applypath)
MouseClick("left",$x,$y,1)
Sleep(3000)
CloseDocAction()
        Case $Utility=5;PDF   (要注意"搜尋PDF"只能是用英文)
            $Utilitypath=IniRead(".\"&$iniversion&".ini","Utility","Utility","0")
            $Utilitynumberpath=IniRead(".\"&$iniversion&".ini","Utility","PDF","0")
autoTS($Utilitypath)
MouseClick("left",$x,$y,1)
autoTS($Utilitypath)
	MouseClick("left",$x,$y+$Utilitynumberpath,1)
;點預設
$Defaultpath=IniRead(".\"&$iniversion&".ini","Default","Default","0")
 CompareResult_image1()
autoTS($Defaultpath)
MouseClick("left",$x,$y,1)
Sleep($wait)
 CompareResult_image2()

 ;****************************************************************************************************************************Color
$color=IniRead(".\Log.ini","PDF","color","0")
while $color<=2
WinActivate($Titlepath)
WinActive($Titlepath)
color($color)
$Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0");點選Apply
autoTS($Applypath)
MouseClick("left",$x,$y,1)
Sleep(3000)
CloseDocAction()
$PDFfileformat=ControlGetText($Titlepath,"",1028);偵測Fileformat文字



;************************************;scan type
$scantype=IniRead(".\Log.ini","PDF","scan_type","0")
while $scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
;*************************************** ;page size
$pagesize=IniRead(".\Log.ini","PDF","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
pagesize($pagesize)
 CompareResult_image2()
;*************************************scan mode
 $scanmode=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
	scanmode($scanmode)
 CompareResult_image2()

;********************************;resolution
$resolution=IniRead(".\Log.ini","PDF","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
resolution($resolution)
 CompareResult_image2()
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()

If  $PDFfileformat="Searchable PDF" Then

   $timeinit=TimerInit ( ) ;進入迴圈前要開始計時
While 1
     if WinWaitActive("開啟並轉換","",2) Then
                while 1
                    $closetext=ControlGetText("開啟並轉換","",1048)
                    if $closetext="關閉" Then
                        WinActivate("開啟並轉換 100% 完成")
                        WinWaitActive("開啟並轉換 100% 完成")
                        WinActive("開啟並轉換 100% 完成")
                        ControlClick("開啟並轉換 100% 完成","",1048,"left",1)
                        ExitLoop
                    elseif     $closetext="" Then
                        ExitLoop
                    Else
                        Sleep(10)
                    EndIf
                WEnd
     Elseif WinWaitActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2) Then
                    While 1
                        $closetext_1=ControlGetText("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2)
                        if $closetext_1="關閉(&S)" Then
                            WinActivate("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                            WinWaitActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                            WinActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                            ControlClick("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2)
                            ExitLoop
                        Elseif $closetext_1="" Then
                            ExitLoop
                        Else
                            Sleep(10)
                        EndIf
                    WEnd
    Elseif WinWaitActive("Converting Pages - ABBYY FineReader 12 Sprint","",2) Then  ;英文版的還沒新增完成但有警告文字串
                    While 1
                        $closetext_2=ControlGetText("Converting Pages - ABBYY FineReader 12 Sprint","",2)
                        if $closetext_2="Close&S" Then
                            WinActivate("Converting Pages - ABBYY FineReader 12 Sprint")
                            WinWaitActive("Converting Pages - ABBYY FineReader 12 Sprint")
                            WinActive("Converting Pages - ABBYY FineReader 12 Sprint")
                            ControlClick("Converting Pages - ABBYY FineReader 12 Sprint","",2)
                        ExitLoop
                        Elseif $closetext_2="" Then
                            ExitLoop
                        Else
                            Sleep(10)
                        EndIf
                    WEnd
    Else
        $TimerDiff=TimerDiff ( $timeinit)
        if $TimerDiff>15 Then
        ExitLoop
        EndIf
        Sleep(10)
    EndIf
WEnd
Else
    Sleep(10)
EndIf


;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\PDF")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","PDF","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","PDF","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","PDF","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","PDF","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","PDF","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","PDF","scan_type",1)
    EndIf
	WEnd
$color=$color+1
if $color<=2 then
 IniWrite(".\Log.ini","PDF","color",$color)
    Else
    IniWrite(".\Log.ini","PDF","color",1)
    EndIf
	WEnd



;****************************************************************************************************************************;gray
$gray=IniRead(".\Log.ini","PDF","gray","0")
while $gray<=2
WinActivate($Titlepath)
WinActive($Titlepath)
gray($gray)
$Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0");點選Apply
autoTS($Applypath)
MouseClick("left",$x,$y,1)
Sleep(3000)
CloseDocAction()
$PDFfileformat=ControlGetText($Titlepath,"",1029);偵測Fileformat文字


;************************************;scan type
$scantype=IniRead(".\Log.ini","PDF","scan_type","0")
while $scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
;*************************************** ;page size
$pagesize=IniRead(".\Log.ini","PDF","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
pagesize($pagesize)
 CompareResult_image2()
;*************************************scan mode
 $scanmode=2
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
	scanmode($scanmode)
 CompareResult_image2()

;********************************;resolution
$resolution=IniRead(".\Log.ini","PDF","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
resolution($resolution)
 CompareResult_image2()
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()

If  $PDFfileformat="Searchable PDF" Then
    $timeinit=TimerInit ( ) ;進入迴圈前要開始計時
While 1
 if WinWaitActive("開啟並轉換","",2) Then
            while 1
                $closetext=ControlGetText("開啟並轉換","",1048)
                if $closetext="關閉" Then
                    WinActivate("開啟並轉換 100% 完成")
                    WinWaitActive("開啟並轉換 100% 完成")
                    WinActive("開啟並轉換 100% 完成")
                    ControlClick("開啟並轉換 100% 完成","",1048,"left",1)
                    ExitLoop
                elseif     $closetext="" Then
                    ExitLoop
                Else
                    Sleep(10)
                EndIf
            WEnd
 Elseif WinWaitActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2) Then
                While 1
                    $closetext_1=ControlGetText("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2)
                    if $closetext_1="關閉(&S)" Then
                        WinActivate("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                        WinWaitActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                        WinActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                        ControlClick("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2)
                        ExitLoop
                    Elseif $closetext_1="" Then
                        ExitLoop
                    Else
                        Sleep(10)
                    EndIf
                WEnd
Elseif WinWaitActive("Converting Pages - ABBYY FineReader 12 Sprint","",2) Then  ;英文版的還沒新增完成但有警告文字串
                While 1
                    $closetext_2=ControlGetText("Converting Pages - ABBYY FineReader 12 Sprint","",2)
                    if $closetext_2="Close&S" Then
                        WinActivate("Converting Pages - ABBYY FineReader 12 Sprint")
                        WinWaitActive("Converting Pages - ABBYY FineReader 12 Sprint")
                        WinActive("Converting Pages - ABBYY FineReader 12 Sprint")
                        ControlClick("Converting Pages - ABBYY FineReader 12 Sprint","",2)
                    ExitLoop
                    Elseif $closetext_2="" Then
                        ExitLoop
                    Else
                        Sleep(10)
                    EndIf
                WEnd
Else
    $TimerDiff=TimerDiff ( $timeinit)
    if $TimerDiff>15 Then
    ExitLoop
    EndIf
    Sleep(10)
EndIf
WEnd
Else
    Sleep(10)
EndIf


;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\PDF")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","PDF","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","PDF","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","PDF","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","PDF","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","PDF","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","PDF","scan_type",1)
    EndIf
	WEnd
$gray=$gray+1
if $gray<=2 then
 IniWrite(".\Log.ini","PDF","gray",$gray)
    Else
    IniWrite(".\Log.ini","PDF","gray",1)
    EndIf
	WEnd



;*******************************************************************************************************************************B/W
$BW=IniRead(".\Log.ini","PDF","BW","0")
while $BW<=2
WinActivate($Titlepath)
WinActive($Titlepath)
bw($BW)
$Applypath=IniRead(".\"&$iniversion&".ini","final","Apply","0");點選Apply
autoTS($Applypath)
MouseClick("left",$x,$y,1)
Sleep(3000)
CloseDocAction()

$PDFfileformat=ControlGetText($Titlepath,"",1030);偵測Fileformat文字




;************************************;scan type
$scantype=IniRead(".\Log.ini","PDF","scan_type","0")
while $scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
;*************************************** ;page size
$pagesize=IniRead(".\Log.ini","PDF","page_size","0")
while $pagesize<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
pagesize($pagesize)
 CompareResult_image2()
;*************************************scan mode
 $scanmode=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
	scanmode($scanmode)
 CompareResult_image2()

;********************************;resolution
$resolution=IniRead(".\Log.ini","PDF","resolution","0")
while $resolution<=3
WinActivate($Titlepath)
WinWaitActive($Titlepath)
 CompareResult_image1()
resolution($resolution)
 CompareResult_image2()
$driverpath=IniRead(".\route.ini","Driver","Driver","0")
FileMove(""&$driverpath&"\Driver\Dst\*.tif",""&$driverpath&"\Driver\Src",1);**********for模擬器移動檔案到B資料夾
final()

If  $PDFfileformat="Searchable PDF" Then
    $timeinit=TimerInit ( ) ;進入迴圈前要開始計時
While 1
 if WinWaitActive("開啟並轉換","",2) Then
            while 1
                $closetext=ControlGetText("開啟並轉換","",1048)
                if $closetext="關閉" Then
                    WinActivate("開啟並轉換 100% 完成")
                    WinWaitActive("開啟並轉換 100% 完成")
                    WinActive("開啟並轉換 100% 完成")
                    ControlClick("開啟並轉換 100% 完成","",1048,"left",1)
                    ExitLoop
                elseif     $closetext="" Then
                    ExitLoop
                Else
                    Sleep(10)
                EndIf
            WEnd
 Elseif WinWaitActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2) Then
                While 1
                    $closetext_1=ControlGetText("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2)
                    if $closetext_1="關閉(&S)" Then
                        WinActivate("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                        WinWaitActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                        WinActive("正在轉換頁面 - ABBYY FineReader 12 Sprint","完成但有警告。")
                        ControlClick("正在轉換頁面 - ABBYY FineReader 12 Sprint","",2)
                        ExitLoop
                    Elseif $closetext_1="" Then
                        ExitLoop
                    Else
                        Sleep(10)
                    EndIf
                WEnd
Elseif WinWaitActive("Converting Pages - ABBYY FineReader 12 Sprint","",2) Then  ;英文版的還沒新增完成但有警告文字串
                While 1
                    $closetext_2=ControlGetText("Converting Pages - ABBYY FineReader 12 Sprint","",2)
                    if $closetext_2="Close&S" Then
                        WinActivate("Converting Pages - ABBYY FineReader 12 Sprint")
                        WinWaitActive("Converting Pages - ABBYY FineReader 12 Sprint")
                        WinActive("Converting Pages - ABBYY FineReader 12 Sprint")
                        ControlClick("Converting Pages - ABBYY FineReader 12 Sprint","",2)
                    ExitLoop
                    Elseif $closetext_2="" Then
                        ExitLoop
                    Else
                        Sleep(10)
                    EndIf
                WEnd
Else
    $TimerDiff=TimerDiff ( $timeinit)
    if $TimerDiff>15 Then
    ExitLoop
    EndIf
    Sleep(10)
EndIf
WEnd
Else
    Sleep(10)
EndIf

;**********************Utility行為完成後再點Scan Type
$scantype=1
WinActivate($Titlepath)
WinWaitActive($Titlepath)
	scantype($scantype)
CompareResult()
FileMove(".\Snapshot\*.PNG",".\Image\PDF")
$resolution=$resolution+1
    if $resolution<=3 Then
        IniWrite(".\Log.ini","PDF","resolution",$resolution)
    Else
        IniWrite(".\Log.ini","PDF","resolution","1")
            EndIf
	WEnd
	$pagesize=$pagesize+1
    if $pagesize<=3 then
     IniWrite(".\Log.ini","PDF","page_size",$pagesize)
    Else
      IniWrite(".\Log.ini","PDF","page_size","1")
          EndIf
WEnd
	$scantype=$scantype+1
    if $scantype<=1 then
    IniWrite(".\Log.ini","PDF","scan_type",$scantype)
    Else
    IniWrite(".\Log.ini","PDF","scan_type",1)
    EndIf
	WEnd
$BW=$bw+1
if $BW<=2 then
 IniWrite(".\Log.ini","PDF","BW",$BW)
    Else
    IniWrite(".\Log.ini","PDF","BW",1)
    EndIf
	WEnd
        Case Else
        ProcessClose("DocuAction.exe")
        Sleep(1000)
        MsgBox(0,"Finish","Success")
        exit
    EndSelect
    $Utility=$Utility+1
if $Utility<=5 Then
 IniWrite(".\Log.ini","Utility","Utility",$Utility)
Else
      IniWrite(".\Log.ini","Utility","Utility","1")
    EndIf
WEnd




