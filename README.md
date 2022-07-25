# AHK-Scripts
Collection of AutoHotKey Scripts I use for various tasks

### TODO &#9888;
- [ ] Alwaysontop.ahk Add way to terminate script
- [ ] ChangeBrushColor.ahk Add check for numlock status, hotkey does not work if numlock is not active!
- [ ] ToggleAudioOuput.ahk Create script for quickly switching audio output devices


## Alwaysontop.ahk 
- ^SPACE sets focused window/application to stay on top of other applications regardless of where the focus goes, using hotkey again will toggle this setting off

## ChangeBrushColor.ahk
- NOTE: used on 2560x1440p monitor with [Smoothdraw 4.1.4 Beta](http://www.smoothdraw.com/sd) on fullscreen
- Numpad0 quickly switches foreground/background colors and returns cursor to start location
- ESC terminates script process

## ControlListforGivenWindow.ahk
- F1 lists all control labels found on the currently focused window
- F2 finds all control labels on focused window and loops through each label showing user what the labels correspond to
- F3 shows control label under mouse cursor 
- ESC terminates script process
