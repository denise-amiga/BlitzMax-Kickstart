
' Draw some text

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	Cls
	
	r = 255
	g = 0
	b = 0
	SetColor r, g, b
	
	x = gWidth/2
	y = gHeight/2
	DrawText "Hello", x, y

	Flip

Until KeyHit(KEY_ESCAPE)


' Exercise
' Different color, words, location
'