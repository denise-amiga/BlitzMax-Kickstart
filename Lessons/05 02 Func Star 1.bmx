
' Function to draw a triangle 

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 


Repeat
	If KeyHit(KEY_SPACE) Then Cls	

	x0 = gWidth / 2
	y0 = gHeight / 2
	u = 50
	
	SetLineWidth 5
	
	SetColor 255, 255, 255
	
	DrawLine x0+ 0, y0+ 0, x0+ u/2, y0+ u
	DrawLine x0+ u/2, y0+ u, x0+ u, y0+ 0
	DrawLine x0+ u, y0+ 0, x0+ 0, y0+ 0
	
	DrawLine x0+ 0, y0+ u/2, x0+ u, y0+ u/2
	DrawLine x0+ u, y0+ u/2, x0+ u/2, y0+ -u/2
	DrawLine x0+ u/2, y0+ -u/2, x0+ 0, y0+ u/2
	
	Flip
Until KeyHit(KEY_ESCAPE)
