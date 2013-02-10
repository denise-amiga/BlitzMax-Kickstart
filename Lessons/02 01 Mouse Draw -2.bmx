
' Draw shape with random location
' Remove Cls to let drawings build up
' Use random color
' Use ranodm size

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	'Cls
	
	r = Rand(0,255)
	g = Rand(0,255)
	b = Rand(0,255)
	SetColor r, g, b
	
	x = MouseX()
	y = MouseY()
	w = 5
	h = 5
	DrawRect x, y, w, h
	DrawRect x+10, y, w, h
	DrawRect x-10, y, w, h
	
	Flip

Until KeyHit(KEY_ESCAPE)


' Exercise
'	Draw other multiple shapes at the mouse location.
'