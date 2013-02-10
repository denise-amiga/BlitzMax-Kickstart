
' Draw a grid of ovals

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global u = 50
Global xspace = u
Global yspace = u

Global y = 0
Global x = 0

Global c[3]
For i = 0 To 2 
	c[i] = Rand(0, 255)
Next

Global up[3]
For i = 0 To 2
	up[i] = Rand(0,1)
Next

Global istep[3]
For i = 0 To 2
	istep[i] = Rand(1,10)
Next

Repeat
	'Cls	
	'DrawText "x", 0, 0
	
	SetColor c[0], c[1], c[2]
	For i = 0 To 2
		If up[i] Then
			c[i] = c[i] + istep[i]
			If c[i] > 255 Then 
				c[i] = 255
				up[i] = False
				istep[i] = Rand(1,10)

			End If
		Else
			c[i] = c[i] - istep[i]
			If c[i] < 0 Then
				c[i] = 0
				up[i] = True
				istep[i] = Rand(1,10)
			End If
		End If
	Next	
			
	DrawOval x, y, u, u 
			
	x = x + u  
	If x > gWidth Then
		x = 0
		y = y + u
		If y > gHeight Then
			y = 0
			u = Rand(10,50)
		End If
	End If
	
	Flip
	
Until KeyHit(KEY_ESCAPE)

' Exercise
