
' Draw shape with random location
' Remove Cls to let drawings build up
' Use random color
' Use ranodm size

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	If KeyHit(KEY_SPACE) Then Cls
	
	' red, green, blue
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
	x = Rand(0,gWidth/50)*50
	y = Rand(0,gHeight/50)*50
	w = 50
	h = 50
	DrawOval x, y, w, h

	' red, green, blue
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)

	x = Rand(0,gWidth/50)*50 + 25 
	y = Rand(0,gHeight/50)*50 + 25
	w = 10
	h = 50
	DrawRect x, y, w, h

	' red, green, blue
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)

	x = Rand(0,gWidth/50)*50 + 25 
	y = Rand(0,gHeight/50)*50 + 25 + 25
	w = 50
	h = 10
	DrawRect x, y, w, h


	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
