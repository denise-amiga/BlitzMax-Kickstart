
' Draw single pixel line on x-axis
' Draw single pixel line on y-axis
' Random color on each line
' Random stepping

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global x = 0
Global y = Rand(0, gHeight)

Global x2 = 0
Global y2 = Rand(0, gHeight)

SetColor Rand(0,255), Rand(0,255), Rand(0,255)

Repeat
	'Cls	

	DrawRect x, y, 1, 1

	x = x + Rand(1,9)
	If x > gWidth Then
		y = Rand(0, gHeight)
		x = 0
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	EndIf
	
	DrawRect x2, y2, 1, 1
	
	x2 = x2 + Rand(1,9)
	If x2 > gWidth Then
		y2 = Rand(0, gHeight)
		x2 = 0
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	End If
		
	Flip
Until KeyHit(KEY_ESCAPE)

' Exercises:
'	Vary the width of each line
'	vary the color more frequently
'	Try other shapes
