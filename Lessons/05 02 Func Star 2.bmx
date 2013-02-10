
' Function to draw a triangle 

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global u = 50

While Not KeyHit(KEY_ESCAPE)
	If KeyHit(KEY_SPACE) Then Cls	
	If KeyHit(KEY_1) Then u = 10
	If KeyHit(KEY_2) Then u = 20
	If KeyHit(KEY_3) Then u = 100

	x0 = gWidth / 2
	y0 = gHeight / 2

	SetLineWidth 1
	
	SetColor 255, 255, 255
	
	DrawLine x0+ 0, y0+ 0, x0+ u/2, y0+ u
	DrawLine x0+ u/2, y0+ u, x0+ u, x0+ 0
	DrawLine x0+ u, x0+ 0, x0+ 0, y0+ 0
	
	DrawLine x0+ 0, y0+ u/4*3, x0+ u, y0+ u/4*3
	DrawLine x0+ u, y0+ u/4*3, x0+ u/2, y0+ -u/4
	DrawLine x0+ u/2, y0+ -u/4, x0+ 0, y0+ u/4*3
	
	Flip
Wend
