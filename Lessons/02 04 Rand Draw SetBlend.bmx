
' Draw shape with random location
' Remove Cls to let drawings build up
' Use random color
' Use ranodm size
' With alpha blending (color mixing)

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

SetBlend ALPHABLEND
SetAlpha 0.5

Repeat
	'Cls
	
	r = Rand(0,255)
	g = Rand(0,255)
	b = Rand(0,255)
	SetColor r, g, b
	
	x = Rand(0,gWidth)
	y = Rand(0,gHeight)
	w = 50
	h = 50
	DrawOval x, y, w, h

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
