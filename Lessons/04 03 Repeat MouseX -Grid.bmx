
' Draw dynamic grid based on mouse loc
' Grid lines labeled

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global xspace = 20
Global yspace = 20

Repeat
	Cls	

	xspace = MouseX()
	If xspace <= 0 Then xspace = 1
	
	yspace = MouseY()
	If yspace <= 0 Then yspace = 1
	
	x = 0
	Repeat
		SetColor 255, 255, 255
		DrawLine x , 0, x , gHeight 
		DrawText x, x, 0
		x = x + xspace 
	Until x > gWidth
	
	y = 0
	Repeat
		SetColor 255, 255, 255
		DrawLine 0, y, gWidth, y
		DrawText y, 0, y
		y = y + yspace 
	Until y > gHeight
	
	SetColor 0, 255, 0
	DrawText "MouseX():"+MouseX()+" MouseY():"+MouseY(), 5, gHeight-20
	
	Flip
	
Until KeyHit(KEY_ESCAPE)
