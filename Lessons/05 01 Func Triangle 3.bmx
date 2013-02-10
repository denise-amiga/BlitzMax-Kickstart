
' Function to draw a triangle 

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global u = 50

Repeat
	If KeyHit(KEY_SPACE) Then Cls	

	SetLineWidth Rand(1,5)
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
	' x, y, size
	x = Rand(0, gWidth/u)*u
	y = Rand(0, gHeight/u)*u
	DrawTriangle(x, y, u )
	
	Flip
Until KeyHit(KEY_ESCAPE)

Function DrawTriangle(x0, y0, u)	
	DrawLine x0+ 0, y0+ u/4, x0+ u, y0+ u/4
	DrawLine x0+ u, y0+ u/4, x0+ u/2, y0+ u
	DrawLine x0+ u/2, y0+ u, x0+ 0, y0+ u/4
End Function

