#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui, Destroy
Gui, Add, Text,, Enter the down site's public IP:
Gui, Add, Edit, vOfficeIP, %OfficeIP%
Gui, Add, Button, default, OK
Gui, Add, Button, x+20, Cancel
Gui, Show, AutoSize Center
return

GuiClose:
Gui, Cancel
ExitApp
return

ButtonCancel:
Gui, Cancel
ExitApp
return

ButtonOK:
Gui, Submit
ClipBoard := "clear vpn ipsec-peer " . OfficeIP . ""
TrayTip Woohoo!,Code snippet generated and copied to clipboard
Sleep 5000
HideTrayTip() {
    TrayTip
}
ExitApp
return
