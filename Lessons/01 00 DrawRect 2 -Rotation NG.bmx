
' Draw single rect

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	Cls
	
	r = 255
	g = 0
	b = 0
	SetColor r, g, b
	
	SetRotation 0
	
	x = gWidth/3
	y = gHeight/3
	w = 10
	h = 100
	DrawRect x, y, w, h
	DrawRect x, y, h, w
	DrawRect x+h, y, w, h
	DrawRect x, y+h, h, w
	
	SetColor 0, 255, 0
	SetRotation 45
	DrawRect x, y, w, h
	DrawRect x, y, h, w
	DrawRect x+h, y, w, h
	DrawRect x, y+h, h, w

	
	Flip

Until KeyHit(KEY_ESCAPE)


'Exercise
' locate pixel 
' try different x and y
' use comment
' draw other sizes
' draw more than one
