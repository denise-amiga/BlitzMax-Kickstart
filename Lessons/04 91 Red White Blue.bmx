
' Draw circles with random colors
' A single random radius is picked at startup

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global rmin = 5
Global rmax = 20
Global nburst = 40

Global r = Rand(rmin, rmax)

Repeat
	If KeyHit(KEY_SPACE) Then Cls	
	If KeyHit(KEY_1) Then r = 5
	If KeyHit(KEY_2) Then r = 20
	If KeyHit(KEY_3) Then r = 100

	For i = 0 To nburst
	
		c = Rand(1,3)
		If c = 1 Then SetColor 255, 0, 0	' Red
		If c = 2 Then SetColor 255, 255, 255 ' White
		If c = 3 Then SetColor 0, 0, 255 ' Blue
		
		DrawOval Rand(0,gWidth/r)*r, Rand(0,gHeight/r)*r , r, r
	Next
	
	
	Flip
Until  KeyHit(KEY_ESCAPE)
