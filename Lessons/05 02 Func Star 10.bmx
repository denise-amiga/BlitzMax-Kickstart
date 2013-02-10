
' Function to draw a triangle 
'	Functions to describe code
'	Functions to save typeing

Global gWidth = 500, gHeight = 500, gDepth = 0
Graphics gWidth, gHeight, gDepth 

Global u = 50

SetLineWidth 2

Global doit = False

Repeat
	If KeyHit(KEY_SPACE) Then Cls	
	
	doit = False
	CheckKeyHitForSize( KEY_1, 30)
	CheckKeyHitForSize( KEY_2, 50)
	CheckKeyHitForSize( KEY_3, 100)
	CheckKeyHitForSize( KEY_4, 150)
	
	CheckKeyHitForLineWidth( KEY_5, 1)
	CheckKeyHitForLineWidth( KEY_6, 2)
	CheckKeyHitForLineWidth( KEY_7, 4)
	CheckKeyHitForLineWidth( KEY_8, 8)
	
	SetColor Rand(0,255), Rand(0,255), Rand(0,255)
	
	If MouseDown(1) Then doit = 1
	
	If doit Then
		x = MouseX()
		y = MouseY()
		DrawStar(x, y, u-10)
	End If
	
	Flip
Until  KeyHit(KEY_ESCAPE)

Function CheckKeyHitForSize( key, newsize)
	If KeyHit(key) Then 
		u = newsize
		doit = True
	End If
End Function

Function CheckKeyHitForLineWidth( key, newwidth)
	If KeyHit(key) Then 
		SetLineWidth newwidth
		doit = True
	End If
End Function

Function DrawStar(x0, y0, u)
	DrawLine x0+ 0, y0+ u/4, x0+ u, y0+ u/4
	DrawLine x0+ u, y0+ u/4, x0+ u/2, y0+ u
	DrawLine x0+ u/2, y0+ u, x0+ 0, y0+ u/4
	
	DrawLine x0+ 0, y0+ u/4*3, x0+ u/2, y0+ 0
	DrawLine x0+ u/2, y0+ 0, x0+ u, y0+ u/4*3
	DrawLine x0+ u, y0+ u/4*3, x0+ 0, y0+ u/4*3
End Function
