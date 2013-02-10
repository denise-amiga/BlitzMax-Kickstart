
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
	y = Rand(0, gHeight)
	x = 0
	Repeat
		DrawRect x, y, 1, 1
		x = x + Rand(1,9)
	Until x > gWidth
	
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	x2 = Rand(0, gWidth)
	y2 = 0
	Repeat
		DrawRect x2, y2, 1, 1
		y2 = y2 + Rand(1,9)
	Until y2 > gHeight


	Flip
Until KeyHit(KEY_ESCAPE)


