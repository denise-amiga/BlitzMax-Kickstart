
' Draw a grid of ovals

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global u = 50
Global xspace = u
Global yspace = u

Repeat
	'Cls	

	y = 0
	Repeat 
		
		x = 0
		Repeat
			SetColor Rand(0,255), Rand(0,255), Rand(0,255)
			
			DrawOval x, y, u, u 
			
			x = x + xspace  
		Until x > gWidth
		
		y = y + yspace
	Until y > gHeight
	
	Flip
	
Until KeyHit(KEY_ESCAPE)

' Exercise
