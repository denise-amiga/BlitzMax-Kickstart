
' Draw single pixel line on X-axis
' Also draw single pixel line on Y-axis
' Random color on each line

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

SeedRnd( MilliSecs() )

Global y = Rand(0, gHeight)
Global x = 0

Global y2 = 0
Global x2 = Rand(0, gWidth)

Global dx, dy

SetColor Rand(0,255), Rand(0,255), Rand(0,255)

Repeat
	If KeyHit(KEY_SPACE) Then 
		Cls	
	End If
	
	If MouseDown(1) Then
		dx = MouseX()
		dy = MouseY()
		
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
		y = Rand(0, gHeight)
		x = 0
		Repeat
			DrawRect x, y, 1, 10
			x = x + dx
			'Print "x="+x+" y="+y
		Until x > gWidth
		
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
		x2 = Rand(0, gWidth)
		y2 = 0
		Repeat
			DrawRect x2, y2, 10, 1
			y2 = y2 + dy
			'Print "y2="+y2+" x2="+x2
		Until y2 > gHeight
	
	EndIf	

	Flip
Until KeyHit(KEY_ESCAPE)


