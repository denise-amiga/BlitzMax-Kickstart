
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
	
	x = Rand(0,gWidth/50)*50
	y = Rand(0,gHeight/50)*50
	w = 50
	h = 50
	DrawOval x, y, w, h

	x = Rand(0,gWidth/50)*50 + 25 
	y = Rand(0,gHeight/50)*50 + 25
	w = 2
	h = 50
	DrawRect x, y, w, h

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
