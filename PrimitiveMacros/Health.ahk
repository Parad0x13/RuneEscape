watchHealth()

#include ExternalLibraries

#include ExternalScripts
#include MiscFunctions
#include Bank
#include Travel

watchHealth() {
	lowHealthTriggerCount := 0
	veryLowHealthTriggerCount := 0

	StartWatchHealth:
	IfWinActive, RuneScape
	{
		PixelGetColor, OutputVar, 713, 995, RGB
		a := ToRGB(OutputVar)
		b := ToRGB(0xF47154)

		if(Compare(a, b, 50) != 1)
			lowHealthTriggerCount := lowHealthTriggerCount + 1

		if(lowHealthTriggerCount >= 10) {
			lowHealthTriggerCount := 0
			Send {0 Down}
			Send {0 Up}
		}

		; Sanity check to ensure player doesn't die, in case they ran out of food or something
		PixelGetColor, OutputVarSanity, 676, 994, RGB
		a := ToRGB(OutputVarSanity)
		b := ToRGB(0xEB6461)

		if(Compare(a, b, 50) != 1)
			veryLowHealthTriggerCount := veryLowHealthTriggerCount + 1

		if(veryLowHealthTriggerCount >= 10) {
			emergencyExit()
		}
	}
	Sleep 250
	Goto StartWatchHealth
}