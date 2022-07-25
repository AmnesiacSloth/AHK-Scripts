/*
SingleInstance determines whether another instance can be run if one already exists
Force: skips dialog box & replace old instance, essentially a RELOAD
*/
#SingleInstance,Force

; Coordinate mode affects the Mouse and is relative to entire screen
coordMode, Mouse, Window

; mouseCurPos func runs every 10ms
SetTimer,MouseCurPos,10
return


MouseCurPos:
	MouseGetPos, x, y
	ToolTip, % "x: " x "`ny: " y ;create a small text box that follows cursor and updates values
return

ESC::ExitApp ;exit key to end script