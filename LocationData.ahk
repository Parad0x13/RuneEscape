Loop {
	MouseGetPos xpos, ypos
	PixelGetColor, OutputVar, xpos, ypos, RGB
	ToolTip (%xpos%`, %ypos%) = %OutputVar%, (xpos + 20), (ypos + 20), 1
}

Escape::ExitApp