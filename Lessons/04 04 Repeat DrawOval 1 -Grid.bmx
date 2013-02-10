
' Draw a grid of ovals

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global u = 50
Global xspace = u
Global yspace = u

Repeat
	'Cls	

	y = Rand(0, gHeight/yspace)*yspace
	
	x = 0
	Repeat
		SetColor 255, 255, 255
		
		DrawOval x, y, u, u 
		
		x = x + xspace  
	Until x > gWidth
	
	Flip
	
Until KeyHit(KEY_ESCAPE)

' Exercise
