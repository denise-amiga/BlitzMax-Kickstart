
' Draw rect with random location
' Remove Cls to let drawings build up

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	'Cls
	
	r = 255
	g = 255
	b = 255
	SetColor r, g, b
	
	x = Rand(0,gWidth)
	y = Rand(0,gHeight)
	w = 1
	h = 1
	DrawRect x, y, w, h

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
' Use random color
' Use ranodm size

