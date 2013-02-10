
' Function to draw a triangle 

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global u = 50

SetLineWidth 2
	
Repeat
	If KeyHit(KEY_SPACE) Then Cls	
	If KeyHit(KEY_1) Then u = 50
	If KeyHit(KEY_2) Then u = 100
	If KeyHit(KEY_3) Then u = 200
	If KeyHit(KEY_4) Then SetLineWidth 2
	If KeyHit(KEY_4) Then SetLineWidth 4
	If KeyHit(KEY_4) Then SetLineWidth 8
	
	x = Rand(0,gWidth/u)*u
	y = Rand(0,gHeight/u)*u

	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
	DrawStar(x, y, u-10)
	
	Flip
Until  KeyHit(KEY_ESCAPE)

Function DrawStar(x0, y0, u)
	DrawLine x0+ 0, y0+ u/4, x0+ u, y0+ u/4
	DrawLine x0+ u, y0+ u/4, x0+ u/2, y0+ u
	DrawLine x0+ u/2, y0+ u, x0+ 0, y0+ u/4
	
	DrawLine x0+ 0, y0+ u/4*3, x0+ u/2, y0+ 0
	DrawLine x0+ u/2, y0+ 0, x0+ u, y0+ u/4*3
	DrawLine x0+ u, y0+ u/4*3, x0+ 0, y0+ u/4*3
End Function
