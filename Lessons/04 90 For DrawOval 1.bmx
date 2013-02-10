
' Draw circles with random colors
' A single random radius is picked at startup

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global rmin = 5
Global rmax = 20
Global nburst = 4

Global r = Rand(rmin, rmax)


Repeat
	'Cls	

	For i = 0 To nburst
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
		DrawOval Rand(0,gWidth/r)*r, Rand(0,gHeight/r)*r, r, r
	Next
	
	If KeyHit(KEY_SPACE) Then
		r = Rand(rmin, rmax)
	EndIf
	
	Flip
Until  KeyHit(KEY_ESCAPE)



' Exercises
' 	have other key control color range and size
'