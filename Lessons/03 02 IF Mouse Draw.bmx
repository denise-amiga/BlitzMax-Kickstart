
' Draw shape with random location
' Draw different shape depending on mouse location
' Remove Cls to let drawings build up
' Use random color

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	'Cls
	
	x = MouseX()
	y = MouseY()
	w = 20
	h = 20
	
	If MouseY() < gHeight/2 Then
		SetColor Rand(0,255),0,0
		DrawOval x, y, w, h
	End If
	
	If MouseY() > gHeight/2 Then
		SetColor 0, Rand(0,255), 0
		DrawRect x, y, w, h
	End If

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
' 