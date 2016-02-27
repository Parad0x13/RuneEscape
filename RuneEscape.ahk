Menu, TRAY, Icon, resources/icon.ico
FileCreateDir %A_AppData%/RuneEscape

#include Calibrate
#include HUD
#include ProcessManager

!Q::presentHUD()

^!R::
Gui -AlwaysOnTop
elegantlyCloseProcesses()
MsgBox, Reloaded
Reload