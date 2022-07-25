/*
Source: https://juho-lee.com/archive
 - Loop through controls (control list) within window
*/
#SingleInstance,Force
CoordMode, Mouse, Screen

F1::
WinGet, cList, ControlList, A
Tooltip, The following controls are found...`n%cList%
Sleep 10000
Tooltip,
return

F2::
hWnd := WinExist("A")
WinGet, cList, ControlList, ahk_id %hWnd%

i:=3
Loop %i%
{
Tooltip, The following controls are found. Looping in %i%...`n`n%cList%
Sleep 1000
i--
}

Loop, Parse, cList, "`n"
{
	ControlGetPos, conX, conY, conW, conH, %A_LoopField%, ahk_id %hWnd%
	MouseMove, %conX%, %conY%
	;~ ControlClick, %A_LoopField%, ahk_id %hWnd%, , Left, 1, X10 Y10 ;to perform a click on the control
	Tooltip, %A_LoopField%
	Sleep 1000
}

tooltip

return

F3:: ;show control name under mouse cursor (source: https://www.autohotkey.com/boards/viewtopic.php?t=63708)
Loop
{
MouseGetPos, vPosX, vPosY
hWnd := DllCall("user32\WindowFromPoint", "UInt64",(vPosX&0xFFFFFFFF)|(vPosY<<32), "Ptr")
WinGetClass, vWinClass, % "ahk_id " hWnd
Tooltip, % vWinClass
Sleep 100
}

ESC::ExitApp

return
