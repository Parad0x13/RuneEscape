Menu, TRAY, Icon, resources/icon.ico
#include Settings
FileCreateDir %RuneEscapeAppData%

#include Calibrate
#include HUD
#include ProcessManager

!Q::presentHUD()

^!R::
Gui -AlwaysOnTop
elegantlyCloseProcesses()
MsgBox, Reloaded
Reload