
' Draw a grid of ovals

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global u = 10
Global xspace = u
Global yspace = u

Global y = 0
Global x = 0

Repeat
	'Cls	
	
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
			
	DrawOval x, y, u, u 
			
	x = x + xspace  
	If x > gWidth Then
		x = 0
		y = y + yspace
		If y > gHeight Then
			y = 0
		End If
	End If
	
	Flip
	
Until KeyHit(KEY_ESCAPE)

' Exercise
