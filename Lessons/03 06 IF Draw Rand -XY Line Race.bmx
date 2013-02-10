
' Draw single pixel line on X-axis
' Also draw single pixel line on Y-axis
' Random color on each line

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global y = Rand(0, gHeight)
Global x = 0

Global y2 = 0
Global x2 = Rand(0, gWidth)

SetColor Rand(0,255), Rand(0,255), Rand(0,255)

Repeat
	'Cls	

	DrawRect x, y, 1, 1

	x = x + 1
	If x > gWidth Then
		x = 0
		y = Rand(0, gHeight)
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	EndIf
	
	DrawRect x2, y2, 1, 1
	
	y2 = y2 + 1
	If y2 > gHeight Then
		y2 = 0
		x2 = Rand(0, gWidth)
	End If
		
	Flip
Until KeyHit(KEY_ESCAPE)


