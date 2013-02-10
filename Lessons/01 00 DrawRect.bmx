
' Draw single rect

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
	w = 10
	h = 10
	DrawRect x, y, w, h

	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
' locate pixel 
' try different x and y
' use comment
' draw other sizes
' draw more than one
