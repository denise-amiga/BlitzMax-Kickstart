
' Draw shape with random location
' Draw different shape depending on mouse location
' Remove Cls to let drawings build up
' Use random color, only bright colors

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	'Cls
	
	x = Rand(0, gWidth)
	y = Rand(0, gHeight)
	w = 20
	h = 20
	
	If y < gHeight/2 Then
		SetColor Rand(150,255),0,0
		DrawOval x, y, w, h
	EndIf
	
	If y > gHeight/2 Then
		SetColor 0, Rand(150,255), 0
		DrawRect x, y, w, h
	EndIf

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
' 