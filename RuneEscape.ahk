Menu, TRAY, Icon, resources/icon.ico

#include HUD
#include ProcessManager

!Q::presentHUD()

^!R::
Gui -AlwaysOnTop
elegantlyCloseProcesses()
MsgBox, Reloaded
Reload