
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

	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	For x = 0 To gWidth 
		DrawRect x, y, 1, 1
	Next
	y = Rand(0, gHeight)
	
	For y2 = 0 To gHeight 
		DrawRect x2, y2, 1, 1
	Next

	x2 = Rand(0, gWidth)

		
	Flip
Until KeyHit(KEY_ESCAPE)


