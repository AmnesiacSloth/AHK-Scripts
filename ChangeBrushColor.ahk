#SingleInstance,Force
CoordMode, Mouse,Screen

/*
 NOTE: Add check if num lock button has been pressed
*/
numpad0::
MouseGetPos, Px, Py ; gets the mouse's current coordinates
Click 175, 30
Click %Px%, %Py%, 0 ; returns the mouse to the previous coordinates without clicking
return


ESC::ExitApp