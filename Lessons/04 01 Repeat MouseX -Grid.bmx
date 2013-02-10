
' Draw static 20 x 20 grids
' Display mouse coordinates

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global xspace = 20
Global yspace = 20

Repeat
	Cls	

	x = 0
	Repeat
		SetColor 255, 255, 255
		DrawLine x , 0, x , gHeight 
		x = x + xspace 
	Until x > gWidth
	
	y = 0
	Repeat
		SetColor 255, 255, 255
		DrawLine 0, y, gWidth, y
		y = y + yspace 
	Until y > gHeight
	
	SetColor 0, 255, 0
	DrawText "MouseX():"+MouseX()+" MouseY():"+MouseY(), 5, gHeight-20
	
	Flip
	
Until KeyHit(KEY_ESCAPE)

' Exercise
' make xspace and yspace variable
' label each grid line