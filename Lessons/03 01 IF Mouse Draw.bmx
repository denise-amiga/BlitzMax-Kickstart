
' Draw rect with random location
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
	w = 20
	h = 20
	
	If MouseY() < gHeight/2 Then
		DrawOval x, y, w, h
	End If
	
	If MouseY() > gHeight/2 Then
		DrawRect x, y, w, h
	End If

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
' Draw other shapes
' Draw multiple at mouse location
' Different random color depending on mouse location
' Use random location rather than mouse location