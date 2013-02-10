
' Draw circles with random colors
' A single random radius is picked at startup

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global rmin = 5
Global rmax = 20
Global nburst = 4

Global r = Rand(rmin, rmax)

Repeat 
	If KeyHit(KEY_SPACE) Then Cls	
	If KeyHit(KEY_1) Then r = 10
	If KeyHit(KEY_2) Then r = 20
	If KeyHit(KEY_3) Then r = 50

	For i = 0 To nburst
		SetColor Rand(0,255), Rand(0,255), Rand(0,255)
		DrawOval Rand(0,gWidth/r)*r, Rand(0,gHeight/r)*r , r, r
	Next
	
	
	Flip
Until KeyHit(KEY_ESCAPE)



' Exercises
' 	have other key control color range and size
'