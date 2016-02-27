#include Settings
#include ExternalLibraries
#include ExternalScripts
#include Agility
#include Bank
#include Combat
#include Woodcutting
#include Crafting
#include GrandExchange
#include Construction
#include Smithing
#include Thieving
#include Cooking
#include Mining
#include Firemaking
#include Fishing
#include Runecrafting
#include Divination
#include Dungeoneering
#include Summoning
#include Travel
#include Prayer
#include Hunting
#include HUD

;	List of macros:
;		!F -> Pick flax near Catherby						;	Only safe on BryanPC
;		!L -> Location of curson on screen
;		!M -> Misc Macro
;		!P -> Pickpocket From Foppish Pierre in Taverly
!Q::showMainHUD()
;		!S -> Spin flax in Lumbridge and auto bank it		;	Only safe on BryanPC

^!R::
Gui -AlwaysOnTop
killAllExternalScripts()
MsgBox, Reloaded
Reload

!P::
Pause
Suspend
return